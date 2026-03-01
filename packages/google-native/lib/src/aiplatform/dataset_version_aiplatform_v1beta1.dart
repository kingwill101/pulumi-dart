import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_version_aiplatform_v1beta1_args.dart';

/// Create a version from a Dataset.
/// Auto-naming is currently not supported for this resource.
class DatasetVersionAiplatformV1beta1 extends pulumi.CustomResource {
  /// Name of the associated BigQuery dataset.
  late final pulumi.Output<String> bigQueryDatasetName;

  /// Timestamp when this DatasetVersion was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> datasetId;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;

  /// The resource name of the DatasetVersion.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Timestamp when this DatasetVersion was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DatasetVersionAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetVersionAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_dataset_version_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetVersionAiplatformV1beta1(
    String name, {
    DatasetVersionAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1beta1:DatasetVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.bigQueryDatasetName = registerOutput<String>('bigQueryDatasetName');
    this.createTime = registerOutput<String>('createTime');
    this.datasetId = registerOutput<String>('datasetId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
