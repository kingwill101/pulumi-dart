// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_user_hierarchy_structure_get_user_hierarchy_structure_args_doc}
/// Arguments for getUserHierarchyStructure.
/// {@endtemplate}
/// {@macro pulumi_connect_get_user_hierarchy_structure_get_user_hierarchy_structure_args_doc}
class GetUserHierarchyStructureArgs {
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetUserHierarchyStructureArgs].
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetUserHierarchyStructureArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? region,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'region': ?region,
    };
  }

  factory GetUserHierarchyStructureArgs.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyStructureArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

