// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_setting_parameter_response.dart';

/// Properties for a Connection Setting Item
class ConnectionSettingPropertiesResponse {
  /// Client Id associated with the Connection Setting.
  final String? clientId;
  /// Client Secret associated with the Connection Setting
  final String? clientSecret;
  /// Id of the Connection Setting.
  final String? id;
  /// Name of the Connection Setting.
  final String? name;
  /// Service Provider Parameters associated with the Connection Setting
  final List<ConnectionSettingParameterResponse>? parameters;
  /// Provisioning state of the resource
  final String? provisioningState;
  /// Scopes associated with the Connection Setting
  final String? scopes;
  /// Service Provider Display Name associated with the Connection Setting
  final String? serviceProviderDisplayName;
  /// Service Provider Id associated with the Connection Setting
  final String? serviceProviderId;
  /// Setting Id set by the service for the Connection Setting.
  final String settingId;

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
    this.scopes,
    this.serviceProviderDisplayName,
    this.serviceProviderId,
    required this.settingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'id': ?id,
      'name': ?name,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ConnectionSettingParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'scopes': ?scopes,
      'serviceProviderDisplayName': ?serviceProviderDisplayName,
      'serviceProviderId': ?serviceProviderId,
      'settingId': settingId,
    };
  }

  factory ConnectionSettingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionSettingPropertiesResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ConnectionSettingParameterResponse>(map['parameters'], (value) => ConnectionSettingParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      scopes: map['scopes'] == null ? null : map['scopes'] as String,
      serviceProviderDisplayName: map['serviceProviderDisplayName'] == null ? null : map['serviceProviderDisplayName'] as String,
      serviceProviderId: map['serviceProviderId'] == null ? null : map['serviceProviderId'] as String,
      settingId: map['settingId'] as String,
    );
  }
}

