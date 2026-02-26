// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudApigeeV1ApiProductRefResponse {
  /// Name of the API product.
  final String apiproduct;

  /// Status of the API product. Valid values are `approved` or `revoked`.
  final String status;

  GoogleCloudApigeeV1ApiProductRefResponse({
    required this.apiproduct,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiproduct'] = apiproduct;
    map['status'] = status;
    return map;
  }

  factory GoogleCloudApigeeV1ApiProductRefResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ApiProductRefResponse(
      apiproduct: map['apiproduct'] as String,
      status: map['status'] as String,
    );
  }
}
