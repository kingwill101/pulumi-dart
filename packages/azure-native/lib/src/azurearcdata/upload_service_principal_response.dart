// ignore_for_file: unused_element, unnecessary_cast


/// Service principal for uploading billing, metrics and logs.
class UploadServicePrincipalResponse {
  /// Authority for the service principal. Example: https://login.microsoftonline.com/
  final String? authority;
  /// Client ID of the service principal for uploading data.
  final String? clientId;
  /// Tenant ID of the service principal.
  final String? tenantId;

  /// Creates a new [UploadServicePrincipalResponse].
  /// [authority] Authority for the service principal. Example: https://login.microsoftonline.com/
  /// [clientId] Client ID of the service principal for uploading data.
  /// [tenantId] Tenant ID of the service principal.
  UploadServicePrincipalResponse({
    this.authority,
    this.clientId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?authority,
      'clientId': ?clientId,
      'tenantId': ?tenantId,
    };
  }

  factory UploadServicePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return UploadServicePrincipalResponse(
      authority: map['authority'] == null ? null : map['authority'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

