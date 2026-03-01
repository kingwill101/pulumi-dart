// ignore_for_file: unused_element, unnecessary_cast


/// API source configuration for Azure API Management.
class AzureApiManagementSource {
  /// The resource ID of the managed identity that has access to the API Management instance.
  final String? msiResourceId;
  /// API Management service resource ID.
  final String resourceId;

  /// Creates a new [AzureApiManagementSource].
  /// [msiResourceId] The resource ID of the managed identity that has access to the API Management instance.
  /// [resourceId] API Management service resource ID.
  AzureApiManagementSource({
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
      msiResourceId: map['msiResourceId'] == null ? null : map['msiResourceId'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

