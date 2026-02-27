// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApplication.
class GetApplicationSsoadminArgs {
  /// ARN of the application.
  final pulumi.Input<String> applicationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetApplicationSsoadminArgs({
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

  factory GetApplicationSsoadminArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationSsoadminArgs(
      applicationArn: pulumi.Input.asInput<String>(map['applicationArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
