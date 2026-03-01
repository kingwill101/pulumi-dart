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
    pulumi.Output<int>? effectiveDays,
    pulumi.Output<String>? shortUrlName,
    pulumi.Output<String>? sourceUrl,
    pulumi.Output<String>? status,
  }) :
      effectiveDays = pulumi.Input.asOptionalInput<int>(effectiveDays),
      shortUrlName = pulumi.Input.asOptionalInput<String>(shortUrlName),
      sourceUrl = pulumi.Input.asOptionalInput<String>(sourceUrl),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      effectiveDays: map['effectiveDays'] == null ? null : pulumi.Output.create<int>(map['effectiveDays'] as int),
      shortUrlName: map['shortUrlName'] == null ? null : pulumi.Output.create<String>(map['shortUrlName'] as String),
      sourceUrl: map['sourceUrl'] == null ? null : pulumi.Output.create<String>(map['sourceUrl'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

