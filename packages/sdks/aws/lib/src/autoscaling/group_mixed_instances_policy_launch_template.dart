// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_mixed_instances_policy_launch_template_launch_template_specification.dart';
import 'group_mixed_instances_policy_launch_template_override.dart';

class GroupMixedInstancesPolicyLaunchTemplate {
  /// Override the instance launch template specification in the Launch Template.
  final pulumi.Input<GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification> launchTemplateSpecification;
  /// List of nested arguments provides the ability to specify multiple instance types. This will override the same parameter in the launch template. For on-demand instances, Auto Scaling considers the order of preference of instance types to launch based on the order specified in the overrides list. Defined below.
  final pulumi.Input<List<GroupMixedInstancesPolicyLaunchTemplateOverride>>? overrides;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplate].
  /// [launchTemplateSpecification] Override the instance launch template specification in the Launch Template.
  /// [overrides] List of nested arguments provides the ability to specify multiple instance types. This will override the same parameter in the launch template. For on-demand instances, Auto Scaling considers the order of preference of instance types to launch based on the order specified in the overrides list. Defined below.
  GroupMixedInstancesPolicyLaunchTemplate({
    required this.launchTemplateSpecification,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateSpecification': pulumi.Input.mapInputValue<GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification, Map<String, dynamic>>(launchTemplateSpecification, (value) => value.toMap()),
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<GroupMixedInstancesPolicyLaunchTemplateOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<GroupMixedInstancesPolicyLaunchTemplateOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupMixedInstancesPolicyLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplate(
      launchTemplateSpecification: (GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.fromMap((map['launchTemplateSpecification'] as Map).cast<String, dynamic>())).input(),
      overrides: map['overrides'] == null ? null : (pulumi.Input.decodeList<GroupMixedInstancesPolicyLaunchTemplateOverride>(map['overrides'], (value) => GroupMixedInstancesPolicyLaunchTemplateOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

