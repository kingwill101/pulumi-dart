// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';
import 'managed_service_identity.dart';
import 'private_endpoint_connection.dart';

/// {@template pulumi_deviceupdate_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_deviceupdate_account_args_doc}
class AccountArgs {
  /// Account name.
  final pulumi.Input<String?>? accountName;
  /// CMK encryption at rest properties
  final pulumi.Input<Encryption?>? encryption;
  /// The type of identity used for the resource.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// List of private endpoint connections associated with the account.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnection>?>? privateEndpointConnections;
  /// Whether or not public network access is allowed for the account.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Device Update Sku
  final pulumi.Input<dynamic>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

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
    pulumi.Input<dynamic>? publicNetworkAccess,
    required this.resourceGroupName,
    pulumi.Input<dynamic>? sku,
    this.tags,
  }) : publicNetworkAccess = publicNetworkAccess ?? pulumi.Input.fromValue('Enabled'), sku = sku ?? pulumi.Input.fromValue('Standard');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnection>(guardedValue, (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
