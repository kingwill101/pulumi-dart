// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_validation_check_status_result.dart';

class VMwareClusterValidationCheckStatus {
  /// (Output)
  /// Individual checks which failed as part of the Preflight check execution.
  /// Structure is documented below.
  final List<VMwareClusterValidationCheckStatusResult>? results;

  /// Creates a new [VMwareClusterValidationCheckStatus].
  /// [results] (Output)
  VMwareClusterValidationCheckStatus({
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': ?results == null ? null : pulumi.Input.encodeList<VMwareClusterValidationCheckStatusResult, Map<String, dynamic>>(results!, (value) => value.toMap()),
    };
  }

  factory VMwareClusterValidationCheckStatus.fromMap(Map<String, dynamic> map) {
    return VMwareClusterValidationCheckStatus(
      results: map['results'] == null ? null : pulumi.Input.decodeList<VMwareClusterValidationCheckStatusResult>(map['results'], (value) => VMwareClusterValidationCheckStatusResult.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

