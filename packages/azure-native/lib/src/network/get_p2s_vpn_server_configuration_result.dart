// ignore_for_file: unused_element, unnecessary_cast

import 'p2_svpn_server_configuration_properties_response.dart';

/// Result data returned by getP2sVpnServerConfiguration.
class GetP2sVpnServerConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Properties of the P2SVpnServer configuration.
  final P2SVpnServerConfigurationPropertiesResponse properties;

  /// Creates a new [GetP2sVpnServerConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [properties] Properties of the P2SVpnServer configuration.
  GetP2sVpnServerConfigurationResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'properties': properties.toMap(),
    };
  }

  factory GetP2sVpnServerConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetP2sVpnServerConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: P2SVpnServerConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

