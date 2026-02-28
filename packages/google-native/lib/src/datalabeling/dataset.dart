import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_args.dart';
import 'google_cloud_datalabeling_v1beta1_input_config_response.dart';

/// Creates dataset. If success return a Dataset resource.
/// Auto-naming is currently not supported for this resource.
class Dataset extends pulumi.CustomResource {
  /// The names of any related resources that are blocking changes to the dataset.
  late final pulumi.Output<List<String>> blockingResources;
  /// Time the dataset is created.
  late final pulumi.Output<String> createTime;
  /// The number of data items in the dataset.
  late final pulumi.Output<String> dataItemCount;
  /// Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  late final pulumi.Output<String> description;
  /// The display name of the dataset. Maximum of 64 characters.
  late final pulumi.Output<String> displayName;
  /// This is populated with the original input configs where ImportData is called. It is available only after the clients import data to this dataset.
  late final pulumi.Output<List<GoogleCloudDatalabelingV1beta1InputConfigResponse>> inputConfigs;
  /// Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  late final pulumi.Output<String> lastMigrateTime;
  /// Dataset resource name, format is: projects/{project_id}/datasets/{dataset_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [Dataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dataset]. {@macro pulumi_datalabeling_v1beta1_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dataset(
    String name, {
    DatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datalabeling/v1beta1:Dataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockingResources = registerOutput<List<String>>('blockingResources');
    this.createTime = registerOutput<String>('createTime');
    this.dataItemCount = registerOutput<String>('dataItemCount');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.inputConfigs = registerOutput<List<GoogleCloudDatalabelingV1beta1InputConfigResponse>>('inputConfigs');
    this.lastMigrateTime = registerOutput<String>('lastMigrateTime');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
