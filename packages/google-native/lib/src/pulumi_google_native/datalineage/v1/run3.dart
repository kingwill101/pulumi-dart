import 'package:pulumi/pulumi.dart';
import 'run_args3.dart';

/// Creates a new run.
class Run3 extends CustomResource {
  /// Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  late final Output<Map<String, String>> attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  late final Output<String> displayName;

  /// Optional. The timestamp of the end of the run.
  late final Output<String> endTime;
  late final Output<String> location;

  /// Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  late final Output<String> name;
  late final Output<String> processId;
  late final Output<String> project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  late final Output<String?> requestId;

  /// The timestamp of the start of the run.
  late final Output<String> startTime;

  /// The state of the run.
  late final Output<String> state;

  Run3(
    String name, {
    RunArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datalineage/v1:Run',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<Map<String, String>>('attributes');
    this.displayName = registerOutput<String>('displayName');
    this.endTime = registerOutput<String>('endTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.processId = registerOutput<String>('processId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
  }
}
