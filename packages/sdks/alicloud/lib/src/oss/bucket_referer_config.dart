// ignore_for_file: unused_element, unnecessary_cast


class BucketRefererConfig {
  /// Allows referer to be empty. Defaults false.
  final bool? allowEmpty;
  /// The list of referer.
  final List<String> referers;

  /// Creates a new [BucketRefererConfig].
  /// [allowEmpty] Allows referer to be empty. Defaults false.
  /// [referers] The list of referer.
  BucketRefererConfig({
    this.allowEmpty,
    required this.referers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmpty': ?allowEmpty,
      'referers': referers,
    };
  }

  factory BucketRefererConfig.fromMap(Map<String, dynamic> map) {
    return BucketRefererConfig(
      allowEmpty: map['allowEmpty'] == null ? null : map['allowEmpty'] as bool,
      referers: (map['referers'] as List).cast<String>(),
    );
  }
}

