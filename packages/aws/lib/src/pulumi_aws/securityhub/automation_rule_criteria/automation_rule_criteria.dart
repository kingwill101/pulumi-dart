// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../automation_rule_criteria_aws_account_id/automation_rule_criteria_aws_account_id.dart';
import '../automation_rule_criteria_aws_account_name/automation_rule_criteria_aws_account_name.dart';
import '../automation_rule_criteria_company_name/automation_rule_criteria_company_name.dart';
import '../automation_rule_criteria_compliance_associated_standards_id/automation_rule_criteria_compliance_associated_standards_id.dart';
import '../automation_rule_criteria_compliance_security_control_id/automation_rule_criteria_compliance_security_control_id.dart';
import '../automation_rule_criteria_compliance_status/automation_rule_criteria_compliance_status.dart';
import '../automation_rule_criteria_confidence/automation_rule_criteria_confidence.dart';
import '../automation_rule_criteria_created_at/automation_rule_criteria_created_at.dart';
import '../automation_rule_criteria_criticality/automation_rule_criteria_criticality.dart';
import '../automation_rule_criteria_description/automation_rule_criteria_description.dart';
import '../automation_rule_criteria_first_observed_at/automation_rule_criteria_first_observed_at.dart';
import '../automation_rule_criteria_generator_id/automation_rule_criteria_generator_id.dart';
import '../automation_rule_criteria_id/automation_rule_criteria_id.dart';
import '../automation_rule_criteria_last_observed_at/automation_rule_criteria_last_observed_at.dart';
import '../automation_rule_criteria_note_text/automation_rule_criteria_note_text.dart';
import '../automation_rule_criteria_note_updated_at/automation_rule_criteria_note_updated_at.dart';
import '../automation_rule_criteria_note_updated_by/automation_rule_criteria_note_updated_by.dart';
import '../automation_rule_criteria_product_arn/automation_rule_criteria_product_arn.dart';
import '../automation_rule_criteria_product_name/automation_rule_criteria_product_name.dart';
import '../automation_rule_criteria_record_state/automation_rule_criteria_record_state.dart';
import '../automation_rule_criteria_related_findings_id/automation_rule_criteria_related_findings_id.dart';
import '../automation_rule_criteria_related_findings_product_arn/automation_rule_criteria_related_findings_product_arn.dart';
import '../automation_rule_criteria_resource_application_arn/automation_rule_criteria_resource_application_arn.dart';
import '../automation_rule_criteria_resource_application_name/automation_rule_criteria_resource_application_name.dart';
import '../automation_rule_criteria_resource_details_other/automation_rule_criteria_resource_details_other.dart';
import '../automation_rule_criteria_resource_id/automation_rule_criteria_resource_id.dart';
import '../automation_rule_criteria_resource_partition/automation_rule_criteria_resource_partition.dart';
import '../automation_rule_criteria_resource_region/automation_rule_criteria_resource_region.dart';
import '../automation_rule_criteria_resource_tag/automation_rule_criteria_resource_tag.dart';
import '../automation_rule_criteria_resource_type/automation_rule_criteria_resource_type.dart';
import '../automation_rule_criteria_severity_label/automation_rule_criteria_severity_label.dart';
import '../automation_rule_criteria_source_url/automation_rule_criteria_source_url.dart';
import '../automation_rule_criteria_title/automation_rule_criteria_title.dart';
import '../automation_rule_criteria_type/automation_rule_criteria_type.dart';
import '../automation_rule_criteria_updated_at/automation_rule_criteria_updated_at.dart';
import '../automation_rule_criteria_user_defined_field/automation_rule_criteria_user_defined_field.dart';
import '../automation_rule_criteria_verification_state/automation_rule_criteria_verification_state.dart';
import '../automation_rule_criteria_workflow_status/automation_rule_criteria_workflow_status.dart';

class AutomationRuleCriteria {
  /// The AWS account ID in which a finding was generated. Documented below.
  final List<AutomationRuleCriteriaAwsAccountId>? awsAccountIds;

