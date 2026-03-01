// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_status.dart';
import 'azure_resource_details.dart';
import 'security_assessment_metadata_properties.dart';
import 'security_assessment_partner_data.dart';

/// {@template pulumi_security_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_security_assessment_args_doc}
class AssessmentArgs {
  /// Additional data regarding the assessment
  final pulumi.Input<Map<String, String>>? additionalData;
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String>? assessmentName;
  /// Describes properties of an assessment metadata.
  final pulumi.Input<SecurityAssessmentMetadataProperties>? metadata;
  /// Data regarding 3rd party partner integration
  final pulumi.Input<SecurityAssessmentPartnerData>? partnersData;
  /// Details of the resource that was assessed
  final pulumi.Input<AzureResourceDetails> resourceDetails;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// The result of the assessment
  final pulumi.Input<AssessmentStatus> status;

  /// Creates a new [AssessmentArgs].
  /// [additionalData] Additional data regarding the assessment
  /// [assessmentName] The Assessment Key - Unique key for the assessment type
  /// [metadata] Describes properties of an assessment metadata.
  /// [partnersData] Data regarding 3rd party partner integration
  /// [resourceDetails] Details of the resource that was assessed
  /// [resourceId] The identifier of the resource.
  /// [status] The result of the assessment
  AssessmentArgs({
    Map<String, String>? additionalData,
    String? assessmentName,
    SecurityAssessmentMetadataProperties? metadata,
    SecurityAssessmentPartnerData? partnersData,
    required AzureResourceDetails resourceDetails,
    required String resourceId,
    required AssessmentStatus status,
  }) :
      additionalData = pulumi.Input.asOptionalInput<Map<String, String>>(additionalData),
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      metadata = pulumi.Input.asOptionalInput<SecurityAssessmentMetadataProperties>(metadata),
      partnersData = pulumi.Input.asOptionalInput<SecurityAssessmentPartnerData>(partnersData),
      resourceDetails = pulumi.Input.asInput<AzureResourceDetails>(resourceDetails),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      status = pulumi.Input.asInput<AssessmentStatus>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'assessmentName': ?assessmentName,
      'metadata': ?pulumi.Input.mapOptionalInputValue<SecurityAssessmentMetadataProperties, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'partnersData': ?pulumi.Input.mapOptionalInputValue<SecurityAssessmentPartnerData, Map<String, dynamic>>(partnersData, (value) => value.toMap()),
      'resourceDetails': pulumi.Input.mapInputValue<AzureResourceDetails, Map<String, dynamic>>(resourceDetails, (value) => value.toMap()),
      'resourceId': resourceId,
      'status': pulumi.Input.mapInputValue<AssessmentStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      additionalData: map['additionalData'] == null ? null : (map['additionalData'] as Map).cast<String, String>(),
      assessmentName: map['assessmentName'] == null ? null : map['assessmentName'] as String,
      metadata: map['metadata'] == null ? null : SecurityAssessmentMetadataProperties.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      partnersData: map['partnersData'] == null ? null : SecurityAssessmentPartnerData.fromMap((map['partnersData'] as Map).cast<String, dynamic>()),
      resourceDetails: AzureResourceDetails.fromMap((map['resourceDetails'] as Map).cast<String, dynamic>()),
      resourceId: map['resourceId'] as String,
      status: AssessmentStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

