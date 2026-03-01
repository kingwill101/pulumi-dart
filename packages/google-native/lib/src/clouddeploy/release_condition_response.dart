// ignore_for_file: unused_element, unnecessary_cast

import 'release_ready_condition_response.dart';
import 'skaffold_supported_condition_response.dart';

/// ReleaseCondition contains all conditions relevant to a Release.
class ReleaseConditionResponse {
  /// Details around the Releases's overall status.
  final ReleaseReadyConditionResponse releaseReadyCondition;

  /// Details around the support state of the release's skaffold version.
  final SkaffoldSupportedConditionResponse skaffoldSupportedCondition;

  /// Creates a new [ReleaseConditionResponse].
  /// [releaseReadyCondition] Details around the Releases's overall status.
  /// [skaffoldSupportedCondition] Details around the support state of the release's skaffold version.
  ReleaseConditionResponse({
    required this.releaseReadyCondition,
    required this.skaffoldSupportedCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'releaseReadyCondition': releaseReadyCondition.toMap(),
      'skaffoldSupportedCondition': skaffoldSupportedCondition.toMap(),
    };
  }

  factory ReleaseConditionResponse.fromMap(Map<String, dynamic> map) {
    return ReleaseConditionResponse(
      releaseReadyCondition: ReleaseReadyConditionResponse.fromMap(
        (map['releaseReadyCondition'] as Map).cast<String, dynamic>(),
      ),
      skaffoldSupportedCondition: SkaffoldSupportedConditionResponse.fromMap(
        (map['skaffoldSupportedCondition'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