  /// The name of the AWS account in which a finding was generated. Documented below.
  final List<AutomationRuleCriteriaAwsAccountName>? awsAccountNames;

  /// The name of the company for the product that generated the finding. For control-based findings, the company is AWS. Documented below.
  final List<AutomationRuleCriteriaCompanyName>? companyNames;

  /// The unique identifier of a standard in which a control is enabled. Documented below.
  final List<AutomationRuleCriteriaComplianceAssociatedStandardsId>?
      complianceAssociatedStandardsIds;

  /// The security control ID for which a finding was generated. Security control IDs are the same across standards. Documented below.
  final List<AutomationRuleCriteriaComplianceSecurityControlId>?
      complianceSecurityControlIds;

  /// The result of a security check. This field is only used for findings generated from controls. Documented below.
  final List<AutomationRuleCriteriaComplianceStatus>? complianceStatuses;

  /// The likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. `Confidence` is scored on a 0–100 basis using a ratio scale. A value of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> means 0 percent confidence, and a value of <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> means 100 percent confidence. Documented below.
  final List<AutomationRuleCriteriaConfidence>? confidences;

  /// A timestamp that indicates when this finding record was created. Documented below.
  final List<AutomationRuleCriteriaCreatedAt>? createdAts;

  /// The level of importance that is assigned to the resources that are associated with a finding. Documented below.
  final List<AutomationRuleCriteriaCriticality>? criticalities;

  /// A finding's description. Documented below.
  final List<AutomationRuleCriteriaDescription>? descriptions;

  /// A timestamp that indicates when the potential security issue captured by a finding was first observed by the security findings product. Documented below.
  final List<AutomationRuleCriteriaFirstObservedAt>? firstObservedAts;

  /// The identifier for the solution-specific component that generated a finding. Documented below.
  final List<AutomationRuleCriteriaGeneratorId>? generatorIds;

  /// The product-specific identifier for a finding. Documented below.
  final List<AutomationRuleCriteriaId>? ids;

  /// A timestamp that indicates when the potential security issue captured by a finding was most recently observed by the security findings product. Documented below.
  final List<AutomationRuleCriteriaLastObservedAt>? lastObservedAts;

  /// The text of a user-defined note that's added to a finding. Documented below.
  final List<AutomationRuleCriteriaNoteText>? noteTexts;

  /// The timestamp of when the note was updated. Documented below.
  final List<AutomationRuleCriteriaNoteUpdatedAt>? noteUpdatedAts;

  /// The principal that created a note. Documented below.
  final List<AutomationRuleCriteriaNoteUpdatedBy>? noteUpdatedBies;

  /// The Amazon Resource Name (ARN) for a third-party product that generated a finding in Security Hub. Documented below.
  final List<AutomationRuleCriteriaProductArn>? productArns;

  /// Provides the name of the product that generated the finding. For control-based findings, the product name is Security Hub. Documented below.
  final List<AutomationRuleCriteriaProductName>? productNames;

  /// Provides the current state of a finding. Documented below.
  final List<AutomationRuleCriteriaRecordState>? recordStates;

  /// The product-generated identifier for a related finding.  Documented below.
  final List<AutomationRuleCriteriaRelatedFindingsId>? relatedFindingsIds;

  /// The ARN for the product that generated a related finding. Documented below.
  final List<AutomationRuleCriteriaRelatedFindingsProductArn>?
      relatedFindingsProductArns;

  /// The Amazon Resource Name (ARN) of the application that is related to a finding. Documented below.
  final List<AutomationRuleCriteriaResourceApplicationArn>?
      resourceApplicationArns;

  /// The name of the application that is related to a finding. Documented below.
  final List<AutomationRuleCriteriaResourceApplicationName>?
      resourceApplicationNames;

  /// Custom fields and values about the resource that a finding pertains to. Documented below.
  final List<AutomationRuleCriteriaResourceDetailsOther>? resourceDetailsOthers;

