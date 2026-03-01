// ignore_for_file: unused_element, unnecessary_cast

/// The iOS apps that are allowed to use the key.
class IosKeyRestrictions {
  /// A list of bundle IDs that are allowed when making API calls with this key.
  final List<String>? allowedBundleIds;

  /// Creates a new [IosKeyRestrictions].
  /// [allowedBundleIds] A list of bundle IDs that are allowed when making API calls with this key.
  IosKeyRestrictions({this.allowedBundleIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedBundleIds': ?allowedBundleIds};
  }

  factory IosKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return IosKeyRestrictions(
      allowedBundleIds: map['allowedBundleIds'] == null
          ? null
          : (map['allowedBundleIds'] as List).cast<String>(),
    );
  }
}
