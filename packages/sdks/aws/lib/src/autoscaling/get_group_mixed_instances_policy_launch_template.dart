// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_mixed_instances_policy_launch_template_launch_template_specification.dart';
import 'get_group_mixed_instances_policy_launch_template_override.dart';

class GetGroupMixedInstancesPolicyLaunchTemplate {
  /// List of overriding launch template specification objects.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification>> launchTemplateSpecifications;
  /// List of properties overriding the same properties in the launch template.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverride>> overrides;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplate].
  /// [launchTemplateSpecifications] List of overriding launch template specification objects.
  /// [overrides] List of properties overriding the same properties in the launch template.
  GetGroupMixedInstancesPolicyLaunchTemplate({
    required this.launchTemplateSpecifications,
    required this.overrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateSpecifications': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification>, List<Map<String, dynamic>>>(launchTemplateSpecifications, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'overrides': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplate(
      launchTemplateSpecifications: (pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification>(map['launchTemplateSpecifications'], (value) => GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      overrides: (pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverride>(map['overrides'], (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