  /// The identifier for the given resource type. For AWS resources that are identified by Amazon Resource Names (ARNs), this is the ARN. For AWS resources that lack ARNs, this is the identifier as defined by the AWS service that created the resource. For non-AWS resources, this is a unique identifier that is associated with the resource. Documented below.
  final List<AutomationRuleCriteriaResourceId>? resourceIds;

  /// The partition in which the resource that the finding pertains to is located. A partition is a group of AWS Regions. Each AWS account is scoped to one partition. Documented below.
  final List<AutomationRuleCriteriaResourcePartition>? resourcePartitions;

  /// The AWS Region where the resource that a finding pertains to is located. Documented below.
  final List<AutomationRuleCriteriaResourceRegion>? resourceRegions;

  /// A list of AWS tags associated with a resource at the time the finding was processed. Documented below.
  final List<AutomationRuleCriteriaResourceTag>? resourceTags;

  /// The type of resource that the finding pertains to. Documented below.
  final List<AutomationRuleCriteriaResourceType>? resourceTypes;

  /// The severity value of the finding. Documented below.
  final List<AutomationRuleCriteriaSeverityLabel>? severityLabels;

  /// Provides a URL that links to a page about the current finding in the finding product. Documented below.
  final List<AutomationRuleCriteriaSourceUrl>? sourceUrls;

  /// A finding's title. Documented below.
  final List<AutomationRuleCriteriaTitle>? titles;

  /// One or more finding types in the format of namespace/category/classifier that classify a finding. Documented below.
  final List<AutomationRuleCriteriaType>? types;

  /// A timestamp that indicates when the finding record was most recently updated. Documented below.
  final List<AutomationRuleCriteriaUpdatedAt>? updatedAts;

  /// A list of user-defined name and value string pairs added to a finding. Documented below.
  final List<AutomationRuleCriteriaUserDefinedField>? userDefinedFields;

  /// Provides the veracity of a finding. Documented below.
  final List<AutomationRuleCriteriaVerificationState>? verificationStates;

