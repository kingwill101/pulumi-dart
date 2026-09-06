// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_setting_parameter_response.dart';

/// Properties for a Connection Setting Item
class ConnectionSettingPropertiesResponse {
  /// Client Id associated with the Connection Setting.
  final pulumi.Input<String?>? clientId;
  /// Client Secret associated with the Connection Setting
  final pulumi.Input<String?>? clientSecret;
  /// Id of the Connection Setting.
  final pulumi.Input<String?>? id;
  /// Name of the Connection Setting.
  final pulumi.Input<String?>? name;
  /// Service Provider Parameters associated with the Connection Setting
  final pulumi.Input<List<ConnectionSettingParameterResponse>?>? parameters;
  /// Provisioning state of the resource
  final pulumi.Input<String?>? provisioningState;
  /// Scopes associated with the Connection Setting
  final pulumi.Input<String?>? scopes;
  /// Service Provider Display Name associated with the Connection Setting
  final pulumi.Input<String?>? serviceProviderDisplayName;
  /// Service Provider Id associated with the Connection Setting
  final pulumi.Input<String?>? serviceProviderId;
  /// Setting Id set by the service for the Connection Setting.
  final pulumi.Input<String> settingId;

  /// Creates a new [ConnectionSettingPropertiesResponse].
  /// [clientId] Client Id associated with the Connection Setting.
  /// [clientSecret] Client Secret associated with the Connection Setting
  /// [id] Id of the Connection Setting.
  /// [name] Name of the Connection Setting.
  /// [parameters] Service Provider Parameters associated with the Connection Setting
  /// [provisioningState] Provisioning state of the resource
  /// [scopes] Scopes associated with the Connection Setting
  /// [serviceProviderDisplayName] Service Provider Display Name associated with the Connection Setting
  /// [serviceProviderId] Service Provider Id associated with the Connection Setting
  /// [settingId] Setting Id set by the service for the Connection Setting.
  ConnectionSettingPropertiesResponse({
    this.clientId,
    this.clientSecret,
    this.id,
    this.name,
    this.parameters,
    this.provisioningState,
    pulumi.Input<String?>? scopes,
    this.serviceProviderDisplayName,
    this.serviceProviderId,
    required this.settingId,
  }) : scopes = scopes ?? pulumi.Input.fromValue('');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'id': ?id,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ConnectionSettingParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ConnectionSettingParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': ?provisioningState,
      'scopes': ?scopes,
      'serviceProviderDisplayName': ?serviceProviderDisplayName,
      'serviceProviderId': ?serviceProviderId,
      'settingId': settingId,
    };
  }

  factory ConnectionSettingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionSettingPropertiesResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionSettingParameterResponse>(guardedValue, (value) => ConnectionSettingParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProviderDisplayName: (() { final guardedValue = map['serviceProviderDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProviderId: (() { final guardedValue = map['serviceProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settingId: pulumi.Input.fromValue(map['settingId'] as String),
    );
  }
}
