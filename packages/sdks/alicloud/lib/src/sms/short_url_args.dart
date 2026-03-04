// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sms_short_url_short_url_args_doc}
/// The set of arguments for ShortUrl.
/// {@endtemplate}
/// {@macro pulumi_sms_short_url_short_url_args_doc}
class ShortUrlArgs {
  /// Short chain service use validity period. Valid values: `30`, `60`, `90`. The unit is days, and the maximum validity period is 90 days.
  final pulumi.Input<int> effectiveDays;

  /// The name of the resource.
  final pulumi.Input<String> shortUrlName;

  /// The original link address.
  final pulumi.Input<String> sourceUrl;

  /// Creates a new [ShortUrlArgs].
  /// [effectiveDays] Short chain service use validity period. Valid values: `30`, `60`, `90`. The unit is days, and the maximum validity period is 90 days.
  /// [shortUrlName] The name of the resource.
  /// [sourceUrl] The original link address.
  ShortUrlArgs({
    required this.effectiveDays,
    required this.shortUrlName,
    required this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveDays': effectiveDays,
      'shortUrlName': shortUrlName,
      'sourceUrl': sourceUrl,
    };
  }

  factory ShortUrlArgs.fromMap(Map<String, dynamic> map) {
    return ShortUrlArgs(
      effectiveDays: pulumi.Input.fromValue(map['effectiveDays'] as int),
      shortUrlName: pulumi.Input.fromValue(map['shortUrlName'] as String),
      sourceUrl: pulumi.Input.fromValue(map['sourceUrl'] as String),
    );
  }
}
