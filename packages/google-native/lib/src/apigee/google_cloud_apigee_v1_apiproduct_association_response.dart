// ignore_for_file: unused_element, unnecessary_cast

/// APIProductAssociation has the API product and its administrative state association.
class GoogleCloudApigeeV1APIProductAssociationResponse {
  /// API product to be associated with the credential.
  final String apiproduct;

  /// The API product credential associated status. Valid values are `approved` or `revoked`.
  final String status;

  /// Creates a new [GoogleCloudApigeeV1APIProductAssociationResponse].
  /// [apiproduct] API product to be associated with the credential.
  /// [status] The API product credential associated status. Valid values are `approved` or `revoked`.
  GoogleCloudApigeeV1APIProductAssociationResponse({
    required this.apiproduct,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiproduct'] = apiproduct;
    map['status'] = status;
    return map;
  }

  factory GoogleCloudApigeeV1APIProductAssociationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1APIProductAssociationResponse(
      apiproduct: map['apiproduct'] as String,
      status: map['status'] as String,
    );
  }
}
