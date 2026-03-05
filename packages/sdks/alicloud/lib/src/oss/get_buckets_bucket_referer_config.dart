// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucketRefererConfig {
  /// Indicate whether the access request referer field can be empty.
  final pulumi.Input<bool> allowEmpty;
  /// Referer access whitelist.
  final pulumi.Input<List<String>> referers;

  /// Creates a new [GetBucketsBucketRefererConfig].
  /// [allowEmpty] Indicate whether the access request referer field can be empty.
  /// [referers] Referer access whitelist.
  GetBucketsBucketRefererConfig({
    required this.allowEmpty,
    required this.referers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmpty': allowEmpty,
      'referers': referers,
    };
  }

  factory GetBucketsBucketRefererConfig.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketRefererConfig(
      allowEmpty: pulumi.Input.fromValue(map['allowEmpty'] as bool),
      referers: pulumi.Input.fromValue((map['referers'] as List).cast<String>()),
    );
  }
}