  /// Provides information about the status of the investigation into a finding. Documented below.
  final List<AutomationRuleCriteriaWorkflowStatus>? workflowStatuses;

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
    final map = <String, dynamic>{};
    final awsAccountIdsValue = awsAccountIds;
    if (awsAccountIdsValue != null) {
      map['awsAccountIds'] = Input.encodeList<
          AutomationRuleCriteriaAwsAccountId,
          Map<String, dynamic>>(awsAccountIdsValue, (value) => value.toMap());
    }
    final awsAccountNamesValue = awsAccountNames;
    if (awsAccountNamesValue != null) {
      map['awsAccountNames'] = Input.encodeList<
          AutomationRuleCriteriaAwsAccountName,
          Map<String, dynamic>>(awsAccountNamesValue, (value) => value.toMap());
    }
    final companyNamesValue = companyNames;
    if (companyNamesValue != null) {
      map['companyNames'] = Input.encodeList<AutomationRuleCriteriaCompanyName,
          Map<String, dynamic>>(companyNamesValue, (value) => value.toMap());
    }
    final complianceAssociatedStandardsIdsValue =
        complianceAssociatedStandardsIds;
    if (complianceAssociatedStandardsIdsValue != null) {
      map['complianceAssociatedStandardsIds'] = Input.encodeList<
              AutomationRuleCriteriaComplianceAssociatedStandardsId,
              Map<String, dynamic>>(
          complianceAssociatedStandardsIdsValue, (value) => value.toMap());
    }
    final complianceSecurityControlIdsValue = complianceSecurityControlIds;
    if (complianceSecurityControlIdsValue != null) {
      map['complianceSecurityControlIds'] = Input.encodeList<
              AutomationRuleCriteriaComplianceSecurityControlId,
              Map<String, dynamic>>(
          complianceSecurityControlIdsValue, (value) => value.toMap());
    }
    final complianceStatusesValue = complianceStatuses;
    if (complianceStatusesValue != null) {
      map['complianceStatuses'] = Input.encodeList<
              AutomationRuleCriteriaComplianceStatus, Map<String, dynamic>>(
          complianceStatusesValue, (value) => value.toMap());
    }
    final confidencesValue = confidences;
    if (confidencesValue != null) {
      map['confidences'] = Input.encodeList<AutomationRuleCriteriaConfidence,
          Map<String, dynamic>>(confidencesValue, (value) => value.toMap());
    }
    final createdAtsValue = createdAts;
    if (createdAtsValue != null) {
      map['createdAts'] = Input.encodeList<AutomationRuleCriteriaCreatedAt,
          Map<String, dynamic>>(createdAtsValue, (value) => value.toMap());
    }
    final criticalitiesValue = criticalities;
    if (criticalitiesValue != null) {
      map['criticalities'] = Input.encodeList<AutomationRuleCriteriaCriticality,
          Map<String, dynamic>>(criticalitiesValue, (value) => value.toMap());
    }
    final descriptionsValue = descriptions;
    if (descriptionsValue != null) {
      map['descriptions'] = Input.encodeList<AutomationRuleCriteriaDescription,
          Map<String, dynamic>>(descriptionsValue, (value) => value.toMap());
    }
    final firstObservedAtsValue = firstObservedAts;
    if (firstObservedAtsValue != null) {
      map['firstObservedAts'] = Input.encodeList<
              AutomationRuleCriteriaFirstObservedAt, Map<String, dynamic>>(
          firstObservedAtsValue, (value) => value.toMap());
    }
    final generatorIdsValue = generatorIds;
    if (generatorIdsValue != null) {
      map['generatorIds'] = Input.encodeList<AutomationRuleCriteriaGeneratorId,
          Map<String, dynamic>>(generatorIdsValue, (value) => value.toMap());
    }
    final idsValue = ids;
    if (idsValue != null) {
      map['ids'] =
          Input.encodeList<AutomationRuleCriteriaId, Map<String, dynamic>>(
              idsValue, (value) => value.toMap());
    }
    final lastObservedAtsValue = lastObservedAts;
    if (lastObservedAtsValue != null) {
      map['lastObservedAts'] = Input.encodeList<
          AutomationRuleCriteriaLastObservedAt,
          Map<String, dynamic>>(lastObservedAtsValue, (value) => value.toMap());
    }
    final noteTextsValue = noteTexts;
    if (noteTextsValue != null) {
      map['noteTexts'] = Input.encodeList<AutomationRuleCriteriaNoteText,
          Map<String, dynamic>>(noteTextsValue, (value) => value.toMap());
    }
    final noteUpdatedAtsValue = noteUpdatedAts;
    if (noteUpdatedAtsValue != null) {
      map['noteUpdatedAts'] = Input.encodeList<
          AutomationRuleCriteriaNoteUpdatedAt,
          Map<String, dynamic>>(noteUpdatedAtsValue, (value) => value.toMap());
    }
    final noteUpdatedBiesValue = noteUpdatedBies;
    if (noteUpdatedBiesValue != null) {
      map['noteUpdatedBies'] = Input.encodeList<
          AutomationRuleCriteriaNoteUpdatedBy,
          Map<String, dynamic>>(noteUpdatedBiesValue, (value) => value.toMap());
    }
    final productArnsValue = productArns;
    if (productArnsValue != null) {
      map['productArns'] = Input.encodeList<AutomationRuleCriteriaProductArn,
          Map<String, dynamic>>(productArnsValue, (value) => value.toMap());
    }
    final productNamesValue = productNames;
    if (productNamesValue != null) {
      map['productNames'] = Input.encodeList<AutomationRuleCriteriaProductName,
          Map<String, dynamic>>(productNamesValue, (value) => value.toMap());
    }
    final recordStatesValue = recordStates;
    if (recordStatesValue != null) {
      map['recordStates'] = Input.encodeList<AutomationRuleCriteriaRecordState,
          Map<String, dynamic>>(recordStatesValue, (value) => value.toMap());
    }
    final relatedFindingsIdsValue = relatedFindingsIds;
    if (relatedFindingsIdsValue != null) {
      map['relatedFindingsIds'] = Input.encodeList<
              AutomationRuleCriteriaRelatedFindingsId, Map<String, dynamic>>(
          relatedFindingsIdsValue, (value) => value.toMap());
    }
    final relatedFindingsProductArnsValue = relatedFindingsProductArns;
    if (relatedFindingsProductArnsValue != null) {
      map['relatedFindingsProductArns'] = Input.encodeList<
              AutomationRuleCriteriaRelatedFindingsProductArn,
              Map<String, dynamic>>(
          relatedFindingsProductArnsValue, (value) => value.toMap());
    }
    final resourceApplicationArnsValue = resourceApplicationArns;
    if (resourceApplicationArnsValue != null) {
      map['resourceApplicationArns'] = Input.encodeList<
              AutomationRuleCriteriaResourceApplicationArn,
              Map<String, dynamic>>(
          resourceApplicationArnsValue, (value) => value.toMap());
    }
    final resourceApplicationNamesValue = resourceApplicationNames;
    if (resourceApplicationNamesValue != null) {
      map['resourceApplicationNames'] = Input.encodeList<
              AutomationRuleCriteriaResourceApplicationName,
              Map<String, dynamic>>(
          resourceApplicationNamesValue, (value) => value.toMap());
    }
    final resourceDetailsOthersValue = resourceDetailsOthers;
    if (resourceDetailsOthersValue != null) {
      map['resourceDetailsOthers'] = Input.encodeList<
              AutomationRuleCriteriaResourceDetailsOther, Map<String, dynamic>>(
          resourceDetailsOthersValue, (value) => value.toMap());
    }
    final resourceIdsValue = resourceIds;
    if (resourceIdsValue != null) {
      map['resourceIds'] = Input.encodeList<AutomationRuleCriteriaResourceId,
          Map<String, dynamic>>(resourceIdsValue, (value) => value.toMap());
    }
    final resourcePartitionsValue = resourcePartitions;
    if (resourcePartitionsValue != null) {
      map['resourcePartitions'] = Input.encodeList<
              AutomationRuleCriteriaResourcePartition, Map<String, dynamic>>(
          resourcePartitionsValue, (value) => value.toMap());
    }
    final resourceRegionsValue = resourceRegions;
    if (resourceRegionsValue != null) {
      map['resourceRegions'] = Input.encodeList<
          AutomationRuleCriteriaResourceRegion,
          Map<String, dynamic>>(resourceRegionsValue, (value) => value.toMap());
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = Input.encodeList<AutomationRuleCriteriaResourceTag,
          Map<String, dynamic>>(resourceTagsValue, (value) => value.toMap());
    }
    final resourceTypesValue = resourceTypes;
    if (resourceTypesValue != null) {
      map['resourceTypes'] = Input.encodeList<
          AutomationRuleCriteriaResourceType,
          Map<String, dynamic>>(resourceTypesValue, (value) => value.toMap());
    }
    final severityLabelsValue = severityLabels;
    if (severityLabelsValue != null) {
      map['severityLabels'] = Input.encodeList<
          AutomationRuleCriteriaSeverityLabel,
          Map<String, dynamic>>(severityLabelsValue, (value) => value.toMap());
    }
    final sourceUrlsValue = sourceUrls;
    if (sourceUrlsValue != null) {
      map['sourceUrls'] = Input.encodeList<AutomationRuleCriteriaSourceUrl,
          Map<String, dynamic>>(sourceUrlsValue, (value) => value.toMap());
    }
    final titlesValue = titles;
    if (titlesValue != null) {
      map['titles'] =
          Input.encodeList<AutomationRuleCriteriaTitle, Map<String, dynamic>>(
              titlesValue, (value) => value.toMap());
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] =
          Input.encodeList<AutomationRuleCriteriaType, Map<String, dynamic>>(
              typesValue, (value) => value.toMap());
    }
    final updatedAtsValue = updatedAts;
    if (updatedAtsValue != null) {
      map['updatedAts'] = Input.encodeList<AutomationRuleCriteriaUpdatedAt,
          Map<String, dynamic>>(updatedAtsValue, (value) => value.toMap());
    }
    final userDefinedFieldsValue = userDefinedFields;
    if (userDefinedFieldsValue != null) {
      map['userDefinedFields'] = Input.encodeList<
              AutomationRuleCriteriaUserDefinedField, Map<String, dynamic>>(
          userDefinedFieldsValue, (value) => value.toMap());
    }
    final verificationStatesValue = verificationStates;
    if (verificationStatesValue != null) {
      map['verificationStates'] = Input.encodeList<
              AutomationRuleCriteriaVerificationState, Map<String, dynamic>>(
          verificationStatesValue, (value) => value.toMap());
    }
    final workflowStatusesValue = workflowStatuses;
    if (workflowStatusesValue != null) {
      map['workflowStatuses'] = Input.encodeList<
              AutomationRuleCriteriaWorkflowStatus, Map<String, dynamic>>(
          workflowStatusesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AutomationRuleCriteria.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteria(
      awsAccountIds: map['awsAccountIds'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaAwsAccountId>(
              map['awsAccountIds'],
              (value) => AutomationRuleCriteriaAwsAccountId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      awsAccountNames: map['awsAccountNames'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaAwsAccountName>(
              map['awsAccountNames'],
              (value) => AutomationRuleCriteriaAwsAccountName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      companyNames: map['companyNames'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaCompanyName>(
              map['companyNames'],
              (value) => AutomationRuleCriteriaCompanyName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      complianceAssociatedStandardsIds:
          map['complianceAssociatedStandardsIds'] == null
              ? null
              : Input.decodeList<
                      AutomationRuleCriteriaComplianceAssociatedStandardsId>(
                  map['complianceAssociatedStandardsIds'],
                  (value) =>
                      AutomationRuleCriteriaComplianceAssociatedStandardsId
                          .fromMap((value as Map).cast<String, dynamic>())),
      complianceSecurityControlIds: map['complianceSecurityControlIds'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaComplianceSecurityControlId>(
              map['complianceSecurityControlIds'],
              (value) =>
                  AutomationRuleCriteriaComplianceSecurityControlId.fromMap(
                      (value as Map).cast<String, dynamic>())),
      complianceStatuses: map['complianceStatuses'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaComplianceStatus>(
              map['complianceStatuses'],
              (value) => AutomationRuleCriteriaComplianceStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
      confidences: map['confidences'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaConfidence>(
              map['confidences'],
              (value) => AutomationRuleCriteriaConfidence.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createdAts: map['createdAts'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaCreatedAt>(
              map['createdAts'],
              (value) => AutomationRuleCriteriaCreatedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      criticalities: map['criticalities'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaCriticality>(
              map['criticalities'],
              (value) => AutomationRuleCriteriaCriticality.fromMap(
                  (value as Map).cast<String, dynamic>())),
      descriptions: map['descriptions'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaDescription>(
              map['descriptions'],
              (value) => AutomationRuleCriteriaDescription.fromMap(
                  (value as Map).cast<String, dynamic>())),
      firstObservedAts: map['firstObservedAts'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaFirstObservedAt>(
              map['firstObservedAts'],
              (value) => AutomationRuleCriteriaFirstObservedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      generatorIds: map['generatorIds'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaGeneratorId>(
              map['generatorIds'],
              (value) => AutomationRuleCriteriaGeneratorId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ids: map['ids'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaId>(
              map['ids'],
              (value) => AutomationRuleCriteriaId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lastObservedAts: map['lastObservedAts'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaLastObservedAt>(
              map['lastObservedAts'],
              (value) => AutomationRuleCriteriaLastObservedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      noteTexts: map['noteTexts'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaNoteText>(
              map['noteTexts'],
              (value) => AutomationRuleCriteriaNoteText.fromMap(
                  (value as Map).cast<String, dynamic>())),
      noteUpdatedAts: map['noteUpdatedAts'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaNoteUpdatedAt>(
              map['noteUpdatedAts'],
              (value) => AutomationRuleCriteriaNoteUpdatedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      noteUpdatedBies: map['noteUpdatedBies'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaNoteUpdatedBy>(
              map['noteUpdatedBies'],
              (value) => AutomationRuleCriteriaNoteUpdatedBy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      productArns: map['productArns'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaProductArn>(
              map['productArns'],
              (value) => AutomationRuleCriteriaProductArn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      productNames: map['productNames'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaProductName>(
              map['productNames'],
              (value) => AutomationRuleCriteriaProductName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      recordStates: map['recordStates'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaRecordState>(
              map['recordStates'],
              (value) => AutomationRuleCriteriaRecordState.fromMap(
                  (value as Map).cast<String, dynamic>())),
      relatedFindingsIds: map['relatedFindingsIds'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaRelatedFindingsId>(
              map['relatedFindingsIds'],
              (value) => AutomationRuleCriteriaRelatedFindingsId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      relatedFindingsProductArns: map['relatedFindingsProductArns'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaRelatedFindingsProductArn>(
              map['relatedFindingsProductArns'],
              (value) =>
                  AutomationRuleCriteriaRelatedFindingsProductArn.fromMap(
                      (value as Map).cast<String, dynamic>())),
      resourceApplicationArns: map['resourceApplicationArns'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaResourceApplicationArn>(
              map['resourceApplicationArns'],
              (value) => AutomationRuleCriteriaResourceApplicationArn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceApplicationNames: map['resourceApplicationNames'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaResourceApplicationName>(
              map['resourceApplicationNames'],
              (value) => AutomationRuleCriteriaResourceApplicationName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceDetailsOthers: map['resourceDetailsOthers'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaResourceDetailsOther>(
              map['resourceDetailsOthers'],
              (value) => AutomationRuleCriteriaResourceDetailsOther.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceIds: map['resourceIds'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaResourceId>(
              map['resourceIds'],
              (value) => AutomationRuleCriteriaResourceId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourcePartitions: map['resourcePartitions'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaResourcePartition>(
              map['resourcePartitions'],
              (value) => AutomationRuleCriteriaResourcePartition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceRegions: map['resourceRegions'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaResourceRegion>(
              map['resourceRegions'],
              (value) => AutomationRuleCriteriaResourceRegion.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceTags: map['resourceTags'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaResourceTag>(
              map['resourceTags'],
              (value) => AutomationRuleCriteriaResourceTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceTypes: map['resourceTypes'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaResourceType>(
              map['resourceTypes'],
              (value) => AutomationRuleCriteriaResourceType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      severityLabels: map['severityLabels'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaSeverityLabel>(
              map['severityLabels'],
              (value) => AutomationRuleCriteriaSeverityLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceUrls: map['sourceUrls'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaSourceUrl>(
              map['sourceUrls'],
              (value) => AutomationRuleCriteriaSourceUrl.fromMap(
                  (value as Map).cast<String, dynamic>())),
      titles: map['titles'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaTitle>(
              map['titles'],
              (value) => AutomationRuleCriteriaTitle.fromMap(
                  (value as Map).cast<String, dynamic>())),
      types: map['types'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaType>(
              map['types'],
              (value) => AutomationRuleCriteriaType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updatedAts: map['updatedAts'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaUpdatedAt>(
              map['updatedAts'],
              (value) => AutomationRuleCriteriaUpdatedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      userDefinedFields: map['userDefinedFields'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaUserDefinedField>(
              map['userDefinedFields'],
              (value) => AutomationRuleCriteriaUserDefinedField.fromMap(
                  (value as Map).cast<String, dynamic>())),
      verificationStates: map['verificationStates'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaVerificationState>(
              map['verificationStates'],
              (value) => AutomationRuleCriteriaVerificationState.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workflowStatuses: map['workflowStatuses'] == null
          ? null
          : Input.decodeList<AutomationRuleCriteriaWorkflowStatus>(
              map['workflowStatuses'],
              (value) => AutomationRuleCriteriaWorkflowStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
