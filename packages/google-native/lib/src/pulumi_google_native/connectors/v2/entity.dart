import 'package:pulumi/pulumi.dart';
import 'entity_args.dart';

/// Creates a new entity row of the specified entity type in the external system. The field values for creating the row are contained in the body of the request. The response message contains a `Entity` message object returned as a response by the external system.
/// Auto-naming is currently not supported for this resource.
class Entity extends CustomResource {
  late final Output<String> connectionId;
  late final Output<String> entityTypeId;

  /// Fields of the entity. The key is name of the field and the value contains the applicable `google.protobuf.Value` entry for this field.
  late final Output<Map<String, String>> fields;
  late final Output<String> location;

  /// Resource name of the Entity. Format: projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  late final Output<String> name;
  late final Output<String> project;

  Entity(
    String name, {
    EntityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v2:Entity',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.entityTypeId = registerOutput<String>('entityTypeId');
    this.fields = registerOutput<Map<String, String>>('fields');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
