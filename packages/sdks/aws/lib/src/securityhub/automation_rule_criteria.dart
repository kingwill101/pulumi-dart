// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_criteria_aws_account_id.dart';
import 'automation_rule_criteria_aws_account_name.dart';
import 'automation_rule_criteria_company_name.dart';
import 'automation_rule_criteria_compliance_associated_standards_id.dart';
import 'automation_rule_criteria_compliance_security_control_id.dart';
import 'automation_rule_criteria_compliance_status.dart';
import 'automation_rule_criteria_confidence.dart';
import 'automation_rule_criteria_created_at.dart';
import 'automation_rule_criteria_criticality.dart';
import 'automation_rule_criteria_description.dart';
import 'automation_rule_criteria_first_observed_at.dart';
import 'automation_rule_criteria_generator_id.dart';
import 'automation_rule_criteria_id.dart';
import 'automation_rule_criteria_last_observed_at.dart';
import 'automation_rule_criteria_note_text.dart';
import 'automation_rule_criteria_note_updated_at.dart';
import 'automation_rule_criteria_note_updated_by.dart';
import 'automation_rule_criteria_product_arn.dart';
import 'automation_rule_criteria_product_name.dart';
import 'automation_rule_criteria_record_state.dart';
import 'automation_rule_criteria_related_findings_id.dart';
import 'automation_rule_criteria_related_findings_product_arn.dart';
import 'automation_rule_criteria_resource_application_arn.dart';
import 'automation_rule_criteria_resource_application_name.dart';
import 'automation_rule_criteria_resource_details_other.dart';
import 'automation_rule_criteria_resource_id.dart';
import 'automation_rule_criteria_resource_partition.dart';
import 'automation_rule_criteria_resource_region.dart';
import 'automation_rule_criteria_resource_tag.dart';
import 'automation_rule_criteria_resource_type.dart';
import 'automation_rule_criteria_severity_label.dart';
import 'automation_rule_criteria_source_url.dart';
import 'automation_rule_criteria_title.dart';
import 'automation_rule_criteria_type.dart';
import 'automation_rule_criteria_updated_at.dart';
import 'automation_rule_criteria_user_defined_field.dart';
import 'automation_rule_criteria_verification_state.dart';
import 'automation_rule_criteria_workflow_status.dart';

class AutomationRuleCriteria {
  /// The AWS account ID in which a finding was generated. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaAwsAccountId>>? awsAccountIds;
  /// The name of the AWS account in which a finding was generated. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaAwsAccountName>>? awsAccountNames;
  /// The name of the company for the product that generated the finding. For control-based findings, the company is AWS. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaCompanyName>>? companyNames;
  /// The unique identifier of a standard in which a control is enabled. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaComplianceAssociatedStandardsId>>? complianceAssociatedStandardsIds;
  /// The security control ID for which a finding was generated. Security control IDs are the same across standards. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaComplianceSecurityControlId>>? complianceSecurityControlIds;
  /// The result of a security check. This field is only used for findings generated from controls. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaComplianceStatus>>? complianceStatuses;
  /// The likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. `Confidence` is scored on a 0–100 basis using a ratio scale. A value of `0` means 0 percent confidence, and a value of `100` means 100 percent confidence. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaConfidence>>? confidences;
  /// A timestamp that indicates when this finding record was created. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaCreatedAt>>? createdAts;
  /// The level of importance that is assigned to the resources that are associated with a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaCriticality>>? criticalities;
  /// A finding's description. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaDescription>>? descriptions;
  /// A timestamp that indicates when the potential security issue captured by a finding was first observed by the security findings product. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaFirstObservedAt>>? firstObservedAts;
  /// The identifier for the solution-specific component that generated a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaGeneratorId>>? generatorIds;
  /// The product-specific identifier for a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaId>>? ids;
  /// A timestamp that indicates when the potential security issue captured by a finding was most recently observed by the security findings product. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaLastObservedAt>>? lastObservedAts;
  /// The text of a user-defined note that's added to a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaNoteText>>? noteTexts;
  /// The timestamp of when the note was updated. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaNoteUpdatedAt>>? noteUpdatedAts;
  /// The principal that created a note. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaNoteUpdatedBy>>? noteUpdatedBies;
  /// The Amazon Resource Name (ARN) for a third-party product that generated a finding in Security Hub. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaProductArn>>? productArns;
  /// Provides the name of the product that generated the finding. For control-based findings, the product name is Security Hub. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaProductName>>? productNames;
  /// Provides the current state of a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaRecordState>>? recordStates;
  /// The product-generated identifier for a related finding.  Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaRelatedFindingsId>>? relatedFindingsIds;
  /// The ARN for the product that generated a related finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaRelatedFindingsProductArn>>? relatedFindingsProductArns;
  /// The Amazon Resource Name (ARN) of the application that is related to a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaResourceApplicationArn>>? resourceApplicationArns;
  /// The name of the application that is related to a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaResourceApplicationName>>? resourceApplicationNames;
  /// Custom fields and values about the resource that a finding pertains to. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaResourceDetailsOther>>? resourceDetailsOthers;
  /// The identifier for the given resource type. For AWS resources that are identified by Amazon Resource Names (ARNs), this is the ARN. For AWS resources that lack ARNs, this is the identifier as defined by the AWS service that created the resource. For non-AWS resources, this is a unique identifier that is associated with the resource. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaResourceId>>? resourceIds;
  /// The partition in which the resource that the finding pertains to is located. A partition is a group of AWS Regions. Each AWS account is scoped to one partition. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaResourcePartition>>? resourcePartitions;
  /// The AWS Region where the resource that a finding pertains to is located. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaResourceRegion>>? resourceRegions;
  /// A list of AWS tags associated with a resource at the time the finding was processed. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaResourceTag>>? resourceTags;
  /// The type of resource that the finding pertains to. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaResourceType>>? resourceTypes;
  /// The severity value of the finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaSeverityLabel>>? severityLabels;
  /// Provides a URL that links to a page about the current finding in the finding product. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaSourceUrl>>? sourceUrls;
  /// A finding's title. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaTitle>>? titles;
  /// One or more finding types in the format of namespace/category/classifier that classify a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaType>>? types;
  /// A timestamp that indicates when the finding record was most recently updated. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaUpdatedAt>>? updatedAts;
  /// A list of user-defined name and value string pairs added to a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaUserDefinedField>>? userDefinedFields;
  /// Provides the veracity of a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaVerificationState>>? verificationStates;
  /// Provides information about the status of the investigation into a finding. Documented below.
  final pulumi.Input<List<AutomationRuleCriteriaWorkflowStatus>>? workflowStatuses;

