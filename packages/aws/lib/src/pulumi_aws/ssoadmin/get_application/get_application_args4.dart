// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApplication.
class GetApplicationArgs4 {
  /// ARN of the application.
  final Input<String> applicationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetApplicationArgs4({
    required this.applicationArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetApplicationArgs4.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs4(
      applicationArn: Input.asInput<String>(map['applicationArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
