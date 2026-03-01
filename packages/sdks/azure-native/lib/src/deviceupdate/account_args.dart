// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';
import 'managed_service_identity.dart';
import 'private_endpoint_connection_deviceupdate.dart';

/// {@template pulumi_deviceupdate_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_deviceupdate_account_args_doc}
class AccountArgs {
  /// Account name.
  final pulumi.Input<String>? accountName;
  /// CMK encryption at rest properties
  final pulumi.Input<Encryption>? encryption;
  /// The type of identity used for the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// List of private endpoint connections associated with the account.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnectionDeviceupdate>>? privateEndpointConnections;
  /// Whether or not public network access is allowed for the account.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Device Update Sku
  final pulumi.Input<String>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accountName] Account name.
  /// [encryption] CMK encryption at rest properties
  /// [identity] The type of identity used for the resource.
  /// [location] The geo-location where the resource lives
  /// [privateEndpointConnections] List of private endpoint connections associated with the account.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the account.
  /// [resourceGroupName] The resource group name.
  /// [sku] Device Update Sku
  /// [tags] Resource tags.
  AccountArgs({
    pulumi.Output<String>? accountName,
    pulumi.Output<Encryption>? encryption,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<List<PrivateEndpointConnectionDeviceupdate>>? privateEndpointConnections,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      encryption = pulumi.Input.asOptionalInput<Encryption>(encryption),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<PrivateEndpointConnectionDeviceupdate>>(privateEndpointConnections),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'privateEndpointConnections': ?privateEndpointConnections,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<Encryption>(Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Output.create<List<PrivateEndpointConnectionDeviceupdate>>((map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionDeviceupdate>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