  /// Creates a new [AutomationRuleCriteria].
  /// [awsAccountIds] The AWS account ID in which a finding was generated. Documented below.
  /// [awsAccountNames] The name of the AWS account in which a finding was generated. Documented below.
  /// [companyNames] The name of the company for the product that generated the finding. For control-based findings, the company is AWS. Documented below.
  /// [complianceAssociatedStandardsIds] The unique identifier of a standard in which a control is enabled. Documented below.
  /// [complianceSecurityControlIds] The security control ID for which a finding was generated. Security control IDs are the same across standards. Documented below.
  /// [complianceStatuses] The result of a security check. This field is only used for findings generated from controls. Documented below.
  /// [confidences] The likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. `Confidence` is scored on a 0–100 basis using a ratio scale. A value of `0` means 0 percent confidence, and a value of `100` means 100 percent confidence. Documented below.
  /// [createdAts] A timestamp that indicates when this finding record was created. Documented below.
  /// [criticalities] The level of importance that is assigned to the resources that are associated with a finding. Documented below.
  /// [descriptions] A finding's description. Documented below.
  /// [firstObservedAts] A timestamp that indicates when the potential security issue captured by a finding was first observed by the security findings product. Documented below.
  /// [generatorIds] The identifier for the solution-specific component that generated a finding. Documented below.
  /// [ids] The product-specific identifier for a finding. Documented below.
  /// [lastObservedAts] A timestamp that indicates when the potential security issue captured by a finding was most recently observed by the security findings product. Documented below.
  /// [noteTexts] The text of a user-defined note that's added to a finding. Documented below.
  /// [noteUpdatedAts] The timestamp of when the note was updated. Documented below.
  /// [noteUpdatedBies] The principal that created a note. Documented below.
  /// [productArns] The Amazon Resource Name (ARN) for a third-party product that generated a finding in Security Hub. Documented below.
  /// [productNames] Provides the name of the product that generated the finding. For control-based findings, the product name is Security Hub. Documented below.
  /// [recordStates] Provides the current state of a finding. Documented below.
  /// [relatedFindingsIds] The product-generated identifier for a related finding.  Documented below.
  /// [relatedFindingsProductArns] The ARN for the product that generated a related finding. Documented below.
  /// [resourceApplicationArns] The Amazon Resource Name (ARN) of the application that is related to a finding. Documented below.
  /// [resourceApplicationNames] The name of the application that is related to a finding. Documented below.
  /// [resourceDetailsOthers] Custom fields and values about the resource that a finding pertains to. Documented below.
  /// [resourceIds] The identifier for the given resource type. For AWS resources that are identified by Amazon Resource Names (ARNs), this is the ARN. For AWS resources that lack ARNs, this is the identifier as defined by the AWS service that created the resource. For non-AWS resources, this is a unique identifier that is associated with the resource. Documented below.
  /// [resourcePartitions] The partition in which the resource that the finding pertains to is located. A partition is a group of AWS Regions. Each AWS account is scoped to one partition. Documented below.
  /// [resourceRegions] The AWS Region where the resource that a finding pertains to is located. Documented below.
  /// [resourceTags] A list of AWS tags associated with a resource at the time the finding was processed. Documented below.
  /// [resourceTypes] The type of resource that the finding pertains to. Documented below.
  /// [severityLabels] The severity value of the finding. Documented below.
  /// [sourceUrls] Provides a URL that links to a page about the current finding in the finding product. Documented below.
  /// [titles] A finding's title. Documented below.
  /// [types] One or more finding types in the format of namespace/category/classifier that classify a finding. Documented below.
  /// [updatedAts] A timestamp that indicates when the finding record was most recently updated. Documented below.
  /// [userDefinedFields] A list of user-defined name and value string pairs added to a finding. Documented below.
  /// [verificationStates] Provides the veracity of a finding. Documented below.
  /// [workflowStatuses] Provides information about the status of the investigation into a finding. Documented below.
  AutomationRuleCriteria({
    this.awsAccountIds,
    this.awsAccountNames,
    this.companyNames,
    this.complianceAssociatedStandardsIds,
    this.complianceSecurityControlIds,
    this.complianceStatuses,
    this.confidences,
    this.createdAts,
    this.criticalities,
    this.descriptions,
    this.firstObservedAts,
    this.generatorIds,
    this.ids,
    this.lastObservedAts,
    this.noteTexts,
    this.noteUpdatedAts,
    this.noteUpdatedBies,
    this.productArns,
    this.productNames,
    this.recordStates,
    this.relatedFindingsIds,
    this.relatedFindingsProductArns,
    this.resourceApplicationArns,
    this.resourceApplicationNames,
    this.resourceDetailsOthers,
    this.resourceIds,
    this.resourcePartitions,
    this.resourceRegions,
    this.resourceTags,
    this.resourceTypes,
    this.severityLabels,
    this.sourceUrls,
    this.titles,
    this.types,
    this.updatedAts,
    this.userDefinedFields,
    this.verificationStates,
    this.workflowStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountIds': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaAwsAccountId>, List<Map<String, dynamic>>>(awsAccountIds, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaAwsAccountId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'awsAccountNames': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaAwsAccountName>, List<Map<String, dynamic>>>(awsAccountNames, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaAwsAccountName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'companyNames': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaCompanyName>, List<Map<String, dynamic>>>(companyNames, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaCompanyName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'complianceAssociatedStandardsIds': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaComplianceAssociatedStandardsId>, List<Map<String, dynamic>>>(complianceAssociatedStandardsIds, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaComplianceAssociatedStandardsId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'complianceSecurityControlIds': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaComplianceSecurityControlId>, List<Map<String, dynamic>>>(complianceSecurityControlIds, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaComplianceSecurityControlId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'complianceStatuses': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaComplianceStatus>, List<Map<String, dynamic>>>(complianceStatuses, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaComplianceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'confidences': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaConfidence>, List<Map<String, dynamic>>>(confidences, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaConfidence, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAts': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaCreatedAt>, List<Map<String, dynamic>>>(createdAts, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaCreatedAt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criticalities': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaCriticality>, List<Map<String, dynamic>>>(criticalities, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaCriticality, Map<String, dynamic>>(value, (value) => value.toMap())),
      'descriptions': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaDescription>, List<Map<String, dynamic>>>(descriptions, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firstObservedAts': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaFirstObservedAt>, List<Map<String, dynamic>>>(firstObservedAts, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaFirstObservedAt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'generatorIds': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaGeneratorId>, List<Map<String, dynamic>>>(generatorIds, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaGeneratorId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ids': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaId>, List<Map<String, dynamic>>>(ids, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastObservedAts': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaLastObservedAt>, List<Map<String, dynamic>>>(lastObservedAts, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaLastObservedAt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'noteTexts': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaNoteText>, List<Map<String, dynamic>>>(noteTexts, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaNoteText, Map<String, dynamic>>(value, (value) => value.toMap())),
      'noteUpdatedAts': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaNoteUpdatedAt>, List<Map<String, dynamic>>>(noteUpdatedAts, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaNoteUpdatedAt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'noteUpdatedBies': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaNoteUpdatedBy>, List<Map<String, dynamic>>>(noteUpdatedBies, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaNoteUpdatedBy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productArns': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaProductArn>, List<Map<String, dynamic>>>(productArns, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaProductArn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productNames': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaProductName>, List<Map<String, dynamic>>>(productNames, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaProductName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordStates': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaRecordState>, List<Map<String, dynamic>>>(recordStates, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaRecordState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relatedFindingsIds': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaRelatedFindingsId>, List<Map<String, dynamic>>>(relatedFindingsIds, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaRelatedFindingsId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relatedFindingsProductArns': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaRelatedFindingsProductArn>, List<Map<String, dynamic>>>(relatedFindingsProductArns, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaRelatedFindingsProductArn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceApplicationArns': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaResourceApplicationArn>, List<Map<String, dynamic>>>(resourceApplicationArns, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaResourceApplicationArn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceApplicationNames': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaResourceApplicationName>, List<Map<String, dynamic>>>(resourceApplicationNames, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaResourceApplicationName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceDetailsOthers': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaResourceDetailsOther>, List<Map<String, dynamic>>>(resourceDetailsOthers, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaResourceDetailsOther, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceIds': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaResourceId>, List<Map<String, dynamic>>>(resourceIds, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaResourceId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourcePartitions': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaResourcePartition>, List<Map<String, dynamic>>>(resourcePartitions, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaResourcePartition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRegions': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaResourceRegion>, List<Map<String, dynamic>>>(resourceRegions, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaResourceRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceTags': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaResourceTag>, List<Map<String, dynamic>>>(resourceTags, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceTypes': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaResourceType>, List<Map<String, dynamic>>>(resourceTypes, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaResourceType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severityLabels': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaSeverityLabel>, List<Map<String, dynamic>>>(severityLabels, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaSeverityLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceUrls': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaSourceUrl>, List<Map<String, dynamic>>>(sourceUrls, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaSourceUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'titles': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaTitle>, List<Map<String, dynamic>>>(titles, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaTitle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'types': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaType>, List<Map<String, dynamic>>>(types, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAts': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaUpdatedAt>, List<Map<String, dynamic>>>(updatedAts, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaUpdatedAt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userDefinedFields': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaUserDefinedField>, List<Map<String, dynamic>>>(userDefinedFields, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaUserDefinedField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'verificationStates': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaVerificationState>, List<Map<String, dynamic>>>(verificationStates, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaVerificationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workflowStatuses': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleCriteriaWorkflowStatus>, List<Map<String, dynamic>>>(workflowStatuses, (value) => pulumi.Input.encodeList<AutomationRuleCriteriaWorkflowStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutomationRuleCriteria.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteria(
      awsAccountIds: map['awsAccountIds'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaAwsAccountId>(map['awsAccountIds'], (value) => AutomationRuleCriteriaAwsAccountId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      awsAccountNames: map['awsAccountNames'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaAwsAccountName>(map['awsAccountNames'], (value) => AutomationRuleCriteriaAwsAccountName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      companyNames: map['companyNames'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaCompanyName>(map['companyNames'], (value) => AutomationRuleCriteriaCompanyName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      complianceAssociatedStandardsIds: map['complianceAssociatedStandardsIds'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaComplianceAssociatedStandardsId>(map['complianceAssociatedStandardsIds'], (value) => AutomationRuleCriteriaComplianceAssociatedStandardsId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      complianceSecurityControlIds: map['complianceSecurityControlIds'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaComplianceSecurityControlId>(map['complianceSecurityControlIds'], (value) => AutomationRuleCriteriaComplianceSecurityControlId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      complianceStatuses: map['complianceStatuses'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaComplianceStatus>(map['complianceStatuses'], (value) => AutomationRuleCriteriaComplianceStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      confidences: map['confidences'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaConfidence>(map['confidences'], (value) => AutomationRuleCriteriaConfidence.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAts: map['createdAts'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaCreatedAt>(map['createdAts'], (value) => AutomationRuleCriteriaCreatedAt.fromMap((value as Map).cast<String, dynamic>()))).input(),
      criticalities: map['criticalities'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaCriticality>(map['criticalities'], (value) => AutomationRuleCriteriaCriticality.fromMap((value as Map).cast<String, dynamic>()))).input(),
      descriptions: map['descriptions'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaDescription>(map['descriptions'], (value) => AutomationRuleCriteriaDescription.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firstObservedAts: map['firstObservedAts'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaFirstObservedAt>(map['firstObservedAts'], (value) => AutomationRuleCriteriaFirstObservedAt.fromMap((value as Map).cast<String, dynamic>()))).input(),
      generatorIds: map['generatorIds'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaGeneratorId>(map['generatorIds'], (value) => AutomationRuleCriteriaGeneratorId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ids: map['ids'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaId>(map['ids'], (value) => AutomationRuleCriteriaId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastObservedAts: map['lastObservedAts'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaLastObservedAt>(map['lastObservedAts'], (value) => AutomationRuleCriteriaLastObservedAt.fromMap((value as Map).cast<String, dynamic>()))).input(),
      noteTexts: map['noteTexts'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaNoteText>(map['noteTexts'], (value) => AutomationRuleCriteriaNoteText.fromMap((value as Map).cast<String, dynamic>()))).input(),
      noteUpdatedAts: map['noteUpdatedAts'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaNoteUpdatedAt>(map['noteUpdatedAts'], (value) => AutomationRuleCriteriaNoteUpdatedAt.fromMap((value as Map).cast<String, dynamic>()))).input(),
      noteUpdatedBies: map['noteUpdatedBies'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaNoteUpdatedBy>(map['noteUpdatedBies'], (value) => AutomationRuleCriteriaNoteUpdatedBy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      productArns: map['productArns'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaProductArn>(map['productArns'], (value) => AutomationRuleCriteriaProductArn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      productNames: map['productNames'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaProductName>(map['productNames'], (value) => AutomationRuleCriteriaProductName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recordStates: map['recordStates'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaRecordState>(map['recordStates'], (value) => AutomationRuleCriteriaRecordState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      relatedFindingsIds: map['relatedFindingsIds'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaRelatedFindingsId>(map['relatedFindingsIds'], (value) => AutomationRuleCriteriaRelatedFindingsId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      relatedFindingsProductArns: map['relatedFindingsProductArns'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaRelatedFindingsProductArn>(map['relatedFindingsProductArns'], (value) => AutomationRuleCriteriaRelatedFindingsProductArn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceApplicationArns: map['resourceApplicationArns'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaResourceApplicationArn>(map['resourceApplicationArns'], (value) => AutomationRuleCriteriaResourceApplicationArn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceApplicationNames: map['resourceApplicationNames'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaResourceApplicationName>(map['resourceApplicationNames'], (value) => AutomationRuleCriteriaResourceApplicationName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceDetailsOthers: map['resourceDetailsOthers'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaResourceDetailsOther>(map['resourceDetailsOthers'], (value) => AutomationRuleCriteriaResourceDetailsOther.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceIds: map['resourceIds'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaResourceId>(map['resourceIds'], (value) => AutomationRuleCriteriaResourceId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourcePartitions: map['resourcePartitions'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaResourcePartition>(map['resourcePartitions'], (value) => AutomationRuleCriteriaResourcePartition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceRegions: map['resourceRegions'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaResourceRegion>(map['resourceRegions'], (value) => AutomationRuleCriteriaResourceRegion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceTags: map['resourceTags'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaResourceTag>(map['resourceTags'], (value) => AutomationRuleCriteriaResourceTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceTypes: map['resourceTypes'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaResourceType>(map['resourceTypes'], (value) => AutomationRuleCriteriaResourceType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      severityLabels: map['severityLabels'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaSeverityLabel>(map['severityLabels'], (value) => AutomationRuleCriteriaSeverityLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceUrls: map['sourceUrls'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaSourceUrl>(map['sourceUrls'], (value) => AutomationRuleCriteriaSourceUrl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      titles: map['titles'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaTitle>(map['titles'], (value) => AutomationRuleCriteriaTitle.fromMap((value as Map).cast<String, dynamic>()))).input(),
      types: map['types'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaType>(map['types'], (value) => AutomationRuleCriteriaType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updatedAts: map['updatedAts'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaUpdatedAt>(map['updatedAts'], (value) => AutomationRuleCriteriaUpdatedAt.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userDefinedFields: map['userDefinedFields'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaUserDefinedField>(map['userDefinedFields'], (value) => AutomationRuleCriteriaUserDefinedField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      verificationStates: map['verificationStates'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaVerificationState>(map['verificationStates'], (value) => AutomationRuleCriteriaVerificationState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workflowStatuses: map['workflowStatuses'] == null ? null : (pulumi.Input.decodeList<AutomationRuleCriteriaWorkflowStatus>(map['workflowStatuses'], (value) => AutomationRuleCriteriaWorkflowStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

