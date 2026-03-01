// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_validation_check_status_result.dart';

class BareMetalAdminClusterValidationCheckStatus {
  /// (Output)
  /// Individual checks which failed as part of the Preflight check execution.
  /// Structure is documented below.
  final List<BareMetalAdminClusterValidationCheckStatusResult>? results;

  /// Creates a new [BareMetalAdminClusterValidationCheckStatus].
  /// [results] (Output)
  BareMetalAdminClusterValidationCheckStatus({this.results});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': ?results == null
          ? null
          : pulumi.Input.encodeList<
              BareMetalAdminClusterValidationCheckStatusResult,
              Map<String, dynamic>
            >(results!, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminClusterValidationCheckStatus.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterValidationCheckStatus(
      results: map['results'] == null
          ? null
          : pulumi.Input.decodeList<
              BareMetalAdminClusterValidationCheckStatusResult
            >(
              map['results'],
              (value) =>
                  BareMetalAdminClusterValidationCheckStatusResult.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
