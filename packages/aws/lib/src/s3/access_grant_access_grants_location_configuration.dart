// ignore_for_file: unused_element, unnecessary_cast

class AccessGrantAccessGrantsLocationConfiguration {
  /// Sub-prefix.
  final String? s3SubPrefix;

  /// Creates a new [AccessGrantAccessGrantsLocationConfiguration].
  /// [s3SubPrefix] Sub-prefix.
  AccessGrantAccessGrantsLocationConfiguration({
    this.s3SubPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3SubPrefixValue = s3SubPrefix;
    if (s3SubPrefixValue != null) {
      map['s3SubPrefix'] = s3SubPrefixValue;
    }
    return map;
  }

  factory AccessGrantAccessGrantsLocationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AccessGrantAccessGrantsLocationConfiguration(
      s3SubPrefix:
          map['s3SubPrefix'] == null ? null : map['s3SubPrefix'] as String,
    );
  }
}
