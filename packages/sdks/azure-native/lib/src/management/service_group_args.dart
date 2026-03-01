// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_properties.dart';

/// {@template pulumi_management_service_group_args_doc}
/// The set of arguments for ServiceGroup.
/// {@endtemplate}
/// {@macro pulumi_management_service_group_args_doc}
class ServiceGroupArgs {
  /// The kind of the serviceGroup.
  final pulumi.Input<String>? kind;
  /// ServiceGroup creation request body parameters.
  final pulumi.Input<ServiceGroupProperties>? properties;
  /// ServiceGroup Name.
  final pulumi.Input<String>? serviceGroupName;
  /// The serviceGroup tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceGroupArgs].
  /// [kind] The kind of the serviceGroup.
  /// [properties] ServiceGroup creation request body parameters.
  /// [serviceGroupName] ServiceGroup Name.
  /// [tags] The serviceGroup tags.
  ServiceGroupArgs({
    pulumi.Output<String>? kind,
    pulumi.Output<ServiceGroupProperties>? properties,
    pulumi.Output<String>? serviceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      properties = pulumi.Input.asOptionalInput<ServiceGroupProperties>(properties),
      serviceGroupName = pulumi.Input.asOptionalInput<String>(serviceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties': ?pulumi.Input.mapOptionalInputValue<ServiceGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'serviceGroupName': ?serviceGroupName,
      'tags': ?tags,
    };
  }

  factory ServiceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ServiceGroupArgs(
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ServiceGroupProperties>(ServiceGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      serviceGroupName: map['serviceGroupName'] == null ? null : pulumi.Output.create<String>(map['serviceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

