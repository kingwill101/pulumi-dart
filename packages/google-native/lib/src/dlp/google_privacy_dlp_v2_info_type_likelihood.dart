// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_info_type_likelihood_min_likelihood.dart';

/// Configuration for setting a minimum likelihood per infotype. Used to customize the minimum likelihood level for specific infotypes in the request. For example, use this if you want to lower the precision for PERSON_NAME without lowering the precision for the other infotypes in the request.
class GooglePrivacyDlpV2InfoTypeLikelihood {
  /// Type of information the likelihood threshold applies to. Only one likelihood per info_type should be provided. If InfoTypeLikelihood does not have an info_type, the configuration fails.
  final GooglePrivacyDlpV2InfoType? infoType;

  /// Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
  final GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood? minLikelihood;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeLikelihood].
  /// [infoType] Type of information the likelihood threshold applies to. Only one likelihood per info_type should be provided. If InfoTypeLikelihood does not have an info_type, the configuration fails.
  /// [minLikelihood] Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
  GooglePrivacyDlpV2InfoTypeLikelihood({this.infoType, this.minLikelihood});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': ?infoType == null ? null : infoType!.toMap(),
      'minLikelihood': ?minLikelihood == null ? null : minLikelihood!.value,
    };
  }

  factory GooglePrivacyDlpV2InfoTypeLikelihood.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2InfoTypeLikelihood(
      infoType: map['infoType'] == null
          ? null
          : GooglePrivacyDlpV2InfoType.fromMap(
              (map['infoType'] as Map).cast<String, dynamic>(),
            ),
      minLikelihood: map['minLikelihood'] == null
          ? null
          : GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood.fromValue(
              map['minLikelihood'] as String,
            ),
    );
  }
}
