// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's Autoclass configuration.
class BucketAutoclass {
  /// Whether or not Autoclass is enabled on this bucket
  final bool? enabled;

  /// The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Valid values are NEARLINE and ARCHIVE.
  final String? terminalStorageClass;

  /// A date and time in RFC 3339 format representing the time of the most recent update to "terminalStorageClass".
  final String? terminalStorageClassUpdateTime;

  /// A date and time in RFC 3339 format representing the instant at which "enabled" was last toggled.
  final String? toggleTime;

  /// Creates a new [BucketAutoclass].
  /// [enabled] Whether or not Autoclass is enabled on this bucket
  /// [terminalStorageClass] The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Valid values are NEARLINE and ARCHIVE.
  /// [terminalStorageClassUpdateTime] A date and time in RFC 3339 format representing the time of the most recent update to "terminalStorageClass".
  /// [toggleTime] A date and time in RFC 3339 format representing the instant at which "enabled" was last toggled.
  BucketAutoclass({
    this.enabled,
    this.terminalStorageClass,
    this.terminalStorageClassUpdateTime,
    this.toggleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'terminalStorageClass': ?terminalStorageClass,
      'terminalStorageClassUpdateTime': ?terminalStorageClassUpdateTime,
      'toggleTime': ?toggleTime,
    };
  }

  factory BucketAutoclass.fromMap(Map<String, dynamic> map) {
    return BucketAutoclass(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      terminalStorageClass: map['terminalStorageClass'] == null
          ? null
          : map['terminalStorageClass'] as String,
      terminalStorageClassUpdateTime:
          map['terminalStorageClassUpdateTime'] == null
          ? null
          : map['terminalStorageClassUpdateTime'] as String,
      toggleTime: map['toggleTime'] == null
          ? null
          : map['toggleTime'] as String,
    );
  }
}
