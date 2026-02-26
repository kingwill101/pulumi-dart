// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_instance_lifecycle_policy_metadata_based_readiness_signal_response.dart';

class InstanceGroupManagerInstanceLifecyclePolicyResponse {
  /// The action that a MIG performs on a failed or an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are - REPAIR (default): MIG automatically repairs a failed or an unhealthy VM by recreating it. For more information, see About repairing VMs in a MIG. - DO_NOTHING: MIG does not repair a failed or an unhealthy VM.
  final String defaultActionOnFailure;

  /// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  final String forceUpdateOnRepair;

  /// The configuration for metadata based readiness signal sent by the instance during initialization when stopping / suspending an instance. The Instance Group Manager will wait for a signal that indicates successful initialization before stopping / suspending an instance. If a successful readiness signal is not sent before timeout, the corresponding instance will not be stopped / suspended. Instead, an error will be visible in the lastAttempt.errors field of the managed instance in the listmanagedinstances method. If metadataBasedReadinessSignal.timeoutSec is unset, the Instance Group Manager will directly proceed to suspend / stop instances, skipping initialization on them.
  final InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignalResponse
      metadataBasedReadinessSignal;

  InstanceGroupManagerInstanceLifecyclePolicyResponse({
    required this.defaultActionOnFailure,
    required this.forceUpdateOnRepair,
    required this.metadataBasedReadinessSignal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultActionOnFailure'] = defaultActionOnFailure;
    map['forceUpdateOnRepair'] = forceUpdateOnRepair;
    map['metadataBasedReadinessSignal'] = metadataBasedReadinessSignal.toMap();
    return map;
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyResponse(
      defaultActionOnFailure: map['defaultActionOnFailure'] as String,
      forceUpdateOnRepair: map['forceUpdateOnRepair'] as String,
      metadataBasedReadinessSignal:
          InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignalResponse
              .fromMap((map['metadataBasedReadinessSignal'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
