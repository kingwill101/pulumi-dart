// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_response.dart';

/// A tuple of values for the quasi-identifier columns.
class GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse {
  /// The estimated probability that a given individual sharing these quasi-identifier values is in the dataset. This value, typically called δ, is the ratio between the number of records in the dataset with these quasi-identifier values, and the total number of individuals (inside *and* outside the dataset) with these quasi-identifier values. For example, if there are 15 individuals in the dataset who share the same quasi-identifier values, and an estimated 100 people in the entire population with these values, then δ is 0.15.
  final double estimatedProbability;

  /// The quasi-identifier values.
  final List<GooglePrivacyDlpV2ValueResponse> quasiIdsValues;

  /// Creates a new [GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse].
  /// [estimatedProbability] The estimated probability that a given individual sharing these quasi-identifier values is in the dataset. This value, typically called δ, is the ratio between the number of records in the dataset with these quasi-identifier values, and the total number of individuals (inside *and* outside the dataset) with these quasi-identifier values. For example, if there are 15 individuals in the dataset who share the same quasi-identifier values, and an estimated 100 people in the entire population with these values, then δ is 0.15.
  /// [quasiIdsValues] The quasi-identifier values.
  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse({
    required this.estimatedProbability,
    required this.quasiIdsValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedProbability': estimatedProbability,
      'quasiIdsValues':
          pulumi.Input.encodeList<
            GooglePrivacyDlpV2ValueResponse,
            Map<String, dynamic>
          >(quasiIdsValues, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse(
      estimatedProbability: map['estimatedProbability'] as double,
      quasiIdsValues: pulumi.Input.decodeList<GooglePrivacyDlpV2ValueResponse>(
        map['quasiIdsValues'],
        (value) => GooglePrivacyDlpV2ValueResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
