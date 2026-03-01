// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_properties_response.dart';

/// The azure resource info when target service type is AzureResource
class AzureResourceResponse {
  /// The Id of azure resource.
  final String? id;
  /// The azure resource connection related properties.
  final AzureKeyVaultPropertiesResponse? resourceProperties;
  /// The target service type.
  /// Expected value is 'AzureResource'.
  final String type;

  /// Creates a new [AzureResourceResponse].
  /// [id] The Id of azure resource.
  /// [resourceProperties] The azure resource connection related properties.
  /// [type] The target service type.
  AzureResourceResponse({
    this.id,
    this.resourceProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'resourceProperties': ?resourceProperties == null ? null : resourceProperties!.toMap(),
      'type': type,
    };
  }

  factory AzureResourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceResponse(
      id: map['id'] == null ? null : map['id'] as String,
      resourceProperties: map['resourceProperties'] == null ? null : AzureKeyVaultPropertiesResponse.fromMap((map['resourceProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

