// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_card_export_job_export_artifact.dart';
import 'model_card_export_job_output_config.dart';
import 'model_card_export_job_timeouts.dart';

/// Input properties used for looking up and filtering ModelCardExportJob resources.
class ModelCardExportJobState {
  /// Exported model card artifacts.
  final pulumi.Input<List<ModelCardExportJobExportArtifact>>? exportArtifacts;
  /// The Amazon Resource Name (ARN) of the model card export job.
  final pulumi.Input<String>? modelCardExportJobArn;
  /// Name of the model card export job.
  final pulumi.Input<String>? modelCardExportJobName;
  /// Name of the model card.
  final pulumi.Input<String>? modelCardName;
  final pulumi.Input<int>? modelCardVersion;
  /// Export output details. Fields are documented below.
  final pulumi.Input<ModelCardExportJobOutputConfig>? outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  final pulumi.Input<String>? region;
  final pulumi.Input<ModelCardExportJobTimeouts>? timeouts;

  /// Creates a new [ModelCardExportJobState].
  /// [exportArtifacts] Exported model card artifacts.
  /// [modelCardExportJobArn] The Amazon Resource Name (ARN) of the model card export job.
  /// [modelCardExportJobName] Name of the model card export job.
  /// [modelCardName] Name of the model card.
  /// [modelCardVersion] Optional.
  /// [outputConfig] Export output details. Fields are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  /// [timeouts] Optional.
  ModelCardExportJobState({
    this.exportArtifacts,
    this.modelCardExportJobArn,
    this.modelCardExportJobName,
    this.modelCardName,
    this.modelCardVersion,
    this.outputConfig,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportArtifacts': ?pulumi.Input.mapOptionalInputValue<List<ModelCardExportJobExportArtifact>, List<Map<String, dynamic>>>(exportArtifacts, (value) => pulumi.Input.encodeList<ModelCardExportJobExportArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelCardExportJobArn': ?modelCardExportJobArn,
      'modelCardExportJobName': ?modelCardExportJobName,
      'modelCardName': ?modelCardName,
      'modelCardVersion': ?modelCardVersion,
      'outputConfig': ?pulumi.Input.mapOptionalInputValue<ModelCardExportJobOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ModelCardExportJobTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ModelCardExportJobState.fromMap(Map<String, dynamic> map) {
    return ModelCardExportJobState(
      exportArtifacts: map['exportArtifacts'] == null ? null : (pulumi.Input.decodeList<ModelCardExportJobExportArtifact>(map['exportArtifacts'], (value) => ModelCardExportJobExportArtifact.fromMap((value as Map).cast<String, dynamic>()))).input(),
      modelCardExportJobArn: map['modelCardExportJobArn'] == null ? null : (map['modelCardExportJobArn'] as String).input(),
      modelCardExportJobName: map['modelCardExportJobName'] == null ? null : (map['modelCardExportJobName'] as String).input(),
      modelCardName: map['modelCardName'] == null ? null : (map['modelCardName'] as String).input(),
      modelCardVersion: map['modelCardVersion'] == null ? null : (map['modelCardVersion'] as int).input(),
      outputConfig: map['outputConfig'] == null ? null : (ModelCardExportJobOutputConfig.fromMap((map['outputConfig'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (ModelCardExportJobTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

