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
  /// > **NOTE:** `instance_id` and one of either `name` or `contact_flow_module_id` is required.
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
    String? contactFlowModuleId,
    required String instanceId,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) : contactFlowModuleId = pulumi.Input.asOptionalInput<String>(
         contactFlowModuleId,
       ),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      contactFlowModuleId: map['contactFlowModuleId'] == null
          ? null
          : map['contactFlowModuleId'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
