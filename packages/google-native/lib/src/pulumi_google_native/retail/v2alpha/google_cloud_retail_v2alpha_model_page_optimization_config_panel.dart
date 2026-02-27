// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_retail_v2alpha_model_page_optimization_config_candidate.dart';

/// An individual panel with a list of ServingConfigs to consider for it.
class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel {
  /// The candidates to consider on the panel.
  final List<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>
      candidates;

  /// The default candidate. If the model fails at serving time, we fall back to the default.
  final GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate
      defaultCandidate;

  /// Optional. The name to display for the panel.
  final String? displayName;

  GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel({
    required this.candidates,
    required this.defaultCandidate,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['candidates'] = Input.encodeList<
        GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate,
        Map<String, dynamic>>(candidates, (value) => value.toMap());
    map['defaultCandidate'] = defaultCandidate.toMap();
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel(
      candidates: Input.decodeList<
              GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>(
          map['candidates'],
          (value) =>
              GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate
                  .fromMap((value as Map).cast<String, dynamic>())),
      defaultCandidate:
          GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate.fromMap(
              (map['defaultCandidate'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}
