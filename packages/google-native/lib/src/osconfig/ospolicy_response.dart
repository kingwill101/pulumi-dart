// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_group_response.dart';

/// An OS policy defines the desired state configuration for a VM.
class OSPolicyResponse {
  /// This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.
  final bool allowNoResourceGroupMatch;
  /// Policy description. Length of the description is limited to 1024 characters.
  final String description;
  /// Policy mode
  final String mode;
  /// List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`
  final List<OSPolicyResourceGroupResponse> resourceGroups;

  /// Creates a new [OSPolicyResponse].
  /// [allowNoResourceGroupMatch] This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.
  /// [description] Policy description. Length of the description is limited to 1024 characters.
  /// [mode] Policy mode
  /// [resourceGroups] List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`
  OSPolicyResponse({
    required this.allowNoResourceGroupMatch,
    required this.description,
    required this.mode,
    required this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNoResourceGroupMatch': allowNoResourceGroupMatch,
      'description': description,
      'mode': mode,
      'resourceGroups': pulumi.Input.encodeList<OSPolicyResourceGroupResponse, Map<String, dynamic>>(resourceGroups, (value) => value.toMap()),
    };
  }

  factory OSPolicyResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResponse(
      allowNoResourceGroupMatch: map['allowNoResourceGroupMatch'] as bool,
      description: map['description'] as String,
      mode: map['mode'] as String,
      resourceGroups: pulumi.Input.decodeList<OSPolicyResourceGroupResponse>(map['resourceGroups'], (value) => OSPolicyResourceGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

