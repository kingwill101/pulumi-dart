import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_args.dart';

/// Creates an agent version. The new version points to the agent instance in the "default" environment.
/// Auto-naming is currently not supported for this resource.
class Version extends pulumi.CustomResource {
  /// The creation time of this version. This field is read-only, i.e., it cannot be set by create and update methods.
  late final pulumi.Output<String> createTime;

  /// Optional. The developer-provided description of this version.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> location;

  /// The unique identifier of this agent version. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The status of this version. This field is read-only and cannot be set by create and update methods.
  late final pulumi.Output<String> status;

  /// The sequential number of this version. This field is read-only which means it cannot be set by create and update methods.
  late final pulumi.Output<int> versionNumber;

  /// Creates a new [Version].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Version]. {@macro pulumi_dialogflow_v2_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Version(
    String name, {
    VersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:Version',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.status = registerOutput<String>('status');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
