// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_group_response_osconfig_v1alpha.dart';

/// An OS policy defines the desired state configuration for a VM.
class OSPolicyResponseOsconfigV1alpha {
  /// This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.
  final bool allowNoResourceGroupMatch;

  /// Policy description. Length of the description is limited to 1024 characters.
  final String description;

  /// Policy mode
  final String mode;

  /// List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`
  final List<OSPolicyResourceGroupResponseOsconfigV1alpha> resourceGroups;

  OSPolicyResponseOsconfigV1alpha({
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
    map['resourceGroups'] = pulumi.Input.encodeList<
        OSPolicyResourceGroupResponseOsconfigV1alpha,
        Map<String, dynamic>>(resourceGroups, (value) => value.toMap());
    return map;
  }

  factory OSPolicyResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResponseOsconfigV1alpha(
      allowNoResourceGroupMatch: map['allowNoResourceGroupMatch'] as bool,
      description: map['description'] as String,
      mode: map['mode'] as String,
      resourceGroups:
          pulumi.Input.decodeList<OSPolicyResourceGroupResponseOsconfigV1alpha>(
              map['resourceGroups'],
              (value) => OSPolicyResourceGroupResponseOsconfigV1alpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
