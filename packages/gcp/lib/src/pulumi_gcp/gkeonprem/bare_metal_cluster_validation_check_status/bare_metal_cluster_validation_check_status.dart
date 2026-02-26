// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_cluster_validation_check_status_result/bare_metal_cluster_validation_check_status_result.dart';

class BareMetalClusterValidationCheckStatus {
  /// (Output)
  /// Individual checks which failed as part of the Preflight check execution.
  /// Structure is documented below.
  final List<BareMetalClusterValidationCheckStatusResult>? results;

  BareMetalClusterValidationCheckStatus({
    this.results,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resultsValue = results;
    if (resultsValue != null) {
      map['results'] = Input.encodeList<
          BareMetalClusterValidationCheckStatusResult,
          Map<String, dynamic>>(resultsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BareMetalClusterValidationCheckStatus.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterValidationCheckStatus(
      results: map['results'] == null
          ? null
          : Input.decodeList<BareMetalClusterValidationCheckStatusResult>(
              map['results'],
              (value) => BareMetalClusterValidationCheckStatusResult.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
