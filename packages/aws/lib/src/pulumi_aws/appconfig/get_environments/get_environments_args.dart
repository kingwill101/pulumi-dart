// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEnvironments.
class GetEnvironmentsArgs {
  /// ID of the AppConfig Application.
  final Input<String> applicationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetEnvironmentsArgs({
    required this.applicationId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetEnvironmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentsArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
