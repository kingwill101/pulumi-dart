// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfig_get_environments_get_environments_args_doc}
/// Arguments for getEnvironments.
/// {@endtemplate}
/// {@macro pulumi_appconfig_get_environments_get_environments_args_doc}
class GetEnvironmentsArgs {
  /// ID of the AppConfig Application.
  final pulumi.Input<String> applicationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEnvironmentsArgs].
  /// [applicationId] ID of the AppConfig Application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetEnvironmentsArgs({required String applicationId, String? region})
    : applicationId = pulumi.Input.asInput<String>(applicationId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'applicationId': applicationId, 'region': ?region};
  }

  factory GetEnvironmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentsArgs(
      applicationId: map['applicationId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
