import 'package:pulumi/pulumi.dart' hide Config;
import 'context_args4.dart';

/// Creates a context. If the specified context already exists, overrides the context.
/// Auto-naming is currently not supported for this resource.
class Context5 extends CustomResource {
  late final Output<String> environmentId;

  /// Optional. The number of conversational query requests after which the context expires. The default is `0`. If set to `0`, the context expires immediately. Contexts expire automatically after 20 minutes if there are no matching queries.
  late final Output<int> lifespanCount;
  late final Output<String> location;

  /// The unique identifier of the context. Supported formats: - `projects//agent/sessions//contexts/`, - `projects//locations//agent/sessions//contexts/`, - `projects//agent/environments//users//sessions//contexts/`, - `projects//locations//agent/environments//users//sessions//contexts/`, The `Context ID` is always converted to lowercase, may only contain characters in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. The following context names are reserved for internal use by Dialogflow. You should not use these contexts or create contexts with these names: * `__system_counters__` * `*_id_dialog_context` * `*_dialog_params_size`
  late final Output<String> name;

  /// Optional. The collection of parameters associated with this context. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.
  late final Output<Map<String, String>> parameters;
  late final Output<String> project;
  late final Output<String> sessionId;
  late final Output<String> userId;

  Context5(
    String name, {
    ContextArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:Context',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.environmentId = registerOutput<String>('environmentId');
    this.lifespanCount = registerOutput<int>('lifespanCount');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.project = registerOutput<String>('project');
    this.sessionId = registerOutput<String>('sessionId');
    this.userId = registerOutput<String>('userId');
  }
}
