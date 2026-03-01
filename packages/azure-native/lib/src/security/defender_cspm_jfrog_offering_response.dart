// ignore_for_file: unused_element, unnecessary_cast

import 'defender_cspm_jfrog_offering_response_mdc_containers_image_assessment.dart';

/// The CSPM P1 for JFrog Artifactory offering
class DefenderCspmJFrogOfferingResponse {
  /// The offering description.
  final String description;
  /// The Microsoft Defender Container image assessment configuration
  final DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmJFrog'.
  final String offeringType;

  /// Creates a new [DefenderCspmJFrogOfferingResponse].
  /// [description] The offering description.
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  DefenderCspmJFrogOfferingResponse({
    required this.description,
    this.mdcContainersImageAssessment,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'mdcContainersImageAssessment': ?mdcContainersImageAssessment == null ? null : mdcContainersImageAssessment!.toMap(),
      'offeringType': offeringType,
    };
  }

  factory DefenderCspmJFrogOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmJFrogOfferingResponse(
      description: map['description'] as String,
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
    );
  }
}

