// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApplication.
class GetApplicationServerlessrepositoryArgs {
  /// ARN of the application.
  final pulumi.Input<String> applicationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Requested version of the application. By default, retrieves the latest version.
  final pulumi.Input<String>? semanticVersion;

  GetApplicationServerlessrepositoryArgs({
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

  factory GetApplicationServerlessrepositoryArgs.fromMap(
      Map<String, dynamic> map) {
    return GetApplicationServerlessrepositoryArgs(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      semanticVersion:
          pulumi.Input.asOptionalInput<String>(map['semanticVersion']),
    );
  }
}
