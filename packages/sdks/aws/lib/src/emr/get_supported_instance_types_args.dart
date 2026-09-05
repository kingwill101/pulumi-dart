// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emr_get_supported_instance_types_get_supported_instance_types_args_doc}
/// Arguments for getSupportedInstanceTypes.
/// {@endtemplate}
/// {@macro pulumi_emr_get_supported_instance_types_get_supported_instance_types_args_doc}
class GetSupportedInstanceTypesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Amazon EMR release label. For more information about Amazon EMR releases and their included application versions and features, see the [Amazon EMR Release Guide](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html).
  final pulumi.Input<String> releaseLabel;

  /// Creates a new [GetSupportedInstanceTypesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseLabel] Amazon EMR release label. For more information about Amazon EMR releases and their included application versions and features, see the [Amazon EMR Release Guide](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html).
  const GetSupportedInstanceTypesArgs({
    this.region,
    required this.releaseLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'releaseLabel': releaseLabel,
    };
  }

  factory GetSupportedInstanceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetSupportedInstanceTypesArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseLabel: pulumi.Input.fromValue(map['releaseLabel'] as String),
    );
  }
}
