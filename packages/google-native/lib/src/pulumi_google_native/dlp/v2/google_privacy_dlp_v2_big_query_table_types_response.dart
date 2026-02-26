// ignore_for_file: unused_element, unnecessary_cast

/// The types of BigQuery tables supported by Cloud DLP.
class GooglePrivacyDlpV2BigQueryTableTypesResponse {
  /// A set of BigQuery table types.
  final List<String> types;

  GooglePrivacyDlpV2BigQueryTableTypesResponse({
    required this.types,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['types'] = types;
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryTableTypesResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryTableTypesResponse(
      types: (map['types'] as List).cast<String>(),
    );
  }
}
