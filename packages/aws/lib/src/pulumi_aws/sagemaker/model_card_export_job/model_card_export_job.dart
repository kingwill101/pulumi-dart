import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_card_export_job_export_artifact/model_card_export_job_export_artifact.dart';
import '../model_card_export_job_output_config/model_card_export_job_output_config.dart';
import '../model_card_export_job_timeouts/model_card_export_job_timeouts.dart';
import 'model_card_export_job_args.dart';

/// Manage an Amazon SageMaker Model Card export job.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import model card export jobs using the `model_card_export_job_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelCardExportJob:ModelCardExportJob example arn:aws:sagemaker:us-west-2:123456789012:model-card/my-model-card/export-job/my-model-card-export-job
/// ```
class ModelCardExportJob extends pulumi.CustomResource {
  /// Exported model card artifacts.
  late final pulumi.Output<List<ModelCardExportJobExportArtifact>>
      exportArtifacts;

  /// The Amazon Resource Name (ARN) of the model card export job.
  late final pulumi.Output<String> modelCardExportJobArn;

  /// Name of the model card export job.
  late final pulumi.Output<String> modelCardExportJobName;

  /// Name of the model card.
  late final pulumi.Output<String> modelCardName;
  late final pulumi.Output<int> modelCardVersion;

  /// Export output details. Fields are documented below.
  late final pulumi.Output<ModelCardExportJobOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  late final pulumi.Output<String> region;
  late final pulumi.Output<ModelCardExportJobTimeouts?> timeouts;

  ModelCardExportJob(
    String name, {
    ModelCardExportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelCardExportJob:ModelCardExportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.exportArtifacts =
        registerOutput<List<ModelCardExportJobExportArtifact>>(
            'exportArtifacts');
    this.modelCardExportJobArn =
        registerOutput<String>('modelCardExportJobArn');
    this.modelCardExportJobName =
        registerOutput<String>('modelCardExportJobName');
    this.modelCardName = registerOutput<String>('modelCardName');
    this.modelCardVersion = registerOutput<int>('modelCardVersion');
    this.outputConfig =
        registerOutput<ModelCardExportJobOutputConfig>('outputConfig');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<ModelCardExportJobTimeouts?>('timeouts');
  }
}
