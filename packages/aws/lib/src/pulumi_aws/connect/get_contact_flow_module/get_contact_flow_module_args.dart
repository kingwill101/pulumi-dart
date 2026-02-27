// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getContactFlowModule.
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

  GetContactFlowModuleArgs({
    this.contactFlowModuleId,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contactFlowModuleIdValue = contactFlowModuleId;
    if (contactFlowModuleIdValue != null) {
      map['contactFlowModuleId'] = contactFlowModuleIdValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetContactFlowModuleArgs.fromMap(Map<String, dynamic> map) {
    return GetContactFlowModuleArgs(
      contactFlowModuleId:
          pulumi.Input.asOptionalInput<String>(map['contactFlowModuleId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
