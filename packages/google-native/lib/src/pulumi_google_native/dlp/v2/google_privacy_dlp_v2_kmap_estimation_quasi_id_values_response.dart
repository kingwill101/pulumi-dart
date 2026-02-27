// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_response.dart';

/// A tuple of values for the quasi-identifier columns.
class GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse {
  /// The estimated anonymity for these quasi-identifier values.
  final String estimatedAnonymity;

  /// The quasi-identifier values.
  final List<GooglePrivacyDlpV2ValueResponse> quasiIdsValues;

  GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse({
    required this.estimatedAnonymity,
    required this.quasiIdsValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedAnonymity'] = estimatedAnonymity;
    map['quasiIdsValues'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2ValueResponse,
        Map<String, dynamic>>(quasiIdsValues, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse(
      estimatedAnonymity: map['estimatedAnonymity'] as String,
      quasiIdsValues: pulumi.Input.decodeList<GooglePrivacyDlpV2ValueResponse>(
          map['quasiIdsValues'],
          (value) => GooglePrivacyDlpV2ValueResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
