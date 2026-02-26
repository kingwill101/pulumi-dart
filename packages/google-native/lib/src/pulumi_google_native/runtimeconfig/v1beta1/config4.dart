import 'package:pulumi/pulumi.dart';
import 'config_args3.dart';

/// Creates a new RuntimeConfig resource. The configuration name must be unique within project.
class Config4 extends CustomResource {
  /// An optional description of the RuntimeConfig object.
  late final Output<String> description;

  /// The resource name of a runtime config. The name must have the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME] The `[PROJECT_ID]` must be a valid project ID, and `[CONFIG_NAME]` is an arbitrary name that matches the `[0-9A-Za-z](?:[_.A-Za-z0-9-]{0,62}[_.A-Za-z0-9])?` regular expression. The length of `[CONFIG_NAME]` must be less than 64 characters. You pick the RuntimeConfig resource name, but the server will validate that the name adheres to this format. After you create the resource, you cannot change the resource's name.
  late final Output<String> name;
  late final Output<String> project;

  /// An optional but recommended unique `request_id`. If the server receives two `create()` requests with the same `request_id`, then the second request will be ignored and the first resource created and stored in the backend is returned. Empty `request_id` fields are ignored. It is responsibility of the client to ensure uniqueness of the `request_id` strings. `request_id` strings are limited to 64 characters.
  late final Output<String?> requestId;

  Config4(
    String name, {
    ConfigArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:runtimeconfig/v1beta1:Config',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
  }
}
