// ignore_for_file: unused_element, unnecessary_cast


/// Document processor properties
class DocumentProcessorPropertiesResponse {
  /// The managed resource provisioning state.
  final String provisioningState;
  /// The ID (GUID) of an SharePoint Online (SPO) tenant associated with this document processor resource
  final String spoTenantId;
  /// The URL of an SharePoint Online (SPO) tenant associated with this document processor resource
  final String spoTenantUrl;

  /// Creates a new [DocumentProcessorPropertiesResponse].
  /// [provisioningState] The managed resource provisioning state.
  /// [spoTenantId] The ID (GUID) of an SharePoint Online (SPO) tenant associated with this document processor resource
  /// [spoTenantUrl] The URL of an SharePoint Online (SPO) tenant associated with this document processor resource
  DocumentProcessorPropertiesResponse({
    required this.provisioningState,
    required this.spoTenantId,
    required this.spoTenantUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'spoTenantId': spoTenantId,
      'spoTenantUrl': spoTenantUrl,
    };
  }

  factory DocumentProcessorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DocumentProcessorPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      spoTenantId: map['spoTenantId'] as String,
      spoTenantUrl: map['spoTenantUrl'] as String,
    );
  }
}

