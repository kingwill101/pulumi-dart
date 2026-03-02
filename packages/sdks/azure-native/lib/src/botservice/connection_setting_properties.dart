// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_setting_parameter.dart';

/// Properties for a Connection Setting Item
class ConnectionSettingProperties {
  /// Client Id associated with the Connection Setting.
  final pulumi.Input<String>? clientId;
  /// Client Secret associated with the Connection Setting
  final pulumi.Input<String>? clientSecret;
  /// Id of the Connection Setting.
  final pulumi.Input<String>? id;
  /// Name of the Connection Setting.
  final pulumi.Input<String>? name;
  /// Service Provider Parameters associated with the Connection Setting
  final pulumi.Input<List<ConnectionSettingParameter>>? parameters;
  /// Provisioning state of the resource
  final pulumi.Input<String>? provisioningState;
  /// Scopes associated with the Connection Setting
  final pulumi.Input<String>? scopes;
  /// Service Provider Display Name associated with the Connection Setting
  final pulumi.Input<String>? serviceProviderDisplayName;
  /// Service Provider Id associated with the Connection Setting
  final pulumi.Input<String>? serviceProviderId;

  /// Creates a new [ConnectionSettingProperties].
  /// [clientId] Client Id associated with the Connection Setting.
  /// [clientSecret] Client Secret associated with the Connection Setting
  /// [id] Id of the Connection Setting.
  /// [name] Name of the Connection Setting.
  /// [parameters] Service Provider Parameters associated with the Connection Setting
  /// [provisioningState] Provisioning state of the resource
  /// [scopes] Scopes associated with the Connection Setting
  /// [serviceProviderDisplayName] Service Provider Display Name associated with the Connection Setting
  /// [serviceProviderId] Service Provider Id associated with the Connection Setting
  ConnectionSettingProperties({
    this.clientId,
    this.clientSecret,
    this.id,
    this.name,
    this.parameters,
    this.provisioningState,
    this.scopes,
    this.serviceProviderDisplayName,
    this.serviceProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'id': ?id,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ConnectionSettingParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ConnectionSettingParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': ?provisioningState,
      'scopes': ?scopes,
      'serviceProviderDisplayName': ?serviceProviderDisplayName,
      'serviceProviderId': ?serviceProviderId,
    };
  }

  factory ConnectionSettingProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionSettingProperties(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ConnectionSettingParameter>(map['parameters'], (value) => ConnectionSettingParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      scopes: map['scopes'] == null ? null : (map['scopes'] as String).input(),
      serviceProviderDisplayName: map['serviceProviderDisplayName'] == null ? null : (map['serviceProviderDisplayName'] as String).input(),
      serviceProviderId: map['serviceProviderId'] == null ? null : (map['serviceProviderId'] as String).input(),
    );
  }
}

