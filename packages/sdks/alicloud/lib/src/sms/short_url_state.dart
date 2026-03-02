// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ShortUrl resources.
class ShortUrlState {
  /// Short chain service use validity period. Valid values: `30`, `60`, `90`. The unit is days, and the maximum validity period is 90 days.
  final pulumi.Input<int>? effectiveDays;
  /// The name of the resource.
  final pulumi.Input<String>? shortUrlName;
  /// The original link address.
  final pulumi.Input<String>? sourceUrl;
  /// Short chain status.
  final pulumi.Input<String>? status;

  /// Creates a new [ShortUrlState].
  /// [effectiveDays] Short chain service use validity period. Valid values: `30`, `60`, `90`. The unit is days, and the maximum validity period is 90 days.
  /// [shortUrlName] The name of the resource.
  /// [sourceUrl] The original link address.
  /// [status] Short chain status.
  ShortUrlState({
    this.effectiveDays,
    this.shortUrlName,
    this.sourceUrl,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveDays': ?effectiveDays,
      'shortUrlName': ?shortUrlName,
      'sourceUrl': ?sourceUrl,
      'status': ?status,
    };
  }

  factory ShortUrlState.fromMap(Map<String, dynamic> map) {
    return ShortUrlState(
      effectiveDays: map['effectiveDays'] == null ? null : (map['effectiveDays'] as int).input(),
      shortUrlName: map['shortUrlName'] == null ? null : (map['shortUrlName'] as String).input(),
      sourceUrl: map['sourceUrl'] == null ? null : (map['sourceUrl'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

