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
    pulumi.Output<List<ModelCardExportJobExportArtifact>>? exportArtifacts,
    pulumi.Output<String>? modelCardExportJobArn,
    pulumi.Output<String>? modelCardExportJobName,
    pulumi.Output<String>? modelCardName,
    pulumi.Output<int>? modelCardVersion,
    pulumi.Output<ModelCardExportJobOutputConfig>? outputConfig,
    pulumi.Output<String>? region,
    pulumi.Output<ModelCardExportJobTimeouts>? timeouts,
  }) :
      exportArtifacts = pulumi.Input.asOptionalInput<List<ModelCardExportJobExportArtifact>>(exportArtifacts),
      modelCardExportJobArn = pulumi.Input.asOptionalInput<String>(modelCardExportJobArn),
      modelCardExportJobName = pulumi.Input.asOptionalInput<String>(modelCardExportJobName),
      modelCardName = pulumi.Input.asOptionalInput<String>(modelCardName),
      modelCardVersion = pulumi.Input.asOptionalInput<int>(modelCardVersion),
      outputConfig = pulumi.Input.asOptionalInput<ModelCardExportJobOutputConfig>(outputConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<ModelCardExportJobTimeouts>(timeouts);

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
      exportArtifacts: map['exportArtifacts'] == null ? null : pulumi.Output.create<List<ModelCardExportJobExportArtifact>>(pulumi.Input.decodeList<ModelCardExportJobExportArtifact>(map['exportArtifacts'], (value) => ModelCardExportJobExportArtifact.fromMap((value as Map).cast<String, dynamic>()))),
      modelCardExportJobArn: map['modelCardExportJobArn'] == null ? null : pulumi.Output.create<String>(map['modelCardExportJobArn'] as String),
      modelCardExportJobName: map['modelCardExportJobName'] == null ? null : pulumi.Output.create<String>(map['modelCardExportJobName'] as String),
      modelCardName: map['modelCardName'] == null ? null : pulumi.Output.create<String>(map['modelCardName'] as String),
      modelCardVersion: map['modelCardVersion'] == null ? null : pulumi.Output.create<int>(map['modelCardVersion'] as int),
      outputConfig: map['outputConfig'] == null ? null : pulumi.Output.create<ModelCardExportJobOutputConfig>(ModelCardExportJobOutputConfig.fromMap((map['outputConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ModelCardExportJobTimeouts>(ModelCardExportJobTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

