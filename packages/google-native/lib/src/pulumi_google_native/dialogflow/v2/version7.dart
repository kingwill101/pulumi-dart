import 'package:pulumi/pulumi.dart' hide Config;
import 'version_args4.dart';

/// Creates an agent version. The new version points to the agent instance in the "default" environment.
/// Auto-naming is currently not supported for this resource.
class Version7 extends CustomResource {
  /// The creation time of this version. This field is read-only, i.e., it cannot be set by create and update methods.
  late final Output<String> createTime;

  /// Optional. The developer-provided description of this version.
  late final Output<String> description;
  late final Output<String> location;

  /// The unique identifier of this agent version. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  late final Output<String> name;
  late final Output<String> project;

  /// The status of this version. This field is read-only and cannot be set by create and update methods.
  late final Output<String> status;

  /// The sequential number of this version. This field is read-only which means it cannot be set by create and update methods.
  late final Output<int> versionNumber;

  Version7(
    String name, {
    VersionArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:Version',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
