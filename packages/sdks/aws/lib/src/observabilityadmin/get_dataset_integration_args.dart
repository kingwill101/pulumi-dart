// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observabilityadmin_get_dataset_integration_get_dataset_integration_args_doc}
/// Arguments for getDatasetIntegration.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_get_dataset_integration_get_dataset_integration_args_doc}
class GetDatasetIntegrationArgs {
  /// Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetDatasetIntegrationArgs].
  /// [region] Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetDatasetIntegrationArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetDatasetIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetIntegrationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
