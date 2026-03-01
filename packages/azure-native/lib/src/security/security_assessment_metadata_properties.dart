// ignore_for_file: unused_element, unnecessary_cast

import 'security_assessment_metadata_partner_data.dart';

/// Describes properties of an assessment metadata.
class SecurityAssessmentMetadataProperties {
  /// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  final String assessmentType;
  final List<String>? categories;
  /// Human readable description of the assessment
  final String? description;
  /// User friendly display name of the assessment
  final String displayName;
  /// The implementation effort required to remediate this assessment
  final String? implementationEffort;
  /// Describes the partner that created the assessment
  final SecurityAssessmentMetadataPartnerData? partnerData;
  /// True if this assessment is in preview release status
  final bool? preview;
  /// Human readable description of what you should do to mitigate this security issue
  final String? remediationDescription;
  /// The severity level of the assessment
  final String severity;
  final List<String>? threats;
  /// The user impact of the assessment
  final String? userImpact;

  /// Creates a new [SecurityAssessmentMetadataProperties].
  /// [assessmentType] BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  /// [categories] Optional.
  /// [description] Human readable description of the assessment
  /// [displayName] User friendly display name of the assessment
  /// [implementationEffort] The implementation effort required to remediate this assessment
  /// [partnerData] Describes the partner that created the assessment
  /// [preview] True if this assessment is in preview release status
  /// [remediationDescription] Human readable description of what you should do to mitigate this security issue
  /// [severity] The severity level of the assessment
  /// [threats] Optional.
  /// [userImpact] The user impact of the assessment
  SecurityAssessmentMetadataProperties({
    required this.assessmentType,
    this.categories,
    this.description,
    required this.displayName,
    this.implementationEffort,
    this.partnerData,
    this.preview,
    this.remediationDescription,
    required this.severity,
    this.threats,
    this.userImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentType': assessmentType,
      'categories': ?categories,
      'description': ?description,
      'displayName': displayName,
      'implementationEffort': ?implementationEffort,
      'partnerData': ?partnerData == null ? null : partnerData!.toMap(),
      'preview': ?preview,
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'threats': ?threats,
      'userImpact': ?userImpact,
    };
  }

  factory SecurityAssessmentMetadataProperties.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataProperties(
      assessmentType: map['assessmentType'] as String,
      categories: map['categories'] == null ? null : (map['categories'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      implementationEffort: map['implementationEffort'] == null ? null : map['implementationEffort'] as String,
      partnerData: map['partnerData'] == null ? null : SecurityAssessmentMetadataPartnerData.fromMap((map['partnerData'] as Map).cast<String, dynamic>()),
      preview: map['preview'] == null ? null : map['preview'] as bool,
      remediationDescription: map['remediationDescription'] == null ? null : map['remediationDescription'] as String,
      severity: map['severity'] as String,
      threats: map['threats'] == null ? null : (map['threats'] as List).cast<String>(),
      userImpact: map['userImpact'] == null ? null : map['userImpact'] as String,
    );
  }
}

