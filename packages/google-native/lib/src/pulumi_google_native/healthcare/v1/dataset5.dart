import 'package:pulumi/pulumi.dart' hide Config;
import 'dataset_args5.dart';

/// Creates a new health dataset. Results are returned through the Operation interface which returns either an `Operation.response` which contains a Dataset or `Operation.error`. The metadata field type is OperationMetadata.
class Dataset5 extends CustomResource {
  /// The ID of the dataset that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  late final Output<String?> datasetId;
  late final Output<String> location;

  /// Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  late final Output<String> timeZone;

  Dataset5(
    String name, {
    DatasetArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:Dataset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.datasetId = registerOutput<String?>('datasetId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
