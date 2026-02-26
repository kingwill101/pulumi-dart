import 'package:pulumi/pulumi.dart';
import 'dataset_version_args.dart';

/// Create a version from a Dataset.
/// Auto-naming is currently not supported for this resource.
class DatasetVersion extends CustomResource {
  /// Name of the associated BigQuery dataset.
  late final Output<String> bigQueryDatasetName;

  /// Timestamp when this DatasetVersion was created.
  late final Output<String> createTime;
  late final Output<String> datasetId;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;
  late final Output<String> location;

  /// The resource name of the DatasetVersion.
  late final Output<String> name;
  late final Output<String> project;

  /// Timestamp when this DatasetVersion was last updated.
  late final Output<String> updateTime;

  DatasetVersion(
    String name, {
    DatasetVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:DatasetVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigQueryDatasetName = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
