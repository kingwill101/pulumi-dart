// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_card_export_job_output_config.dart';
import 'model_card_export_job_timeouts.dart';

/// {@template pulumi_sagemaker_model_card_export_job_model_card_export_job_args_doc}
/// The set of arguments for ModelCardExportJob.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_model_card_export_job_model_card_export_job_args_doc}
class ModelCardExportJobArgs {
  /// Name of the model card export job.
  final pulumi.Input<String> modelCardExportJobName;

  /// Name of the model card.
  final pulumi.Input<String> modelCardName;
  final pulumi.Input<int>? modelCardVersion;

  /// Export output details. Fields are documented below.
  final pulumi.Input<ModelCardExportJobOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  final pulumi.Input<String>? region;
  final pulumi.Input<ModelCardExportJobTimeouts>? timeouts;

  /// Creates a new [ModelCardExportJobArgs].
  /// [modelCardExportJobName] Name of the model card export job.
  /// [modelCardName] Name of the model card.
  /// [modelCardVersion] Optional.
  /// [outputConfig] Export output details. Fields are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  /// [timeouts] Optional.
  ModelCardExportJobArgs({
    required String modelCardExportJobName,
    required String modelCardName,
    int? modelCardVersion,
    required ModelCardExportJobOutputConfig outputConfig,
    String? region,
    ModelCardExportJobTimeouts? timeouts,
  })  : modelCardExportJobName =
            pulumi.Input.asInput<String>(modelCardExportJobName),
        modelCardName = pulumi.Input.asInput<String>(modelCardName),
        modelCardVersion = pulumi.Input.asOptionalInput<int>(modelCardVersion),
        outputConfig =
            pulumi.Input.asInput<ModelCardExportJobOutputConfig>(outputConfig),
        region = pulumi.Input.asOptionalInput<String>(region),
        timeouts =
            pulumi.Input.asOptionalInput<ModelCardExportJobTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelCardExportJobName'] = modelCardExportJobName;
    map['modelCardName'] = modelCardName;
    final modelCardVersionValue = modelCardVersion;
    if (modelCardVersionValue != null) {
      map['modelCardVersion'] = modelCardVersionValue;
    }
    map['outputConfig'] = pulumi.Input.mapInputValue<
        ModelCardExportJobOutputConfig,
        Map<String, dynamic>>(outputConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ModelCardExportJobTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ModelCardExportJobArgs.fromMap(Map<String, dynamic> map) {
    return ModelCardExportJobArgs(
      modelCardExportJobName: map['modelCardExportJobName'] as String,
      modelCardName: map['modelCardName'] as String,
      modelCardVersion: map['modelCardVersion'] == null
          ? null
          : map['modelCardVersion'] as int,
      outputConfig: ModelCardExportJobOutputConfig.fromMap(
          (map['outputConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : ModelCardExportJobTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
