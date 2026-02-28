// ignore_for_file: unused_element, unnecessary_cast

/// The iOS apps that are allowed to use the key.
class V2IosKeyRestrictions {
  /// A list of bundle IDs that are allowed when making API calls with this key.
  final List<String>? allowedBundleIds;

  /// Creates a new [V2IosKeyRestrictions].
  /// [allowedBundleIds] A list of bundle IDs that are allowed when making API calls with this key.
  V2IosKeyRestrictions({
    this.allowedBundleIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedBundleIdsValue = allowedBundleIds;
    if (allowedBundleIdsValue != null) {
      map['allowedBundleIds'] = allowedBundleIdsValue;
    }
    return map;
  }

  factory V2IosKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return V2IosKeyRestrictions(
      allowedBundleIds: map['allowedBundleIds'] == null
          ? null
          : (map['allowedBundleIds'] as List).cast<String>(),
    );
  }
}
