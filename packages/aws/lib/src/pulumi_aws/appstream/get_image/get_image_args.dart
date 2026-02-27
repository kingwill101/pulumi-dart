// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImage.
class GetImageArgs {
  /// ARN of the image being searched for. Cannot be used with `name_regex` or `name`.
  final Input<String>? arn;

  /// Boolean that if it is set to `true` and there are multiple images returned the most recent will be returned. If it is set to `false` and there are multiple images return the datasource will error.
  final Input<bool>? mostRecent;

  /// Name of the image being searched for. Cannot be used with `name_regex` or `arn`.
  final Input<String>? name;

  /// Regular expression name of the image being searched for. Cannot be used with `arn` or `name`.
  final Input<String>? nameRegex;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The type of image which must be (`PUBLIC`, `PRIVATE`, or `SHARED`).
  final Input<String>? type;

  GetImageArgs({
    this.arn,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      arn: Input.asOptionalInput<String>(map['arn']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      name: Input.asOptionalInput<String>(map['name']),
      nameRegex: Input.asOptionalInput<String>(map['nameRegex']),
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
