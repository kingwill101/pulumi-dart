// ignore_for_file: unused_element, unnecessary_cast

/// The iOS apps that are allowed to use the key.
class V2IosKeyRestrictionsResponse {
  /// A list of bundle IDs that are allowed when making API calls with this key.
  final List<String> allowedBundleIds;

  V2IosKeyRestrictionsResponse({
    required this.allowedBundleIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedBundleIds'] = allowedBundleIds;
    return map;
  }

  factory V2IosKeyRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return V2IosKeyRestrictionsResponse(
      allowedBundleIds: (map['allowedBundleIds'] as List).cast<String>(),
    );
  }
}
