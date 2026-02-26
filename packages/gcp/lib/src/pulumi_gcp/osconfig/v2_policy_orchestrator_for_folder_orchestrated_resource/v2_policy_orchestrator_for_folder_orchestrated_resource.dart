// ignore_for_file: unused_element, unnecessary_cast

import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload.dart';

class V2PolicyOrchestratorForFolderOrchestratedResource {
  /// ID of the resource to be used while generating set of affected resources.
  /// For UPSERT action the value is auto-generated during PolicyOrchestrator
  /// creation when not set. When the value is set it should following next
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  /// For DELETE action, ID must be specified explicitly during
  /// PolicyOrchestrator creation.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedOrchestratedResourceOsPolicyAssignmentV1Payload"" pulumi-lang-dotnet=""NestedOrchestratedResourceOsPolicyAssignmentV1Payload"" pulumi-lang-go=""nestedOrchestratedResourceOsPolicyAssignmentV1Payload"" pulumi-lang-python=""nested_orchestrated_resource_os_policy_assignment_v1_payload"" pulumi-lang-yaml=""nestedOrchestratedResourceOsPolicyAssignmentV1Payload"" pulumi-lang-java=""nestedOrchestratedResourceOsPolicyAssignmentV1Payload"">"nested_orchestrated_resource_os_policy_assignment_v1_payload"</span>></a>The <span pulumi-lang-nodejs="`osPolicyAssignmentV1Payload`" pulumi-lang-dotnet="`OsPolicyAssignmentV1Payload`" pulumi-lang-go="`osPolicyAssignmentV1Payload`" pulumi-lang-python="`os_policy_assignment_v1_payload`" pulumi-lang-yaml="`osPolicyAssignmentV1Payload`" pulumi-lang-java="`osPolicyAssignmentV1Payload`">`os_policy_assignment_v1_payload`</span> block supports:
  final String? id;

  /// OS policy assignment is an API resource that is used to
  /// apply a set of OS policies to a dynamically targeted group of Compute Engine
  /// VM instances.
  /// An OS policy is used to define the desired state configuration for a
  /// Compute Engine VM instance through a set of configuration resources that
  /// provide capabilities such as installing or removing software packages, or
  /// executing a script.
  /// For more information about the OS policy resource definitions and examples,
  /// see
  /// [OS policy and OS policy
  /// assignment](https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies).
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1Payload?
      osPolicyAssignmentV1Payload;

  V2PolicyOrchestratorForFolderOrchestratedResource({
    this.id,
    this.osPolicyAssignmentV1Payload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final osPolicyAssignmentV1PayloadValue = osPolicyAssignmentV1Payload;
    if (osPolicyAssignmentV1PayloadValue != null) {
      map['osPolicyAssignmentV1Payload'] =
          osPolicyAssignmentV1PayloadValue.toMap();
    }
    return map;
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResource.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResource(
      id: map['id'] == null ? null : map['id'] as String,
      osPolicyAssignmentV1Payload: map['osPolicyAssignmentV1Payload'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1Payload
              .fromMap((map['osPolicyAssignmentV1Payload'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
