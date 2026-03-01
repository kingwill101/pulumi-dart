// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_likelihood_adjustment_fixed_likelihood.dart';

/// Message for specifying an adjustment to the likelihood of a finding as part of a detection rule.
class GooglePrivacyDlpV2LikelihoodAdjustment {
  /// Set the likelihood of a finding to a fixed value.
  final GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood? fixedLikelihood;

  /// Increase or decrease the likelihood by the specified number of levels. For example, if a finding would be `POSSIBLE` without the detection rule and `relative_likelihood` is 1, then it is upgraded to `LIKELY`, while a value of -1 would downgrade it to `UNLIKELY`. Likelihood may never drop below `VERY_UNLIKELY` or exceed `VERY_LIKELY`, so applying an adjustment of 1 followed by an adjustment of -1 when base likelihood is `VERY_LIKELY` will result in a final likelihood of `LIKELY`.
  final int? relativeLikelihood;

  /// Creates a new [GooglePrivacyDlpV2LikelihoodAdjustment].
  /// [fixedLikelihood] Set the likelihood of a finding to a fixed value.
  /// [relativeLikelihood] Increase or decrease the likelihood by the specified number of levels. For example, if a finding would be `POSSIBLE` without the detection rule and `relative_likelihood` is 1, then it is upgraded to `LIKELY`, while a value of -1 would downgrade it to `UNLIKELY`. Likelihood may never drop below `VERY_UNLIKELY` or exceed `VERY_LIKELY`, so applying an adjustment of 1 followed by an adjustment of -1 when base likelihood is `VERY_LIKELY` will result in a final likelihood of `LIKELY`.
  GooglePrivacyDlpV2LikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedLikelihood': ?fixedLikelihood == null
          ? null
          : fixedLikelihood!.value,
      'relativeLikelihood': ?relativeLikelihood,
    };
  }

  factory GooglePrivacyDlpV2LikelihoodAdjustment.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2LikelihoodAdjustment(
      fixedLikelihood: map['fixedLikelihood'] == null
          ? null
          : GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood.fromValue(
              map['fixedLikelihood'] as String,
            ),
      relativeLikelihood: map['relativeLikelihood'] == null
          ? null
          : map['relativeLikelihood'] as int,
    );
  }
}
