// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_retail_v2alpha_model_page_optimization_config_candidate_response.dart';

/// An individual panel with a list of ServingConfigs to consider for it.
class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse {
  /// The candidates to consider on the panel.
  final List<
          GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse>
      candidates;

  /// The default candidate. If the model fails at serving time, we fall back to the default.
  final GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse
      defaultCandidate;

  /// Optional. The name to display for the panel.
  final String displayName;

  GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse({
    required this.candidates,
    required this.defaultCandidate,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['candidates'] = Input.encodeList<
        GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse,
        Map<String, dynamic>>(candidates, (value) => value.toMap());
    map['defaultCandidate'] = defaultCandidate.toMap();
    map['displayName'] = displayName;
    return map;
  }

  factory GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse(
      candidates: Input.decodeList<
              GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse>(
          map['candidates'],
          (value) =>
              GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      defaultCandidate:
          GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse
              .fromMap(
                  (map['defaultCandidate'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
    );
  }
}
