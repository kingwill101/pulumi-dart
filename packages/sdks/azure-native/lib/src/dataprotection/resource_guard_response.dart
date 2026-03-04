// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_operation_response.dart';

class ResourceGuardResponse {
  /// This flag indicates whether auto approval is allowed or not.
  final pulumi.Input<bool> allowAutoApprovals;

  /// Description about the pre-req steps to perform all the critical operations.
  final pulumi.Input<String> description;

  /// Provisioning state of the BackupVault resource
  final pulumi.Input<String> provisioningState;

  /// {readonly} List of operation details those are protected by the ResourceGuard resource
  final pulumi.Input<List<ResourceGuardOperationResponse>>
  resourceGuardOperations;

  /// List of critical operations which are not protected by this resourceGuard
  final pulumi.Input<List<String>>? vaultCriticalOperationExclusionList;

  /// Creates a new [ResourceGuardResponse].
  /// [allowAutoApprovals] This flag indicates whether auto approval is allowed or not.
  /// [description] Description about the pre-req steps to perform all the critical operations.
  /// [provisioningState] Provisioning state of the BackupVault resource
  /// [resourceGuardOperations] {readonly} List of operation details those are protected by the ResourceGuard resource
  /// [vaultCriticalOperationExclusionList] List of critical operations which are not protected by this resourceGuard
  ResourceGuardResponse({
    required this.allowAutoApprovals,
    required this.description,
    required this.provisioningState,
    required this.resourceGuardOperations,
    this.vaultCriticalOperationExclusionList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAutoApprovals': allowAutoApprovals,
      'description': description,
      'provisioningState': provisioningState,
      'resourceGuardOperations':
          pulumi.Input.mapInputValue<
            List<ResourceGuardOperationResponse>,
            List<Map<String, dynamic>>
          >(
            resourceGuardOperations,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceGuardOperationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vaultCriticalOperationExclusionList':
          ?vaultCriticalOperationExclusionList,
    };
  }

  factory ResourceGuardResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGuardResponse(
      allowAutoApprovals: pulumi.Input.fromValue(
        map['allowAutoApprovals'] as bool,
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      resourceGuardOperations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ResourceGuardOperationResponse>(
          map['resourceGuardOperations']!,
          (value) => ResourceGuardOperationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      vaultCriticalOperationExclusionList: (() {
        final guardedValue = map['vaultCriticalOperationExclusionList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
