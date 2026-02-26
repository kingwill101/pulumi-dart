// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResource.
class GetResourceArgs3 {
  /// ARN of the resource, an S3 path.
  final Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetResourceArgs3({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetResourceArgs3.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs3(
      arn: Input.asInput<String>(map['arn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
