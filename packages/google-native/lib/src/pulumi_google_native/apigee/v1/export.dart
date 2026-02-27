import 'package:pulumi/pulumi.dart' hide Config;
import 'export_args.dart';

/// Submit a data export job to be processed in the background. If the request is successful, the API returns a 201 status, a URI that can be used to retrieve the status of the export job, and the `state` value of "enqueued".
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Export extends CustomResource {
  /// Time the export job was created.
  late final Output<String> created;

  /// Name of the datastore that is the destination of the export job [datastore]
  late final Output<String> datastoreName;

  /// Description of the export job.
  late final Output<String> description;
  late final Output<String> environmentId;

  /// Error is set when export fails
  late final Output<String> error;

  /// Execution time for this export job. If the job is still in progress, it will be set to the amount of time that has elapsed since`created`, in seconds. Else, it will set to (`updated` - `created`), in seconds.
  late final Output<String> executionTime;

  /// Display name of the export job.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Self link of the export job. A URI that can be used to retrieve the status of an export job. Example: `/organizations/myorg/environments/myenv/analytics/exports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  late final Output<String> self;

  /// Status of the export job. Valid values include `enqueued`, `running`, `completed`, and `failed`.
  late final Output<String> state;

  /// Time the export job was last updated.
  late final Output<String> updated;

  Export(
    String name, {
    ExportArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Export',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.datastoreName = registerOutput<String>('datastoreName');
    this.description = registerOutput<String>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.error = registerOutput<String>('error');
    this.executionTime = registerOutput<String>('executionTime');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.self = registerOutput<String>('self');
    this.state = registerOutput<String>('state');
    this.updated = registerOutput<String>('updated');
  }
}
