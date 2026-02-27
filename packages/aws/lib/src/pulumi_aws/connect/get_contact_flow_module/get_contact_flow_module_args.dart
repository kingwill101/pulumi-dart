// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getContactFlowModule.
class GetContactFlowModuleArgs {
  /// Returns information on a specific Contact Flow Module by contact flow module id
  final Input<String>? contactFlowModuleId;

  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific Contact Flow Module by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `contact_flow_module_id` is required.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the Contact Flow Module.
  final Input<Map<String, String>>? tags;

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
          Input.asOptionalInput<String>(map['contactFlowModuleId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
