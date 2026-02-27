// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_card_export_job_output_config/model_card_export_job_output_config.dart';
import '../model_card_export_job_timeouts/model_card_export_job_timeouts.dart';

/// The set of arguments for ModelCardExportJob.
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

  ModelCardExportJobArgs({
    required this.modelCardExportJobName,
    required this.modelCardName,
    this.modelCardVersion,
    required this.outputConfig,
    this.region,
    this.timeouts,
  });

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
      modelCardExportJobName:
          pulumi.Input.asInput<String>(map['modelCardExportJobName']),
      modelCardName: pulumi.Input.asInput<String>(map['modelCardName']),
      modelCardVersion:
          pulumi.Input.asOptionalInput<int>(map['modelCardVersion']),
      outputConfig: pulumi.Input.asInput<ModelCardExportJobOutputConfig>(
          map['outputConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts: pulumi.Input.asOptionalInput<ModelCardExportJobTimeouts>(
          map['timeouts']),
    );
  }
}
