// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API source configuration for Azure API Management.
class AzureApiManagementSource {
  /// The resource ID of the managed identity that has access to the API Management instance.
  final pulumi.Input<String>? msiResourceId;
  /// API Management service resource ID.
  final pulumi.Input<String> resourceId;

  /// Creates a new [AzureApiManagementSource].
  /// [msiResourceId] The resource ID of the managed identity that has access to the API Management instance.
  /// [resourceId] API Management service resource ID.
  const AzureApiManagementSource({
    this.msiResourceId,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msiResourceId': ?msiResourceId,
      'resourceId': resourceId,
    };
  }

  factory AzureApiManagementSource.fromMap(Map<String, dynamic> map) {
    return AzureApiManagementSource(
      msiResourceId: (() { final guardedValue = map['msiResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

