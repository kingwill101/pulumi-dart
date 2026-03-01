// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_response.dart';

/// A tuple of values for the quasi-identifier columns.
class GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse {
  /// The estimated anonymity for these quasi-identifier values.
  final String estimatedAnonymity;

  /// The quasi-identifier values.
  final List<GooglePrivacyDlpV2ValueResponse> quasiIdsValues;

  /// Creates a new [GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse].
  /// [estimatedAnonymity] The estimated anonymity for these quasi-identifier values.
  /// [quasiIdsValues] The quasi-identifier values.
  GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse({
    required this.estimatedAnonymity,
    required this.quasiIdsValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedAnonymity': estimatedAnonymity,
      'quasiIdsValues':
          pulumi.Input.encodeList<
            GooglePrivacyDlpV2ValueResponse,
            Map<String, dynamic>
          >(quasiIdsValues, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse(
      estimatedAnonymity: map['estimatedAnonymity'] as String,
      quasiIdsValues: pulumi.Input.decodeList<GooglePrivacyDlpV2ValueResponse>(
        map['quasiIdsValues'],
        (value) => GooglePrivacyDlpV2ValueResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
