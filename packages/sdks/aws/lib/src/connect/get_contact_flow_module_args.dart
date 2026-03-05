// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_contact_flow_module_get_contact_flow_module_args_doc}
/// Arguments for getContactFlowModule.
/// {@endtemplate}
/// {@macro pulumi_connect_get_contact_flow_module_get_contact_flow_module_args_doc}
class GetContactFlowModuleArgs {
  /// Returns information on a specific Contact Flow Module by contact flow module id
  final pulumi.Input<String>? contactFlowModuleId;
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;
  /// Returns information on a specific Contact Flow Module by name
  ///
  /// &gt; **NOTE:** `instance_id` and one of either `name` or `contact_flow_module_id` is required.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the Contact Flow Module.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetContactFlowModuleArgs].
  /// [contactFlowModuleId] Returns information on a specific Contact Flow Module by contact flow module id
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Contact Flow Module by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the Contact Flow Module.
  GetContactFlowModuleArgs({
    this.contactFlowModuleId,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactFlowModuleId': ?contactFlowModuleId,
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetContactFlowModuleArgs.fromMap(Map<String, dynamic> map) {
    return GetContactFlowModuleArgs(
      contactFlowModuleId: (() { final guardedValue = map['contactFlowModuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

