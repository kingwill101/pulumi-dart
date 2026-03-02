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
    this.kind,
    this.properties,
    this.serviceGroupName,
    this.tags,
  });

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
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      properties: map['properties'] == null ? null : (ServiceGroupProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      serviceGroupName: map['serviceGroupName'] == null ? null : (map['serviceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

