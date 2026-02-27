// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_group_mixed_instances_policy_launch_template_launch_template_specification/get_group_mixed_instances_policy_launch_template_launch_template_specification.dart';
import '../get_group_mixed_instances_policy_launch_template_override/get_group_mixed_instances_policy_launch_template_override.dart';

class GetGroupMixedInstancesPolicyLaunchTemplate {
  /// List of overriding launch template specification objects.
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification>
      launchTemplateSpecifications;

  /// List of properties overriding the same properties in the launch template.
  final List<GetGroupMixedInstancesPolicyLaunchTemplateOverride> overrides;

  GetGroupMixedInstancesPolicyLaunchTemplate({
    required this.launchTemplateSpecifications,
    required this.overrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['launchTemplateSpecifications'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification,
        Map<String,
            dynamic>>(launchTemplateSpecifications, (value) => value.toMap());
    map['overrides'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverride,
        Map<String, dynamic>>(overrides, (value) => value.toMap());
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplate.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplate(
      launchTemplateSpecifications: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification>(
          map['launchTemplateSpecifications'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
                  .fromMap((value as Map).cast<String, dynamic>())),
      overrides: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverride>(
          map['overrides'],
          (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverride.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
