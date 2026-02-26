// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUserHierarchyStructure.
class GetUserHierarchyStructureArgs {
  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetUserHierarchyStructureArgs({
    required this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetUserHierarchyStructureArgs.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyStructureArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
