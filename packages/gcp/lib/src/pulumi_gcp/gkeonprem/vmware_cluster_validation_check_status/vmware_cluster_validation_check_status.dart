// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_cluster_validation_check_status_result/vmware_cluster_validation_check_status_result.dart';

class VMwareClusterValidationCheckStatus {
  /// (Output)
  /// Individual checks which failed as part of the Preflight check execution.
  /// Structure is documented below.
  final List<VMwareClusterValidationCheckStatusResult>? results;

  VMwareClusterValidationCheckStatus({
    this.results,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resultsValue = results;
    if (resultsValue != null) {
      map['results'] = Input.encodeList<
          VMwareClusterValidationCheckStatusResult,
          Map<String, dynamic>>(resultsValue, (value) => value.toMap());
    }
    return map;
  }

  factory VMwareClusterValidationCheckStatus.fromMap(Map<String, dynamic> map) {
    return VMwareClusterValidationCheckStatus(
      results: map['results'] == null
          ? null
          : Input.decodeList<VMwareClusterValidationCheckStatusResult>(
              map['results'],
              (value) => VMwareClusterValidationCheckStatusResult.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
