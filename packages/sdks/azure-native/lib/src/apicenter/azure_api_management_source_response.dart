// ignore_for_file: unused_element, unnecessary_cast


/// API source configuration for Azure API Management.
class AzureApiManagementSourceResponse {
  /// The resource ID of the managed identity that has access to the API Management instance.
  final String? msiResourceId;
  /// API Management service resource ID.
  final String resourceId;

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
      msiResourceId: map['msiResourceId'] == null ? null : map['msiResourceId'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

