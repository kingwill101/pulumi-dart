// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_frequency_response.dart';
import 'google_privacy_dlp_v2_value_response.dart';

/// The set of columns' values that share the same ldiversity value.
class GooglePrivacyDlpV2LDiversityEquivalenceClassResponse {
  /// Size of the k-anonymity equivalence class.
  final String equivalenceClassSize;

  /// Number of distinct sensitive values in this equivalence class.
  final String numDistinctSensitiveValues;

  /// Quasi-identifier values defining the k-anonymity equivalence class. The order is always the same as the original request.
  final List<GooglePrivacyDlpV2ValueResponse> quasiIdsValues;

  /// Estimated frequencies of top sensitive values.
  final List<GooglePrivacyDlpV2ValueFrequencyResponse> topSensitiveValues;

  /// Creates a new [GooglePrivacyDlpV2LDiversityEquivalenceClassResponse].
  /// [equivalenceClassSize] Size of the k-anonymity equivalence class.
  /// [numDistinctSensitiveValues] Number of distinct sensitive values in this equivalence class.
  /// [quasiIdsValues] Quasi-identifier values defining the k-anonymity equivalence class. The order is always the same as the original request.
  /// [topSensitiveValues] Estimated frequencies of top sensitive values.
  GooglePrivacyDlpV2LDiversityEquivalenceClassResponse({
    required this.equivalenceClassSize,
    required this.numDistinctSensitiveValues,
    required this.quasiIdsValues,
    required this.topSensitiveValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'equivalenceClassSize': equivalenceClassSize,
      'numDistinctSensitiveValues': numDistinctSensitiveValues,
      'quasiIdsValues':
          pulumi.Input.encodeList<
            GooglePrivacyDlpV2ValueResponse,
            Map<String, dynamic>
          >(quasiIdsValues, (value) => value.toMap()),
      'topSensitiveValues':
          pulumi.Input.encodeList<
            GooglePrivacyDlpV2ValueFrequencyResponse,
            Map<String, dynamic>
          >(topSensitiveValues, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2LDiversityEquivalenceClassResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2LDiversityEquivalenceClassResponse(
      equivalenceClassSize: map['equivalenceClassSize'] as String,
      numDistinctSensitiveValues: map['numDistinctSensitiveValues'] as String,
      quasiIdsValues: pulumi.Input.decodeList<GooglePrivacyDlpV2ValueResponse>(
        map['quasiIdsValues'],
        (value) => GooglePrivacyDlpV2ValueResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      topSensitiveValues:
          pulumi.Input.decodeList<GooglePrivacyDlpV2ValueFrequencyResponse>(
            map['topSensitiveValues'],
            (value) => GooglePrivacyDlpV2ValueFrequencyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
