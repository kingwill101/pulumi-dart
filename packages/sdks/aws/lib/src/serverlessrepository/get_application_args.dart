// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serverlessrepository_get_application_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_serverlessrepository_get_application_get_application_args_doc}
class GetApplicationArgs {
  /// ARN of the application.
  final pulumi.Input<String> applicationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Requested version of the application. By default, retrieves the latest version.
  final pulumi.Input<String>? semanticVersion;

  /// Creates a new [GetApplicationArgs].
  /// [applicationId] ARN of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [semanticVersion] Requested version of the application. By default, retrieves the latest version.
  GetApplicationArgs({
    required this.applicationId,
    this.region,
    this.semanticVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'region': ?region,
      'semanticVersion': ?semanticVersion,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationId: (map['applicationId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      semanticVersion: map['semanticVersion'] == null ? null : (map['semanticVersion'] as String).input(),
    );
  }
}

