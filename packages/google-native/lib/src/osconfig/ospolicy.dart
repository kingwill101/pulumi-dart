// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_mode.dart';
import 'ospolicy_resource_group.dart';

/// An OS policy defines the desired state configuration for a VM.
class OSPolicy {
  /// This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.
  final bool? allowNoResourceGroupMatch;

  /// Policy description. Length of the description is limited to 1024 characters.
  final String? description;

  /// The id of the OS policy with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the assignment.
  final String id;

  /// Policy mode
  final OSPolicyMode mode;

  /// List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`
  final List<OSPolicyResourceGroup> resourceGroups;

  /// Creates a new [OSPolicy].
  /// [allowNoResourceGroupMatch] This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.
  /// [description] Policy description. Length of the description is limited to 1024 characters.
  /// [id] The id of the OS policy with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the assignment.
  /// [mode] Policy mode
  /// [resourceGroups] List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`
  OSPolicy({
    this.allowNoResourceGroupMatch,
    this.description,
    required this.id,
    required this.mode,
    required this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNoResourceGroupMatch': ?allowNoResourceGroupMatch,
      'description': ?description,
      'id': id,
      'mode': mode.value,
      'resourceGroups':
          pulumi.Input.encodeList<OSPolicyResourceGroup, Map<String, dynamic>>(
            resourceGroups,
            (value) => value.toMap(),
          ),
    };
  }

  factory OSPolicy.fromMap(Map<String, dynamic> map) {
    return OSPolicy(
      allowNoResourceGroupMatch: map['allowNoResourceGroupMatch'] == null
          ? null
          : map['allowNoResourceGroupMatch'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      id: map['id'] as String,
      mode: OSPolicyMode.fromValue(map['mode'] as String),
      resourceGroups: pulumi.Input.decodeList<OSPolicyResourceGroup>(
        map['resourceGroups'],
        (value) => OSPolicyResourceGroup.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
