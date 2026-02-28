// ignore_for_file: unused_element, unnecessary_cast

import 'queued_resource_status_failed_data_response.dart';
import 'queuing_policy_response.dart';

/// [Output only] Result of queuing and provisioning based on deferred capacity.
class QueuedResourceStatusResponse {
  /// Additional status detail for the FAILED state.
  final QueuedResourceStatusFailedDataResponse failedData;

  /// [Output only] Fully qualified URL of the provisioning GCE operation to track the provisioning along with provisioning errors. The referenced operation may not exist after having been deleted or expired.
  final List<String> provisioningOperations;

  /// Constraints for the time when the resource(s) start provisioning. Always exposed as absolute times.
  final QueuingPolicyResponse queuingPolicy;

  /// Creates a new [QueuedResourceStatusResponse].
  /// [failedData] Additional status detail for the FAILED state.
  /// [provisioningOperations] [Output only] Fully qualified URL of the provisioning GCE operation to track the provisioning along with provisioning errors. The referenced operation may not exist after having been deleted or expired.
  /// [queuingPolicy] Constraints for the time when the resource(s) start provisioning. Always exposed as absolute times.
  QueuedResourceStatusResponse({
    required this.failedData,
    required this.provisioningOperations,
    required this.queuingPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failedData'] = failedData.toMap();
    map['provisioningOperations'] = provisioningOperations;
    map['queuingPolicy'] = queuingPolicy.toMap();
    return map;
  }

  factory QueuedResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return QueuedResourceStatusResponse(
      failedData: QueuedResourceStatusFailedDataResponse.fromMap(
          (map['failedData'] as Map).cast<String, dynamic>()),
      provisioningOperations:
          (map['provisioningOperations'] as List).cast<String>(),
      queuingPolicy: QueuingPolicyResponse.fromMap(
          (map['queuingPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
