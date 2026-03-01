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
    return <String, dynamic>{
      's3SubPrefix': ?s3SubPrefix,
    };
  }

  factory AccessGrantAccessGrantsLocationConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessGrantAccessGrantsLocationConfiguration(
      s3SubPrefix: map['s3SubPrefix'] == null ? null : map['s3SubPrefix'] as String,
    );
  }
}

