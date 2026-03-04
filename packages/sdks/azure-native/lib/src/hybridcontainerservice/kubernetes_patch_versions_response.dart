// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_version_readiness_response.dart';

/// Kubernetes Patch Version profile
class KubernetesPatchVersionsResponse {
  /// Indicates whether the kubernetes version image is ready or not
  final pulumi.Input<List<KubernetesVersionReadinessResponse>>? readiness;

  /// Possible upgrade paths for given patch version
  final pulumi.Input<List<String>>? upgrades;

  /// Creates a new [KubernetesPatchVersionsResponse].
  /// [readiness] Indicates whether the kubernetes version image is ready or not
  /// [upgrades] Possible upgrade paths for given patch version
  KubernetesPatchVersionsResponse({this.readiness, this.upgrades});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readiness':
          ?pulumi.Input.mapOptionalInputValue<
            List<KubernetesVersionReadinessResponse>,
            List<Map<String, dynamic>>
          >(
            readiness,
            (value) =>
                pulumi.Input.encodeList<
                  KubernetesVersionReadinessResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'upgrades': ?upgrades,
    };
  }

  factory KubernetesPatchVersionsResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesPatchVersionsResponse(
      readiness: (() {
        final guardedValue = map['readiness'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<KubernetesVersionReadinessResponse>(
            guardedValue,
            (value) => KubernetesVersionReadinessResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      upgrades: (() {
        final guardedValue = map['upgrades'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
