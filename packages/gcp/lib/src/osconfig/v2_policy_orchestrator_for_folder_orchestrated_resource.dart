// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload.dart';

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
  /// <a name="nested_orchestrated_resource_os_policy_assignment_v1_payload"></a>The `os_policy_assignment_v1_payload` block supports:
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

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResource].
  /// [id] ID of the resource to be used while generating set of affected resources.
  /// [osPolicyAssignmentV1Payload] OS policy assignment is an API resource that is used to
  V2PolicyOrchestratorForFolderOrchestratedResource({
    this.id,
    this.osPolicyAssignmentV1Payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'osPolicyAssignmentV1Payload': ?osPolicyAssignmentV1Payload == null
          ? null
          : osPolicyAssignmentV1Payload!.toMap(),
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForFolderOrchestratedResource(
      id: map['id'] == null ? null : map['id'] as String,
      osPolicyAssignmentV1Payload: map['osPolicyAssignmentV1Payload'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1Payload.fromMap(
              (map['osPolicyAssignmentV1Payload'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
