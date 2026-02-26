// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApplication.
class GetApplicationArgs3 {
  /// ARN of the application.
  final Input<String> applicationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Requested version of the application. By default, retrieves the latest version.
  final Input<String>? semanticVersion;

  GetApplicationArgs3({
    required this.applicationId,
    this.region,
    this.semanticVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final semanticVersionValue = semanticVersion;
    if (semanticVersionValue != null) {
      map['semanticVersion'] = semanticVersionValue;
    }
    return map;
  }

  factory GetApplicationArgs3.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs3(
      applicationId: Input.asInput<String>(map['applicationId']),
      region: Input.asOptionalInput<String>(map['region']),
      semanticVersion: Input.asOptionalInput<String>(map['semanticVersion']),
    );
  }
}
