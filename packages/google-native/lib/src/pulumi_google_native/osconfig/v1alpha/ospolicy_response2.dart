// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ospolicy_resource_group_response2.dart';

/// An OS policy defines the desired state configuration for a VM.
class OSPolicyResponse2 {
  /// This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.
  final bool allowNoResourceGroupMatch;

  /// Policy description. Length of the description is limited to 1024 characters.
  final String description;

  /// Policy mode
  final String mode;

  /// List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`
  final List<OSPolicyResourceGroupResponse2> resourceGroups;

  OSPolicyResponse2({
    required this.allowNoResourceGroupMatch,
    required this.description,
    required this.mode,
    required this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowNoResourceGroupMatch'] = allowNoResourceGroupMatch;
    map['description'] = description;
    map['mode'] = mode;
    map['resourceGroups'] =
        Input.encodeList<OSPolicyResourceGroupResponse2, Map<String, dynamic>>(
            resourceGroups, (value) => value.toMap());
    return map;
  }

  factory OSPolicyResponse2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResponse2(
      allowNoResourceGroupMatch: map['allowNoResourceGroupMatch'] as bool,
      description: map['description'] as String,
      mode: map['mode'] as String,
      resourceGroups: Input.decodeList<OSPolicyResourceGroupResponse2>(
          map['resourceGroups'],
          (value) => OSPolicyResourceGroupResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
