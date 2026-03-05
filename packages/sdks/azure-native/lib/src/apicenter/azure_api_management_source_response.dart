// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API source configuration for Azure API Management.
class AzureApiManagementSourceResponse {
  /// The resource ID of the managed identity that has access to the API Management instance.
  final pulumi.Input<String>? msiResourceId;
  /// API Management service resource ID.
  final pulumi.Input<String> resourceId;

  /// Creates a new [AzureApiManagementSourceResponse].
  /// [msiResourceId] The resource ID of the managed identity that has access to the API Management instance.
  /// [resourceId] API Management service resource ID.
  AzureApiManagementSourceResponse({
    this.msiResourceId,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msiResourceId': ?msiResourceId,
      'resourceId': resourceId,
    };
  }

  factory AzureApiManagementSourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureApiManagementSourceResponse(
      msiResourceId: (() { final guardedValue = map['msiResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

