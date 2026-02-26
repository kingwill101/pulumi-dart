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
    this.connectionId = Output.createUnknown<String>();
    this.entityTypeId = Output.createUnknown<String>();
    this.fields = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
