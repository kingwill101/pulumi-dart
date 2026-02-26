// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_value_response.dart';

/// A tuple of values for the quasi-identifier columns.
class GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse {
  /// The estimated probability that a given individual sharing these quasi-identifier values is in the dataset. This value, typically called δ, is the ratio between the number of records in the dataset with these quasi-identifier values, and the total number of individuals (inside *and* outside the dataset) with these quasi-identifier values. For example, if there are 15 individuals in the dataset who share the same quasi-identifier values, and an estimated 100 people in the entire population with these values, then δ is 0.15.
  final double estimatedProbability;

  /// The quasi-identifier values.
  final List<GooglePrivacyDlpV2ValueResponse> quasiIdsValues;

  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse({
    required this.estimatedProbability,
    required this.quasiIdsValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedProbability'] = estimatedProbability;
    map['quasiIdsValues'] =
        Input.encodeList<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(
            quasiIdsValues, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse(
      estimatedProbability: map['estimatedProbability'] as double,
      quasiIdsValues: Input.decodeList<GooglePrivacyDlpV2ValueResponse>(
          map['quasiIdsValues'],
          (value) => GooglePrivacyDlpV2ValueResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
