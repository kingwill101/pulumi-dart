import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_args.dart';

/// Creates a new health dataset. Results are returned through the Operation interface which returns either an `Operation.response` which contains a Dataset or `Operation.error`. The metadata field type is OperationMetadata.
class Dataset extends pulumi.CustomResource {
  /// The ID of the dataset that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  late final pulumi.Output<String?> datasetId;
  late final pulumi.Output<String> location;

  /// Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [Dataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dataset]. {@macro pulumi_healthcare_v1_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dataset(
    String name, {
    DatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:Dataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.datasetId = registerOutput<String?>('datasetId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
