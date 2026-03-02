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
    this.accountName,
    this.encryption,
    this.identity,
    this.location,
    this.privateEndpointConnections,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

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
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : ((map['privateEndpointConnections']! as List).cast<PrivateEndpointConnectionDeviceupdate>()).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

