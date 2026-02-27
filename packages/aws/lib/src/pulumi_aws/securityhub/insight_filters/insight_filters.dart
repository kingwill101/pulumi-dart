// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../insight_filters_aws_account_id/insight_filters_aws_account_id.dart';
import '../insight_filters_company_name/insight_filters_company_name.dart';
import '../insight_filters_compliance_status/insight_filters_compliance_status.dart';
import '../insight_filters_confidence/insight_filters_confidence.dart';
import '../insight_filters_created_at/insight_filters_created_at.dart';
import '../insight_filters_criticality/insight_filters_criticality.dart';
import '../insight_filters_description/insight_filters_description.dart';
import '../insight_filters_finding_provider_fields_confidence/insight_filters_finding_provider_fields_confidence.dart';
import '../insight_filters_finding_provider_fields_criticality/insight_filters_finding_provider_fields_criticality.dart';
import '../insight_filters_finding_provider_fields_related_findings_id/insight_filters_finding_provider_fields_related_findings_id.dart';
import '../insight_filters_finding_provider_fields_related_findings_product_arn/insight_filters_finding_provider_fields_related_findings_product_arn.dart';
import '../insight_filters_finding_provider_fields_severity_label/insight_filters_finding_provider_fields_severity_label.dart';
import '../insight_filters_finding_provider_fields_severity_original/insight_filters_finding_provider_fields_severity_original.dart';
import '../insight_filters_finding_provider_fields_type/insight_filters_finding_provider_fields_type.dart';
import '../insight_filters_first_observed_at/insight_filters_first_observed_at.dart';
import '../insight_filters_generator_id/insight_filters_generator_id.dart';
import '../insight_filters_id/insight_filters_id.dart';
import '../insight_filters_keyword/insight_filters_keyword.dart';
import '../insight_filters_last_observed_at/insight_filters_last_observed_at.dart';
import '../insight_filters_malware_name/insight_filters_malware_name.dart';
import '../insight_filters_malware_path/insight_filters_malware_path.dart';
import '../insight_filters_malware_state/insight_filters_malware_state.dart';
import '../insight_filters_malware_type/insight_filters_malware_type.dart';
import '../insight_filters_network_destination_domain/insight_filters_network_destination_domain.dart';
import '../insight_filters_network_destination_ipv4/insight_filters_network_destination_ipv4.dart';
import '../insight_filters_network_destination_ipv6/insight_filters_network_destination_ipv6.dart';
import '../insight_filters_network_destination_port/insight_filters_network_destination_port.dart';
import '../insight_filters_network_direction/insight_filters_network_direction.dart';
import '../insight_filters_network_protocol/insight_filters_network_protocol.dart';
import '../insight_filters_network_source_domain/insight_filters_network_source_domain.dart';
import '../insight_filters_network_source_ipv4/insight_filters_network_source_ipv4.dart';
import '../insight_filters_network_source_ipv6/insight_filters_network_source_ipv6.dart';
import '../insight_filters_network_source_mac/insight_filters_network_source_mac.dart';
import '../insight_filters_network_source_port/insight_filters_network_source_port.dart';
import '../insight_filters_note_text/insight_filters_note_text.dart';
import '../insight_filters_note_updated_at/insight_filters_note_updated_at.dart';
import '../insight_filters_note_updated_by/insight_filters_note_updated_by.dart';
import '../insight_filters_process_launched_at/insight_filters_process_launched_at.dart';
import '../insight_filters_process_name/insight_filters_process_name.dart';
import '../insight_filters_process_parent_pid/insight_filters_process_parent_pid.dart';
import '../insight_filters_process_path/insight_filters_process_path.dart';
import '../insight_filters_process_pid/insight_filters_process_pid.dart';
import '../insight_filters_process_terminated_at/insight_filters_process_terminated_at.dart';
import '../insight_filters_product_arn/insight_filters_product_arn.dart';
import '../insight_filters_product_field/insight_filters_product_field.dart';
import '../insight_filters_product_name/insight_filters_product_name.dart';
import '../insight_filters_recommendation_text/insight_filters_recommendation_text.dart';
import '../insight_filters_record_state/insight_filters_record_state.dart';
import '../insight_filters_related_findings_id/insight_filters_related_findings_id.dart';
import '../insight_filters_related_findings_product_arn/insight_filters_related_findings_product_arn.dart';
import '../insight_filters_resource_aws_ec2_instance_iam_instance_profile_arn/insight_filters_resource_aws_ec2_instance_iam_instance_profile_arn.dart';
import '../insight_filters_resource_aws_ec2_instance_image_id/insight_filters_resource_aws_ec2_instance_image_id.dart';
import '../insight_filters_resource_aws_ec2_instance_ipv4_address/insight_filters_resource_aws_ec2_instance_ipv4_address.dart';
import '../insight_filters_resource_aws_ec2_instance_ipv6_address/insight_filters_resource_aws_ec2_instance_ipv6_address.dart';
import '../insight_filters_resource_aws_ec2_instance_key_name/insight_filters_resource_aws_ec2_instance_key_name.dart';
import '../insight_filters_resource_aws_ec2_instance_launched_at/insight_filters_resource_aws_ec2_instance_launched_at.dart';
import '../insight_filters_resource_aws_ec2_instance_subnet_id/insight_filters_resource_aws_ec2_instance_subnet_id.dart';
import '../insight_filters_resource_aws_ec2_instance_type/insight_filters_resource_aws_ec2_instance_type.dart';
import '../insight_filters_resource_aws_ec2_instance_vpc_id/insight_filters_resource_aws_ec2_instance_vpc_id.dart';
import '../insight_filters_resource_aws_iam_access_key_created_at/insight_filters_resource_aws_iam_access_key_created_at.dart';
import '../insight_filters_resource_aws_iam_access_key_status/insight_filters_resource_aws_iam_access_key_status.dart';
import '../insight_filters_resource_aws_iam_access_key_user_name/insight_filters_resource_aws_iam_access_key_user_name.dart';
import '../insight_filters_resource_aws_s3_bucket_owner_id/insight_filters_resource_aws_s3_bucket_owner_id.dart';
import '../insight_filters_resource_aws_s3_bucket_owner_name/insight_filters_resource_aws_s3_bucket_owner_name.dart';
import '../insight_filters_resource_container_image_id/insight_filters_resource_container_image_id.dart';
import '../insight_filters_resource_container_image_name/insight_filters_resource_container_image_name.dart';
import '../insight_filters_resource_container_launched_at/insight_filters_resource_container_launched_at.dart';
import '../insight_filters_resource_container_name/insight_filters_resource_container_name.dart';
import '../insight_filters_resource_details_other/insight_filters_resource_details_other.dart';
import '../insight_filters_resource_id/insight_filters_resource_id.dart';
import '../insight_filters_resource_partition/insight_filters_resource_partition.dart';
import '../insight_filters_resource_region/insight_filters_resource_region.dart';
import '../insight_filters_resource_tag/insight_filters_resource_tag.dart';
import '../insight_filters_resource_type/insight_filters_resource_type.dart';
import '../insight_filters_severity_label/insight_filters_severity_label.dart';
import '../insight_filters_source_url/insight_filters_source_url.dart';
import '../insight_filters_threat_intel_indicator_category/insight_filters_threat_intel_indicator_category.dart';
import '../insight_filters_threat_intel_indicator_last_observed_at/insight_filters_threat_intel_indicator_last_observed_at.dart';
import '../insight_filters_threat_intel_indicator_source/insight_filters_threat_intel_indicator_source.dart';
import '../insight_filters_threat_intel_indicator_source_url/insight_filters_threat_intel_indicator_source_url.dart';
import '../insight_filters_threat_intel_indicator_type/insight_filters_threat_intel_indicator_type.dart';
import '../insight_filters_threat_intel_indicator_value/insight_filters_threat_intel_indicator_value.dart';
import '../insight_filters_title/insight_filters_title.dart';
import '../insight_filters_type/insight_filters_type.dart';
import '../insight_filters_updated_at/insight_filters_updated_at.dart';
import '../insight_filters_user_defined_value/insight_filters_user_defined_value.dart';
import '../insight_filters_verification_state/insight_filters_verification_state.dart';
import '../insight_filters_workflow_status/insight_filters_workflow_status.dart';

class InsightFilters {
  /// AWS account ID that a finding is generated in. See String_Filter below for more details.
  final List<InsightFiltersAwsAccountId>? awsAccountIds;

  /// The name of the findings provider (company) that owns the solution (product) that generates findings. See String_Filter below for more details.
  final List<InsightFiltersCompanyName>? companyNames;

  /// Exclusive to findings that are generated as the result of a check run against a specific rule in a supported standard, such as CIS AWS Foundations. Contains security standard-related finding details. See String Filter below for more details.
  final List<InsightFiltersComplianceStatus>? complianceStatuses;

  /// A finding's confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details.
  final List<InsightFiltersConfidence>? confidences;

  /// An ISO8601-formatted timestamp that indicates when the security-findings provider captured the potential security issue that a finding captured. See Date Filter below for more details.
  final List<InsightFiltersCreatedAt>? createdAts;

  /// The level of importance assigned to the resources associated with the finding. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details.
  final List<InsightFiltersCriticality>? criticalities;

  /// A finding's description. See String Filter below for more details.
  final List<InsightFiltersDescription>? descriptions;

  /// The finding provider value for the finding confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details.
  final List<InsightFiltersFindingProviderFieldsConfidence>?
      findingProviderFieldsConfidences;

  /// The finding provider value for the level of importance assigned to the resources associated with the findings. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details.
  final List<InsightFiltersFindingProviderFieldsCriticality>?
      findingProviderFieldsCriticalities;

  /// The finding identifier of a related finding that is identified by the finding provider. See String Filter below for more details.
  final List<InsightFiltersFindingProviderFieldsRelatedFindingsId>?
      findingProviderFieldsRelatedFindingsIds;

  /// The ARN of the solution that generated a related finding that is identified by the finding provider. See String Filter below for more details.
  final List<InsightFiltersFindingProviderFieldsRelatedFindingsProductArn>?
      findingProviderFieldsRelatedFindingsProductArns;

  /// The finding provider value for the severity label. See String Filter below for more details.
  final List<InsightFiltersFindingProviderFieldsSeverityLabel>?
      findingProviderFieldsSeverityLabels;

  /// The finding provider's original value for the severity. See String Filter below for more details.
  final List<InsightFiltersFindingProviderFieldsSeverityOriginal>?
      findingProviderFieldsSeverityOriginals;

  /// One or more finding types that the finding provider assigned to the finding. Uses the format of `namespace/category/classifier` that classify a finding. Valid namespace values include: `Software and Configuration Checks`, `TTPs`, `Effects`, `Unusual Behaviors`, and `Sensitive Data Identifications`. See String Filter below for more details.
  final List<InsightFiltersFindingProviderFieldsType>?
      findingProviderFieldsTypes;

  /// An ISO8601-formatted timestamp that indicates when the security-findings provider first observed the potential security issue that a finding captured. See Date Filter below for more details.
  final List<InsightFiltersFirstObservedAt>? firstObservedAts;

  /// The identifier for the solution-specific component (a discrete unit of logic) that generated a finding. See String Filter below for more details.
  final List<InsightFiltersGeneratorId>? generatorIds;

  /// The security findings provider-specific identifier for a finding. See String Filter below for more details.
  final List<InsightFiltersId>? ids;

  /// A keyword for a finding. See Keyword Filter below for more details.
  final List<InsightFiltersKeyword>? keywords;

  /// An ISO8601-formatted timestamp that indicates when the security-findings provider most recently observed the potential security issue that a finding captured. See Date Filter below for more details.
  final List<InsightFiltersLastObservedAt>? lastObservedAts;

  /// The name of the malware that was observed. See String Filter below for more details.
  final List<InsightFiltersMalwareName>? malwareNames;

  /// The filesystem path of the malware that was observed. See String Filter below for more details.
  final List<InsightFiltersMalwarePath>? malwarePaths;

  /// The state of the malware that was observed. See String Filter below for more details.
  final List<InsightFiltersMalwareState>? malwareStates;

  /// The type of the malware that was observed. See String Filter below for more details.
  final List<InsightFiltersMalwareType>? malwareTypes;

  /// The destination domain of network-related information about a finding. See String Filter below for more details.
  final List<InsightFiltersNetworkDestinationDomain>? networkDestinationDomains;

  /// The destination IPv4 address of network-related information about a finding. See Ip Filter below for more details.
  final List<InsightFiltersNetworkDestinationIpv4>? networkDestinationIpv4s;

  /// The destination IPv6 address of network-related information about a finding. See Ip Filter below for more details.
  final List<InsightFiltersNetworkDestinationIpv6>? networkDestinationIpv6s;

  /// The destination port of network-related information about a finding. See Number Filter below for more details.
  final List<InsightFiltersNetworkDestinationPort>? networkDestinationPorts;

  /// Indicates the direction of network traffic associated with a finding. See String Filter below for more details.
  final List<InsightFiltersNetworkDirection>? networkDirections;

  /// The protocol of network-related information about a finding. See String Filter below for more details.
  final List<InsightFiltersNetworkProtocol>? networkProtocols;

  /// The source domain of network-related information about a finding. See String Filter below for more details.
  final List<InsightFiltersNetworkSourceDomain>? networkSourceDomains;

  /// The source IPv4 address of network-related information about a finding. See Ip Filter below for more details.
  final List<InsightFiltersNetworkSourceIpv4>? networkSourceIpv4s;

  /// The source IPv6 address of network-related information about a finding. See Ip Filter below for more details.
  final List<InsightFiltersNetworkSourceIpv6>? networkSourceIpv6s;

  /// The source media access control (MAC) address of network-related information about a finding. See String Filter below for more details.
  final List<InsightFiltersNetworkSourceMac>? networkSourceMacs;

  /// The source port of network-related information about a finding. See Number Filter below for more details.
  final List<InsightFiltersNetworkSourcePort>? networkSourcePorts;

  /// The text of a note. See String Filter below for more details.
  final List<InsightFiltersNoteText>? noteTexts;

  /// The timestamp of when the note was updated. See Date Filter below for more details.
  final List<InsightFiltersNoteUpdatedAt>? noteUpdatedAts;

  /// The principal that created a note. See String Filter below for more details.
  final List<InsightFiltersNoteUpdatedBy>? noteUpdatedBies;

  /// The date/time that the process was launched. See Date Filter below for more details.
  final List<InsightFiltersProcessLaunchedAt>? processLaunchedAts;

  /// The name of the process. See String Filter below for more details.
  final List<InsightFiltersProcessName>? processNames;

  /// The parent process ID. See Number Filter below for more details.
  final List<InsightFiltersProcessParentPid>? processParentPids;

  /// The path to the process executable. See String Filter below for more details.
  final List<InsightFiltersProcessPath>? processPaths;

  /// The process ID. See Number Filter below for more details.
  final List<InsightFiltersProcessPid>? processPids;

  /// The date/time that the process was terminated. See Date Filter below for more details.
  final List<InsightFiltersProcessTerminatedAt>? processTerminatedAts;

  /// The ARN generated by Security Hub that uniquely identifies a third-party company (security findings provider) after this provider's product (solution that generates findings) is registered with Security Hub. See String Filter below for more details.
  final List<InsightFiltersProductArn>? productArns;

  /// A data type where security-findings providers can include additional solution-specific details that aren't part of the defined `AwsSecurityFinding` format. See Map Filter below for more details.
  final List<InsightFiltersProductField>? productFields;

  /// The name of the solution (product) that generates findings. See String Filter below for more details.
  final List<InsightFiltersProductName>? productNames;

  /// The recommendation of what to do about the issue described in a finding. See String Filter below for more details.
  final List<InsightFiltersRecommendationText>? recommendationTexts;

  /// The updated record state for the finding. See String Filter below for more details.
  final List<InsightFiltersRecordState>? recordStates;

  /// The solution-generated identifier for a related finding. See String Filter below for more details.
  final List<InsightFiltersRelatedFindingsId>? relatedFindingsIds;

  /// The ARN of the solution that generated a related finding. See String Filter below for more details.
  final List<InsightFiltersRelatedFindingsProductArn>?
      relatedFindingsProductArns;

  /// The IAM profile ARN of the instance. See String Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn>?
      resourceAwsEc2InstanceIamInstanceProfileArns;

  /// The Amazon Machine Image (AMI) ID of the instance. See String Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceImageId>?
      resourceAwsEc2InstanceImageIds;

  /// The IPv4 addresses associated with the instance. See Ip Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceIpv4Address>?
      resourceAwsEc2InstanceIpv4Addresses;

  /// The IPv6 addresses associated with the instance. See Ip Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceIpv6Address>?
      resourceAwsEc2InstanceIpv6Addresses;

  /// The key name associated with the instance. See String Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceKeyName>?
      resourceAwsEc2InstanceKeyNames;

  /// The date and time the instance was launched. See Date Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceLaunchedAt>?
      resourceAwsEc2InstanceLaunchedAts;

  /// The identifier of the subnet that the instance was launched in. See String Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceSubnetId>?
      resourceAwsEc2InstanceSubnetIds;

  /// The instance type of the instance. See String Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceType>?
      resourceAwsEc2InstanceTypes;

  /// The identifier of the VPC that the instance was launched in. See String Filter below for more details.
  final List<InsightFiltersResourceAwsEc2InstanceVpcId>?
      resourceAwsEc2InstanceVpcIds;

  /// The creation date/time of the IAM access key related to a finding. See Date Filter below for more details.
  final List<InsightFiltersResourceAwsIamAccessKeyCreatedAt>?
      resourceAwsIamAccessKeyCreatedAts;

  /// The status of the IAM access key related to a finding. See String Filter below for more details.
  final List<InsightFiltersResourceAwsIamAccessKeyStatus>?
      resourceAwsIamAccessKeyStatuses;

  /// The user associated with the IAM access key related to a finding. See String Filter below for more details.
  final List<InsightFiltersResourceAwsIamAccessKeyUserName>?
      resourceAwsIamAccessKeyUserNames;

  /// The canonical user ID of the owner of the S3 bucket. See String Filter below for more details.
  final List<InsightFiltersResourceAwsS3BucketOwnerId>?
      resourceAwsS3BucketOwnerIds;

  /// The display name of the owner of the S3 bucket. See String Filter below for more details.
  final List<InsightFiltersResourceAwsS3BucketOwnerName>?
      resourceAwsS3BucketOwnerNames;

  /// The identifier of the image related to a finding. See String Filter below for more details.
  final List<InsightFiltersResourceContainerImageId>? resourceContainerImageIds;

  /// The name of the image related to a finding. See String Filter below for more details.
  final List<InsightFiltersResourceContainerImageName>?
      resourceContainerImageNames;

  /// The date/time that the container was started. See Date Filter below for more details.
  final List<InsightFiltersResourceContainerLaunchedAt>?
      resourceContainerLaunchedAts;

  /// The name of the container related to a finding. See String Filter below for more details.
  final List<InsightFiltersResourceContainerName>? resourceContainerNames;

  /// The details of a resource that doesn't have a specific subfield for the resource type defined. See Map Filter below for more details.
  final List<InsightFiltersResourceDetailsOther>? resourceDetailsOthers;

  /// The canonical identifier for the given resource type. See String Filter below for more details.
  final List<InsightFiltersResourceId>? resourceIds;

  /// The canonical AWS partition name that the Region is assigned to. See String Filter below for more details.
  final List<InsightFiltersResourcePartition>? resourcePartitions;

  /// The canonical AWS external Region name where this resource is located. See String Filter below for more details.
  final List<InsightFiltersResourceRegion>? resourceRegions;

  /// A list of AWS tags associated with a resource at the time the finding was processed. See Map Filter below for more details.
  final List<InsightFiltersResourceTag>? resourceTags;

  /// Specifies the type of the resource that details are provided for. See String Filter below for more details.
  final List<InsightFiltersResourceType>? resourceTypes;

  /// The label of a finding's severity. See String Filter below for more details.
  final List<InsightFiltersSeverityLabel>? severityLabels;

  /// A URL that links to a page about the current finding in the security-findings provider's solution. See String Filter below for more details.
  final List<InsightFiltersSourceUrl>? sourceUrls;

  /// The category of a threat intelligence indicator. See String Filter below for more details.
  final List<InsightFiltersThreatIntelIndicatorCategory>?
      threatIntelIndicatorCategories;

  /// The date/time of the last observation of a threat intelligence indicator. See Date Filter below for more details.
  final List<InsightFiltersThreatIntelIndicatorLastObservedAt>?
      threatIntelIndicatorLastObservedAts;

  /// The URL for more details from the source of the threat intelligence. See String Filter below for more details.
  final List<InsightFiltersThreatIntelIndicatorSourceUrl>?
      threatIntelIndicatorSourceUrls;

  /// The source of the threat intelligence. See String Filter below for more details.
  final List<InsightFiltersThreatIntelIndicatorSource>?
      threatIntelIndicatorSources;

  /// The type of a threat intelligence indicator. See String Filter below for more details.
  final List<InsightFiltersThreatIntelIndicatorType>? threatIntelIndicatorTypes;

  /// The value of a threat intelligence indicator. See String Filter below for more details.
  final List<InsightFiltersThreatIntelIndicatorValue>?
      threatIntelIndicatorValues;

  /// A finding's title. See String Filter below for more details.
  final List<InsightFiltersTitle>? titles;

  /// A finding type in the format of `namespace/category/classifier` that classifies a finding. See String Filter below for more details.
  final List<InsightFiltersType>? types;

  /// An ISO8601-formatted timestamp that indicates when the security-findings provider last updated the finding record. See Date Filter below for more details.
  final List<InsightFiltersUpdatedAt>? updatedAts;

  /// A list of name/value string pairs associated with the finding. These are custom, user-defined fields added to a finding. See Map Filter below for more details.
  final List<InsightFiltersUserDefinedValue>? userDefinedValues;

  /// The veracity of a finding. See String Filter below for more details.
  final List<InsightFiltersVerificationState>? verificationStates;

  /// The status of the investigation into a finding. See Workflow Status Filter below for more details.
  final List<InsightFiltersWorkflowStatus>? workflowStatuses;

  InsightFilters({
    this.awsAccountIds,
    this.companyNames,
    this.complianceStatuses,
    this.confidences,
    this.createdAts,
    this.criticalities,
    this.descriptions,
    this.findingProviderFieldsConfidences,
    this.findingProviderFieldsCriticalities,
    this.findingProviderFieldsRelatedFindingsIds,
    this.findingProviderFieldsRelatedFindingsProductArns,
    this.findingProviderFieldsSeverityLabels,
    this.findingProviderFieldsSeverityOriginals,
    this.findingProviderFieldsTypes,
    this.firstObservedAts,
    this.generatorIds,
    this.ids,
    this.keywords,
    this.lastObservedAts,
    this.malwareNames,
    this.malwarePaths,
    this.malwareStates,
    this.malwareTypes,
    this.networkDestinationDomains,
    this.networkDestinationIpv4s,
    this.networkDestinationIpv6s,
    this.networkDestinationPorts,
    this.networkDirections,
    this.networkProtocols,
    this.networkSourceDomains,
    this.networkSourceIpv4s,
    this.networkSourceIpv6s,
    this.networkSourceMacs,
    this.networkSourcePorts,
    this.noteTexts,
    this.noteUpdatedAts,
    this.noteUpdatedBies,
    this.processLaunchedAts,
    this.processNames,
    this.processParentPids,
    this.processPaths,
    this.processPids,
    this.processTerminatedAts,
    this.productArns,
    this.productFields,
    this.productNames,
    this.recommendationTexts,
    this.recordStates,
    this.relatedFindingsIds,
    this.relatedFindingsProductArns,
    this.resourceAwsEc2InstanceIamInstanceProfileArns,
    this.resourceAwsEc2InstanceImageIds,
    this.resourceAwsEc2InstanceIpv4Addresses,
    this.resourceAwsEc2InstanceIpv6Addresses,
    this.resourceAwsEc2InstanceKeyNames,
    this.resourceAwsEc2InstanceLaunchedAts,
    this.resourceAwsEc2InstanceSubnetIds,
    this.resourceAwsEc2InstanceTypes,
    this.resourceAwsEc2InstanceVpcIds,
    this.resourceAwsIamAccessKeyCreatedAts,
    this.resourceAwsIamAccessKeyStatuses,
    this.resourceAwsIamAccessKeyUserNames,
    this.resourceAwsS3BucketOwnerIds,
    this.resourceAwsS3BucketOwnerNames,
    this.resourceContainerImageIds,
    this.resourceContainerImageNames,
    this.resourceContainerLaunchedAts,
    this.resourceContainerNames,
    this.resourceDetailsOthers,
    this.resourceIds,
    this.resourcePartitions,
    this.resourceRegions,
    this.resourceTags,
    this.resourceTypes,
    this.severityLabels,
    this.sourceUrls,
    this.threatIntelIndicatorCategories,
    this.threatIntelIndicatorLastObservedAts,
    this.threatIntelIndicatorSourceUrls,
    this.threatIntelIndicatorSources,
    this.threatIntelIndicatorTypes,
    this.threatIntelIndicatorValues,
    this.titles,
    this.types,
    this.updatedAts,
    this.userDefinedValues,
    this.verificationStates,
    this.workflowStatuses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdsValue = awsAccountIds;
    if (awsAccountIdsValue != null) {
      map['awsAccountIds'] = pulumi.Input.encodeList<InsightFiltersAwsAccountId,
          Map<String, dynamic>>(awsAccountIdsValue, (value) => value.toMap());
    }
    final companyNamesValue = companyNames;
    if (companyNamesValue != null) {
      map['companyNames'] = pulumi.Input.encodeList<InsightFiltersCompanyName,
          Map<String, dynamic>>(companyNamesValue, (value) => value.toMap());
    }
    final complianceStatusesValue = complianceStatuses;
    if (complianceStatusesValue != null) {
      map['complianceStatuses'] = pulumi.Input.encodeList<
              InsightFiltersComplianceStatus, Map<String, dynamic>>(
          complianceStatusesValue, (value) => value.toMap());
    }
    final confidencesValue = confidences;
    if (confidencesValue != null) {
      map['confidences'] = pulumi.Input.encodeList<InsightFiltersConfidence,
          Map<String, dynamic>>(confidencesValue, (value) => value.toMap());
    }
    final createdAtsValue = createdAts;
    if (createdAtsValue != null) {
      map['createdAts'] = pulumi.Input.encodeList<InsightFiltersCreatedAt,
          Map<String, dynamic>>(createdAtsValue, (value) => value.toMap());
    }
    final criticalitiesValue = criticalities;
    if (criticalitiesValue != null) {
      map['criticalities'] = pulumi.Input.encodeList<InsightFiltersCriticality,
          Map<String, dynamic>>(criticalitiesValue, (value) => value.toMap());
    }
    final descriptionsValue = descriptions;
    if (descriptionsValue != null) {
      map['descriptions'] = pulumi.Input.encodeList<InsightFiltersDescription,
          Map<String, dynamic>>(descriptionsValue, (value) => value.toMap());
    }
    final findingProviderFieldsConfidencesValue =
        findingProviderFieldsConfidences;
    if (findingProviderFieldsConfidencesValue != null) {
      map['findingProviderFieldsConfidences'] = pulumi.Input.encodeList<
              InsightFiltersFindingProviderFieldsConfidence,
              Map<String, dynamic>>(
          findingProviderFieldsConfidencesValue, (value) => value.toMap());
    }
    final findingProviderFieldsCriticalitiesValue =
        findingProviderFieldsCriticalities;
    if (findingProviderFieldsCriticalitiesValue != null) {
      map['findingProviderFieldsCriticalities'] = pulumi.Input.encodeList<
              InsightFiltersFindingProviderFieldsCriticality,
              Map<String, dynamic>>(
          findingProviderFieldsCriticalitiesValue, (value) => value.toMap());
    }
    final findingProviderFieldsRelatedFindingsIdsValue =
        findingProviderFieldsRelatedFindingsIds;
    if (findingProviderFieldsRelatedFindingsIdsValue != null) {
      map['findingProviderFieldsRelatedFindingsIds'] = pulumi.Input.encodeList<
              InsightFiltersFindingProviderFieldsRelatedFindingsId,
              Map<String, dynamic>>(
          findingProviderFieldsRelatedFindingsIdsValue,
          (value) => value.toMap());
    }
    final findingProviderFieldsRelatedFindingsProductArnsValue =
        findingProviderFieldsRelatedFindingsProductArns;
    if (findingProviderFieldsRelatedFindingsProductArnsValue != null) {
      map['findingProviderFieldsRelatedFindingsProductArns'] =
          pulumi.Input.encodeList<
                  InsightFiltersFindingProviderFieldsRelatedFindingsProductArn,
                  Map<String, dynamic>>(
              findingProviderFieldsRelatedFindingsProductArnsValue,
              (value) => value.toMap());
    }
    final findingProviderFieldsSeverityLabelsValue =
        findingProviderFieldsSeverityLabels;
    if (findingProviderFieldsSeverityLabelsValue != null) {
      map['findingProviderFieldsSeverityLabels'] = pulumi.Input.encodeList<
              InsightFiltersFindingProviderFieldsSeverityLabel,
              Map<String, dynamic>>(
          findingProviderFieldsSeverityLabelsValue, (value) => value.toMap());
    }
    final findingProviderFieldsSeverityOriginalsValue =
        findingProviderFieldsSeverityOriginals;
    if (findingProviderFieldsSeverityOriginalsValue != null) {
      map['findingProviderFieldsSeverityOriginals'] = pulumi.Input.encodeList<
              InsightFiltersFindingProviderFieldsSeverityOriginal,
              Map<String, dynamic>>(findingProviderFieldsSeverityOriginalsValue,
          (value) => value.toMap());
    }
    final findingProviderFieldsTypesValue = findingProviderFieldsTypes;
    if (findingProviderFieldsTypesValue != null) {
      map['findingProviderFieldsTypes'] = pulumi.Input.encodeList<
              InsightFiltersFindingProviderFieldsType, Map<String, dynamic>>(
          findingProviderFieldsTypesValue, (value) => value.toMap());
    }
    final firstObservedAtsValue = firstObservedAts;
    if (firstObservedAtsValue != null) {
      map['firstObservedAts'] = pulumi.Input.encodeList<
              InsightFiltersFirstObservedAt, Map<String, dynamic>>(
          firstObservedAtsValue, (value) => value.toMap());
    }
    final generatorIdsValue = generatorIds;
    if (generatorIdsValue != null) {
      map['generatorIds'] = pulumi.Input.encodeList<InsightFiltersGeneratorId,
          Map<String, dynamic>>(generatorIdsValue, (value) => value.toMap());
    }
    final idsValue = ids;
    if (idsValue != null) {
      map['ids'] =
          pulumi.Input.encodeList<InsightFiltersId, Map<String, dynamic>>(
              idsValue, (value) => value.toMap());
    }
    final keywordsValue = keywords;
    if (keywordsValue != null) {
      map['keywords'] =
          pulumi.Input.encodeList<InsightFiltersKeyword, Map<String, dynamic>>(
              keywordsValue, (value) => value.toMap());
    }
    final lastObservedAtsValue = lastObservedAts;
    if (lastObservedAtsValue != null) {
      map['lastObservedAts'] = pulumi.Input.encodeList<
          InsightFiltersLastObservedAt,
          Map<String, dynamic>>(lastObservedAtsValue, (value) => value.toMap());
    }
    final malwareNamesValue = malwareNames;
    if (malwareNamesValue != null) {
      map['malwareNames'] = pulumi.Input.encodeList<InsightFiltersMalwareName,
          Map<String, dynamic>>(malwareNamesValue, (value) => value.toMap());
    }
    final malwarePathsValue = malwarePaths;
    if (malwarePathsValue != null) {
      map['malwarePaths'] = pulumi.Input.encodeList<InsightFiltersMalwarePath,
          Map<String, dynamic>>(malwarePathsValue, (value) => value.toMap());
    }
    final malwareStatesValue = malwareStates;
    if (malwareStatesValue != null) {
      map['malwareStates'] = pulumi.Input.encodeList<InsightFiltersMalwareState,
          Map<String, dynamic>>(malwareStatesValue, (value) => value.toMap());
    }
    final malwareTypesValue = malwareTypes;
    if (malwareTypesValue != null) {
      map['malwareTypes'] = pulumi.Input.encodeList<InsightFiltersMalwareType,
          Map<String, dynamic>>(malwareTypesValue, (value) => value.toMap());
    }
    final networkDestinationDomainsValue = networkDestinationDomains;
    if (networkDestinationDomainsValue != null) {
      map['networkDestinationDomains'] = pulumi.Input.encodeList<
              InsightFiltersNetworkDestinationDomain, Map<String, dynamic>>(
          networkDestinationDomainsValue, (value) => value.toMap());
    }
    final networkDestinationIpv4sValue = networkDestinationIpv4s;
    if (networkDestinationIpv4sValue != null) {
      map['networkDestinationIpv4s'] = pulumi.Input.encodeList<
              InsightFiltersNetworkDestinationIpv4, Map<String, dynamic>>(
          networkDestinationIpv4sValue, (value) => value.toMap());
    }
    final networkDestinationIpv6sValue = networkDestinationIpv6s;
    if (networkDestinationIpv6sValue != null) {
      map['networkDestinationIpv6s'] = pulumi.Input.encodeList<
              InsightFiltersNetworkDestinationIpv6, Map<String, dynamic>>(
          networkDestinationIpv6sValue, (value) => value.toMap());
    }
    final networkDestinationPortsValue = networkDestinationPorts;
    if (networkDestinationPortsValue != null) {
      map['networkDestinationPorts'] = pulumi.Input.encodeList<
              InsightFiltersNetworkDestinationPort, Map<String, dynamic>>(
          networkDestinationPortsValue, (value) => value.toMap());
    }
    final networkDirectionsValue = networkDirections;
    if (networkDirectionsValue != null) {
      map['networkDirections'] = pulumi.Input.encodeList<
              InsightFiltersNetworkDirection, Map<String, dynamic>>(
          networkDirectionsValue, (value) => value.toMap());
    }
    final networkProtocolsValue = networkProtocols;
    if (networkProtocolsValue != null) {
      map['networkProtocols'] = pulumi.Input.encodeList<
              InsightFiltersNetworkProtocol, Map<String, dynamic>>(
          networkProtocolsValue, (value) => value.toMap());
    }
    final networkSourceDomainsValue = networkSourceDomains;
    if (networkSourceDomainsValue != null) {
      map['networkSourceDomains'] = pulumi.Input.encodeList<
              InsightFiltersNetworkSourceDomain, Map<String, dynamic>>(
          networkSourceDomainsValue, (value) => value.toMap());
    }
    final networkSourceIpv4sValue = networkSourceIpv4s;
    if (networkSourceIpv4sValue != null) {
      map['networkSourceIpv4s'] = pulumi.Input.encodeList<
              InsightFiltersNetworkSourceIpv4, Map<String, dynamic>>(
          networkSourceIpv4sValue, (value) => value.toMap());
    }
    final networkSourceIpv6sValue = networkSourceIpv6s;
    if (networkSourceIpv6sValue != null) {
      map['networkSourceIpv6s'] = pulumi.Input.encodeList<
              InsightFiltersNetworkSourceIpv6, Map<String, dynamic>>(
          networkSourceIpv6sValue, (value) => value.toMap());
    }
    final networkSourceMacsValue = networkSourceMacs;
    if (networkSourceMacsValue != null) {
      map['networkSourceMacs'] = pulumi.Input.encodeList<
              InsightFiltersNetworkSourceMac, Map<String, dynamic>>(
          networkSourceMacsValue, (value) => value.toMap());
    }
    final networkSourcePortsValue = networkSourcePorts;
    if (networkSourcePortsValue != null) {
      map['networkSourcePorts'] = pulumi.Input.encodeList<
              InsightFiltersNetworkSourcePort, Map<String, dynamic>>(
          networkSourcePortsValue, (value) => value.toMap());
    }
    final noteTextsValue = noteTexts;
    if (noteTextsValue != null) {
      map['noteTexts'] =
          pulumi.Input.encodeList<InsightFiltersNoteText, Map<String, dynamic>>(
              noteTextsValue, (value) => value.toMap());
    }
    final noteUpdatedAtsValue = noteUpdatedAts;
    if (noteUpdatedAtsValue != null) {
      map['noteUpdatedAts'] = pulumi.Input.encodeList<
          InsightFiltersNoteUpdatedAt,
          Map<String, dynamic>>(noteUpdatedAtsValue, (value) => value.toMap());
    }
    final noteUpdatedBiesValue = noteUpdatedBies;
    if (noteUpdatedBiesValue != null) {
      map['noteUpdatedBies'] = pulumi.Input.encodeList<
          InsightFiltersNoteUpdatedBy,
          Map<String, dynamic>>(noteUpdatedBiesValue, (value) => value.toMap());
    }
    final processLaunchedAtsValue = processLaunchedAts;
    if (processLaunchedAtsValue != null) {
      map['processLaunchedAts'] = pulumi.Input.encodeList<
              InsightFiltersProcessLaunchedAt, Map<String, dynamic>>(
          processLaunchedAtsValue, (value) => value.toMap());
    }
    final processNamesValue = processNames;
    if (processNamesValue != null) {
      map['processNames'] = pulumi.Input.encodeList<InsightFiltersProcessName,
          Map<String, dynamic>>(processNamesValue, (value) => value.toMap());
    }
    final processParentPidsValue = processParentPids;
    if (processParentPidsValue != null) {
      map['processParentPids'] = pulumi.Input.encodeList<
              InsightFiltersProcessParentPid, Map<String, dynamic>>(
          processParentPidsValue, (value) => value.toMap());
    }
    final processPathsValue = processPaths;
    if (processPathsValue != null) {
      map['processPaths'] = pulumi.Input.encodeList<InsightFiltersProcessPath,
          Map<String, dynamic>>(processPathsValue, (value) => value.toMap());
    }
    final processPidsValue = processPids;
    if (processPidsValue != null) {
      map['processPids'] = pulumi.Input.encodeList<InsightFiltersProcessPid,
          Map<String, dynamic>>(processPidsValue, (value) => value.toMap());
    }
    final processTerminatedAtsValue = processTerminatedAts;
    if (processTerminatedAtsValue != null) {
      map['processTerminatedAts'] = pulumi.Input.encodeList<
              InsightFiltersProcessTerminatedAt, Map<String, dynamic>>(
          processTerminatedAtsValue, (value) => value.toMap());
    }
    final productArnsValue = productArns;
    if (productArnsValue != null) {
      map['productArns'] = pulumi.Input.encodeList<InsightFiltersProductArn,
          Map<String, dynamic>>(productArnsValue, (value) => value.toMap());
    }
    final productFieldsValue = productFields;
    if (productFieldsValue != null) {
      map['productFields'] = pulumi.Input.encodeList<InsightFiltersProductField,
          Map<String, dynamic>>(productFieldsValue, (value) => value.toMap());
    }
    final productNamesValue = productNames;
    if (productNamesValue != null) {
      map['productNames'] = pulumi.Input.encodeList<InsightFiltersProductName,
          Map<String, dynamic>>(productNamesValue, (value) => value.toMap());
    }
    final recommendationTextsValue = recommendationTexts;
    if (recommendationTextsValue != null) {
      map['recommendationTexts'] = pulumi.Input.encodeList<
              InsightFiltersRecommendationText, Map<String, dynamic>>(
          recommendationTextsValue, (value) => value.toMap());
    }
    final recordStatesValue = recordStates;
    if (recordStatesValue != null) {
      map['recordStates'] = pulumi.Input.encodeList<InsightFiltersRecordState,
          Map<String, dynamic>>(recordStatesValue, (value) => value.toMap());
    }
    final relatedFindingsIdsValue = relatedFindingsIds;
    if (relatedFindingsIdsValue != null) {
      map['relatedFindingsIds'] = pulumi.Input.encodeList<
              InsightFiltersRelatedFindingsId, Map<String, dynamic>>(
          relatedFindingsIdsValue, (value) => value.toMap());
    }
    final relatedFindingsProductArnsValue = relatedFindingsProductArns;
    if (relatedFindingsProductArnsValue != null) {
      map['relatedFindingsProductArns'] = pulumi.Input.encodeList<
              InsightFiltersRelatedFindingsProductArn, Map<String, dynamic>>(
          relatedFindingsProductArnsValue, (value) => value.toMap());
    }
    final resourceAwsEc2InstanceIamInstanceProfileArnsValue =
        resourceAwsEc2InstanceIamInstanceProfileArns;
    if (resourceAwsEc2InstanceIamInstanceProfileArnsValue != null) {
      map['resourceAwsEc2InstanceIamInstanceProfileArns'] =
          pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn,
                  Map<String, dynamic>>(
              resourceAwsEc2InstanceIamInstanceProfileArnsValue,
              (value) => value.toMap());
    }
    final resourceAwsEc2InstanceImageIdsValue = resourceAwsEc2InstanceImageIds;
    if (resourceAwsEc2InstanceImageIdsValue != null) {
      map['resourceAwsEc2InstanceImageIds'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsEc2InstanceImageId,
              Map<String, dynamic>>(
          resourceAwsEc2InstanceImageIdsValue, (value) => value.toMap());
    }
    final resourceAwsEc2InstanceIpv4AddressesValue =
        resourceAwsEc2InstanceIpv4Addresses;
    if (resourceAwsEc2InstanceIpv4AddressesValue != null) {
      map['resourceAwsEc2InstanceIpv4Addresses'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsEc2InstanceIpv4Address,
              Map<String, dynamic>>(
          resourceAwsEc2InstanceIpv4AddressesValue, (value) => value.toMap());
    }
    final resourceAwsEc2InstanceIpv6AddressesValue =
        resourceAwsEc2InstanceIpv6Addresses;
    if (resourceAwsEc2InstanceIpv6AddressesValue != null) {
      map['resourceAwsEc2InstanceIpv6Addresses'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsEc2InstanceIpv6Address,
              Map<String, dynamic>>(
          resourceAwsEc2InstanceIpv6AddressesValue, (value) => value.toMap());
    }
    final resourceAwsEc2InstanceKeyNamesValue = resourceAwsEc2InstanceKeyNames;
    if (resourceAwsEc2InstanceKeyNamesValue != null) {
      map['resourceAwsEc2InstanceKeyNames'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsEc2InstanceKeyName,
              Map<String, dynamic>>(
          resourceAwsEc2InstanceKeyNamesValue, (value) => value.toMap());
    }
    final resourceAwsEc2InstanceLaunchedAtsValue =
        resourceAwsEc2InstanceLaunchedAts;
    if (resourceAwsEc2InstanceLaunchedAtsValue != null) {
      map['resourceAwsEc2InstanceLaunchedAts'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsEc2InstanceLaunchedAt,
              Map<String, dynamic>>(
          resourceAwsEc2InstanceLaunchedAtsValue, (value) => value.toMap());
    }
    final resourceAwsEc2InstanceSubnetIdsValue =
        resourceAwsEc2InstanceSubnetIds;
    if (resourceAwsEc2InstanceSubnetIdsValue != null) {
      map['resourceAwsEc2InstanceSubnetIds'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsEc2InstanceSubnetId,
              Map<String, dynamic>>(
          resourceAwsEc2InstanceSubnetIdsValue, (value) => value.toMap());
    }
    final resourceAwsEc2InstanceTypesValue = resourceAwsEc2InstanceTypes;
    if (resourceAwsEc2InstanceTypesValue != null) {
      map['resourceAwsEc2InstanceTypes'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsEc2InstanceType, Map<String, dynamic>>(
          resourceAwsEc2InstanceTypesValue, (value) => value.toMap());
    }
    final resourceAwsEc2InstanceVpcIdsValue = resourceAwsEc2InstanceVpcIds;
    if (resourceAwsEc2InstanceVpcIdsValue != null) {
      map['resourceAwsEc2InstanceVpcIds'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsEc2InstanceVpcId, Map<String, dynamic>>(
          resourceAwsEc2InstanceVpcIdsValue, (value) => value.toMap());
    }
    final resourceAwsIamAccessKeyCreatedAtsValue =
        resourceAwsIamAccessKeyCreatedAts;
    if (resourceAwsIamAccessKeyCreatedAtsValue != null) {
      map['resourceAwsIamAccessKeyCreatedAts'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsIamAccessKeyCreatedAt,
              Map<String, dynamic>>(
          resourceAwsIamAccessKeyCreatedAtsValue, (value) => value.toMap());
    }
    final resourceAwsIamAccessKeyStatusesValue =
        resourceAwsIamAccessKeyStatuses;
    if (resourceAwsIamAccessKeyStatusesValue != null) {
      map['resourceAwsIamAccessKeyStatuses'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsIamAccessKeyStatus,
              Map<String, dynamic>>(
          resourceAwsIamAccessKeyStatusesValue, (value) => value.toMap());
    }
    final resourceAwsIamAccessKeyUserNamesValue =
        resourceAwsIamAccessKeyUserNames;
    if (resourceAwsIamAccessKeyUserNamesValue != null) {
      map['resourceAwsIamAccessKeyUserNames'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsIamAccessKeyUserName,
              Map<String, dynamic>>(
          resourceAwsIamAccessKeyUserNamesValue, (value) => value.toMap());
    }
    final resourceAwsS3BucketOwnerIdsValue = resourceAwsS3BucketOwnerIds;
    if (resourceAwsS3BucketOwnerIdsValue != null) {
      map['resourceAwsS3BucketOwnerIds'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsS3BucketOwnerId, Map<String, dynamic>>(
          resourceAwsS3BucketOwnerIdsValue, (value) => value.toMap());
    }
    final resourceAwsS3BucketOwnerNamesValue = resourceAwsS3BucketOwnerNames;
    if (resourceAwsS3BucketOwnerNamesValue != null) {
      map['resourceAwsS3BucketOwnerNames'] = pulumi.Input.encodeList<
              InsightFiltersResourceAwsS3BucketOwnerName, Map<String, dynamic>>(
          resourceAwsS3BucketOwnerNamesValue, (value) => value.toMap());
    }
    final resourceContainerImageIdsValue = resourceContainerImageIds;
    if (resourceContainerImageIdsValue != null) {
      map['resourceContainerImageIds'] = pulumi.Input.encodeList<
              InsightFiltersResourceContainerImageId, Map<String, dynamic>>(
          resourceContainerImageIdsValue, (value) => value.toMap());
    }
    final resourceContainerImageNamesValue = resourceContainerImageNames;
    if (resourceContainerImageNamesValue != null) {
      map['resourceContainerImageNames'] = pulumi.Input.encodeList<
              InsightFiltersResourceContainerImageName, Map<String, dynamic>>(
          resourceContainerImageNamesValue, (value) => value.toMap());
    }
    final resourceContainerLaunchedAtsValue = resourceContainerLaunchedAts;
    if (resourceContainerLaunchedAtsValue != null) {
      map['resourceContainerLaunchedAts'] = pulumi.Input.encodeList<
              InsightFiltersResourceContainerLaunchedAt, Map<String, dynamic>>(
          resourceContainerLaunchedAtsValue, (value) => value.toMap());
    }
    final resourceContainerNamesValue = resourceContainerNames;
    if (resourceContainerNamesValue != null) {
      map['resourceContainerNames'] = pulumi.Input.encodeList<
              InsightFiltersResourceContainerName, Map<String, dynamic>>(
          resourceContainerNamesValue, (value) => value.toMap());
    }
    final resourceDetailsOthersValue = resourceDetailsOthers;
    if (resourceDetailsOthersValue != null) {
      map['resourceDetailsOthers'] = pulumi.Input.encodeList<
              InsightFiltersResourceDetailsOther, Map<String, dynamic>>(
          resourceDetailsOthersValue, (value) => value.toMap());
    }
    final resourceIdsValue = resourceIds;
    if (resourceIdsValue != null) {
      map['resourceIds'] = pulumi.Input.encodeList<InsightFiltersResourceId,
          Map<String, dynamic>>(resourceIdsValue, (value) => value.toMap());
    }
    final resourcePartitionsValue = resourcePartitions;
    if (resourcePartitionsValue != null) {
      map['resourcePartitions'] = pulumi.Input.encodeList<
              InsightFiltersResourcePartition, Map<String, dynamic>>(
          resourcePartitionsValue, (value) => value.toMap());
    }
    final resourceRegionsValue = resourceRegions;
    if (resourceRegionsValue != null) {
      map['resourceRegions'] = pulumi.Input.encodeList<
          InsightFiltersResourceRegion,
          Map<String, dynamic>>(resourceRegionsValue, (value) => value.toMap());
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = pulumi.Input.encodeList<InsightFiltersResourceTag,
          Map<String, dynamic>>(resourceTagsValue, (value) => value.toMap());
    }
    final resourceTypesValue = resourceTypes;
    if (resourceTypesValue != null) {
      map['resourceTypes'] = pulumi.Input.encodeList<InsightFiltersResourceType,
          Map<String, dynamic>>(resourceTypesValue, (value) => value.toMap());
    }
    final severityLabelsValue = severityLabels;
    if (severityLabelsValue != null) {
      map['severityLabels'] = pulumi.Input.encodeList<
          InsightFiltersSeverityLabel,
          Map<String, dynamic>>(severityLabelsValue, (value) => value.toMap());
    }
    final sourceUrlsValue = sourceUrls;
    if (sourceUrlsValue != null) {
      map['sourceUrls'] = pulumi.Input.encodeList<InsightFiltersSourceUrl,
          Map<String, dynamic>>(sourceUrlsValue, (value) => value.toMap());
    }
    final threatIntelIndicatorCategoriesValue = threatIntelIndicatorCategories;
    if (threatIntelIndicatorCategoriesValue != null) {
      map['threatIntelIndicatorCategories'] = pulumi.Input.encodeList<
              InsightFiltersThreatIntelIndicatorCategory, Map<String, dynamic>>(
          threatIntelIndicatorCategoriesValue, (value) => value.toMap());
    }
    final threatIntelIndicatorLastObservedAtsValue =
        threatIntelIndicatorLastObservedAts;
    if (threatIntelIndicatorLastObservedAtsValue != null) {
      map['threatIntelIndicatorLastObservedAts'] = pulumi.Input.encodeList<
              InsightFiltersThreatIntelIndicatorLastObservedAt,
              Map<String, dynamic>>(
          threatIntelIndicatorLastObservedAtsValue, (value) => value.toMap());
    }
    final threatIntelIndicatorSourceUrlsValue = threatIntelIndicatorSourceUrls;
    if (threatIntelIndicatorSourceUrlsValue != null) {
      map['threatIntelIndicatorSourceUrls'] = pulumi.Input.encodeList<
              InsightFiltersThreatIntelIndicatorSourceUrl,
              Map<String, dynamic>>(
          threatIntelIndicatorSourceUrlsValue, (value) => value.toMap());
    }
    final threatIntelIndicatorSourcesValue = threatIntelIndicatorSources;
    if (threatIntelIndicatorSourcesValue != null) {
      map['threatIntelIndicatorSources'] = pulumi.Input.encodeList<
              InsightFiltersThreatIntelIndicatorSource, Map<String, dynamic>>(
          threatIntelIndicatorSourcesValue, (value) => value.toMap());
    }
    final threatIntelIndicatorTypesValue = threatIntelIndicatorTypes;
    if (threatIntelIndicatorTypesValue != null) {
      map['threatIntelIndicatorTypes'] = pulumi.Input.encodeList<
              InsightFiltersThreatIntelIndicatorType, Map<String, dynamic>>(
          threatIntelIndicatorTypesValue, (value) => value.toMap());
    }
    final threatIntelIndicatorValuesValue = threatIntelIndicatorValues;
    if (threatIntelIndicatorValuesValue != null) {
      map['threatIntelIndicatorValues'] = pulumi.Input.encodeList<
              InsightFiltersThreatIntelIndicatorValue, Map<String, dynamic>>(
          threatIntelIndicatorValuesValue, (value) => value.toMap());
    }
    final titlesValue = titles;
    if (titlesValue != null) {
      map['titles'] =
          pulumi.Input.encodeList<InsightFiltersTitle, Map<String, dynamic>>(
              titlesValue, (value) => value.toMap());
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] =
          pulumi.Input.encodeList<InsightFiltersType, Map<String, dynamic>>(
              typesValue, (value) => value.toMap());
    }
    final updatedAtsValue = updatedAts;
    if (updatedAtsValue != null) {
      map['updatedAts'] = pulumi.Input.encodeList<InsightFiltersUpdatedAt,
          Map<String, dynamic>>(updatedAtsValue, (value) => value.toMap());
    }
    final userDefinedValuesValue = userDefinedValues;
    if (userDefinedValuesValue != null) {
      map['userDefinedValues'] = pulumi.Input.encodeList<
              InsightFiltersUserDefinedValue, Map<String, dynamic>>(
          userDefinedValuesValue, (value) => value.toMap());
    }
    final verificationStatesValue = verificationStates;
    if (verificationStatesValue != null) {
      map['verificationStates'] = pulumi.Input.encodeList<
              InsightFiltersVerificationState, Map<String, dynamic>>(
          verificationStatesValue, (value) => value.toMap());
    }
    final workflowStatusesValue = workflowStatuses;
    if (workflowStatusesValue != null) {
      map['workflowStatuses'] = pulumi.Input.encodeList<
              InsightFiltersWorkflowStatus, Map<String, dynamic>>(
          workflowStatusesValue, (value) => value.toMap());
    }
    return map;
  }

  factory InsightFilters.fromMap(Map<String, dynamic> map) {
    return InsightFilters(
      awsAccountIds: map['awsAccountIds'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersAwsAccountId>(
              map['awsAccountIds'],
              (value) => InsightFiltersAwsAccountId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      companyNames: map['companyNames'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersCompanyName>(
              map['companyNames'],
              (value) => InsightFiltersCompanyName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      complianceStatuses: map['complianceStatuses'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersComplianceStatus>(
              map['complianceStatuses'],
              (value) => InsightFiltersComplianceStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
      confidences: map['confidences'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersConfidence>(
              map['confidences'],
              (value) => InsightFiltersConfidence.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createdAts: map['createdAts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersCreatedAt>(
              map['createdAts'],
              (value) => InsightFiltersCreatedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      criticalities: map['criticalities'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersCriticality>(
              map['criticalities'],
              (value) => InsightFiltersCriticality.fromMap(
                  (value as Map).cast<String, dynamic>())),
      descriptions: map['descriptions'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersDescription>(
              map['descriptions'],
              (value) => InsightFiltersDescription.fromMap(
                  (value as Map).cast<String, dynamic>())),
      findingProviderFieldsConfidences:
          map['findingProviderFieldsConfidences'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersFindingProviderFieldsConfidence>(
                  map['findingProviderFieldsConfidences'],
                  (value) =>
                      InsightFiltersFindingProviderFieldsConfidence.fromMap(
                          (value as Map).cast<String, dynamic>())),
      findingProviderFieldsCriticalities:
          map['findingProviderFieldsCriticalities'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersFindingProviderFieldsCriticality>(
                  map['findingProviderFieldsCriticalities'],
                  (value) =>
                      InsightFiltersFindingProviderFieldsCriticality.fromMap(
                          (value as Map).cast<String, dynamic>())),
      findingProviderFieldsRelatedFindingsIds:
          map['findingProviderFieldsRelatedFindingsIds'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersFindingProviderFieldsRelatedFindingsId>(
                  map['findingProviderFieldsRelatedFindingsIds'],
                  (value) =>
                      InsightFiltersFindingProviderFieldsRelatedFindingsId
                          .fromMap((value as Map).cast<String, dynamic>())),
      findingProviderFieldsRelatedFindingsProductArns: map[
                  'findingProviderFieldsRelatedFindingsProductArns'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  InsightFiltersFindingProviderFieldsRelatedFindingsProductArn>(
              map['findingProviderFieldsRelatedFindingsProductArns'],
              (value) =>
                  InsightFiltersFindingProviderFieldsRelatedFindingsProductArn
                      .fromMap((value as Map).cast<String, dynamic>())),
      findingProviderFieldsSeverityLabels:
          map['findingProviderFieldsSeverityLabels'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersFindingProviderFieldsSeverityLabel>(
                  map['findingProviderFieldsSeverityLabels'],
                  (value) =>
                      InsightFiltersFindingProviderFieldsSeverityLabel.fromMap(
                          (value as Map).cast<String, dynamic>())),
      findingProviderFieldsSeverityOriginals:
          map['findingProviderFieldsSeverityOriginals'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersFindingProviderFieldsSeverityOriginal>(
                  map['findingProviderFieldsSeverityOriginals'],
                  (value) => InsightFiltersFindingProviderFieldsSeverityOriginal
                      .fromMap((value as Map).cast<String, dynamic>())),
      findingProviderFieldsTypes: map['findingProviderFieldsTypes'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersFindingProviderFieldsType>(
              map['findingProviderFieldsTypes'],
              (value) => InsightFiltersFindingProviderFieldsType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      firstObservedAts: map['firstObservedAts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersFirstObservedAt>(
              map['firstObservedAts'],
              (value) => InsightFiltersFirstObservedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      generatorIds: map['generatorIds'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersGeneratorId>(
              map['generatorIds'],
              (value) => InsightFiltersGeneratorId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ids: map['ids'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersId>(
              map['ids'],
              (value) => InsightFiltersId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keywords: map['keywords'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersKeyword>(
              map['keywords'],
              (value) => InsightFiltersKeyword.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lastObservedAts: map['lastObservedAts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersLastObservedAt>(
              map['lastObservedAts'],
              (value) => InsightFiltersLastObservedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      malwareNames: map['malwareNames'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersMalwareName>(
              map['malwareNames'],
              (value) => InsightFiltersMalwareName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      malwarePaths: map['malwarePaths'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersMalwarePath>(
              map['malwarePaths'],
              (value) => InsightFiltersMalwarePath.fromMap(
                  (value as Map).cast<String, dynamic>())),
      malwareStates: map['malwareStates'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersMalwareState>(
              map['malwareStates'],
              (value) => InsightFiltersMalwareState.fromMap(
                  (value as Map).cast<String, dynamic>())),
      malwareTypes: map['malwareTypes'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersMalwareType>(
              map['malwareTypes'],
              (value) => InsightFiltersMalwareType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkDestinationDomains: map['networkDestinationDomains'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkDestinationDomain>(
              map['networkDestinationDomains'],
              (value) => InsightFiltersNetworkDestinationDomain.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkDestinationIpv4s: map['networkDestinationIpv4s'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkDestinationIpv4>(
              map['networkDestinationIpv4s'],
              (value) => InsightFiltersNetworkDestinationIpv4.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkDestinationIpv6s: map['networkDestinationIpv6s'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkDestinationIpv6>(
              map['networkDestinationIpv6s'],
              (value) => InsightFiltersNetworkDestinationIpv6.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkDestinationPorts: map['networkDestinationPorts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkDestinationPort>(
              map['networkDestinationPorts'],
              (value) => InsightFiltersNetworkDestinationPort.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkDirections: map['networkDirections'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkDirection>(
              map['networkDirections'],
              (value) => InsightFiltersNetworkDirection.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkProtocols: map['networkProtocols'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkProtocol>(
              map['networkProtocols'],
              (value) => InsightFiltersNetworkProtocol.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkSourceDomains: map['networkSourceDomains'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkSourceDomain>(
              map['networkSourceDomains'],
              (value) => InsightFiltersNetworkSourceDomain.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkSourceIpv4s: map['networkSourceIpv4s'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkSourceIpv4>(
              map['networkSourceIpv4s'],
              (value) => InsightFiltersNetworkSourceIpv4.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkSourceIpv6s: map['networkSourceIpv6s'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkSourceIpv6>(
              map['networkSourceIpv6s'],
              (value) => InsightFiltersNetworkSourceIpv6.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkSourceMacs: map['networkSourceMacs'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkSourceMac>(
              map['networkSourceMacs'],
              (value) => InsightFiltersNetworkSourceMac.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkSourcePorts: map['networkSourcePorts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNetworkSourcePort>(
              map['networkSourcePorts'],
              (value) => InsightFiltersNetworkSourcePort.fromMap(
                  (value as Map).cast<String, dynamic>())),
      noteTexts: map['noteTexts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNoteText>(
              map['noteTexts'],
              (value) => InsightFiltersNoteText.fromMap(
                  (value as Map).cast<String, dynamic>())),
      noteUpdatedAts: map['noteUpdatedAts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNoteUpdatedAt>(
              map['noteUpdatedAts'],
              (value) => InsightFiltersNoteUpdatedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      noteUpdatedBies: map['noteUpdatedBies'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersNoteUpdatedBy>(
              map['noteUpdatedBies'],
              (value) => InsightFiltersNoteUpdatedBy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      processLaunchedAts: map['processLaunchedAts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProcessLaunchedAt>(
              map['processLaunchedAts'],
              (value) => InsightFiltersProcessLaunchedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      processNames: map['processNames'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProcessName>(
              map['processNames'],
              (value) => InsightFiltersProcessName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      processParentPids: map['processParentPids'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProcessParentPid>(
              map['processParentPids'],
              (value) => InsightFiltersProcessParentPid.fromMap(
                  (value as Map).cast<String, dynamic>())),
      processPaths: map['processPaths'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProcessPath>(
              map['processPaths'],
              (value) => InsightFiltersProcessPath.fromMap(
                  (value as Map).cast<String, dynamic>())),
      processPids: map['processPids'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProcessPid>(
              map['processPids'],
              (value) => InsightFiltersProcessPid.fromMap(
                  (value as Map).cast<String, dynamic>())),
      processTerminatedAts: map['processTerminatedAts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProcessTerminatedAt>(
              map['processTerminatedAts'],
              (value) => InsightFiltersProcessTerminatedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      productArns: map['productArns'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProductArn>(
              map['productArns'],
              (value) => InsightFiltersProductArn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      productFields: map['productFields'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProductField>(
              map['productFields'],
              (value) => InsightFiltersProductField.fromMap(
                  (value as Map).cast<String, dynamic>())),
      productNames: map['productNames'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersProductName>(
              map['productNames'],
              (value) => InsightFiltersProductName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      recommendationTexts: map['recommendationTexts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersRecommendationText>(
              map['recommendationTexts'],
              (value) => InsightFiltersRecommendationText.fromMap(
                  (value as Map).cast<String, dynamic>())),
      recordStates: map['recordStates'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersRecordState>(
              map['recordStates'],
              (value) => InsightFiltersRecordState.fromMap(
                  (value as Map).cast<String, dynamic>())),
      relatedFindingsIds: map['relatedFindingsIds'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersRelatedFindingsId>(
              map['relatedFindingsIds'],
              (value) => InsightFiltersRelatedFindingsId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      relatedFindingsProductArns: map['relatedFindingsProductArns'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersRelatedFindingsProductArn>(
              map['relatedFindingsProductArns'],
              (value) => InsightFiltersRelatedFindingsProductArn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceIamInstanceProfileArns: map[
                  'resourceAwsEc2InstanceIamInstanceProfileArns'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn>(
              map['resourceAwsEc2InstanceIamInstanceProfileArns'],
              (value) =>
                  InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn
                      .fromMap((value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceImageIds: map['resourceAwsEc2InstanceImageIds'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  InsightFiltersResourceAwsEc2InstanceImageId>(
              map['resourceAwsEc2InstanceImageIds'],
              (value) => InsightFiltersResourceAwsEc2InstanceImageId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceIpv4Addresses:
          map['resourceAwsEc2InstanceIpv4Addresses'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersResourceAwsEc2InstanceIpv4Address>(
                  map['resourceAwsEc2InstanceIpv4Addresses'],
                  (value) =>
                      InsightFiltersResourceAwsEc2InstanceIpv4Address.fromMap(
                          (value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceIpv6Addresses:
          map['resourceAwsEc2InstanceIpv6Addresses'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersResourceAwsEc2InstanceIpv6Address>(
                  map['resourceAwsEc2InstanceIpv6Addresses'],
                  (value) =>
                      InsightFiltersResourceAwsEc2InstanceIpv6Address.fromMap(
                          (value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceKeyNames: map['resourceAwsEc2InstanceKeyNames'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  InsightFiltersResourceAwsEc2InstanceKeyName>(
              map['resourceAwsEc2InstanceKeyNames'],
              (value) => InsightFiltersResourceAwsEc2InstanceKeyName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceLaunchedAts:
          map['resourceAwsEc2InstanceLaunchedAts'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersResourceAwsEc2InstanceLaunchedAt>(
                  map['resourceAwsEc2InstanceLaunchedAts'],
                  (value) =>
                      InsightFiltersResourceAwsEc2InstanceLaunchedAt.fromMap(
                          (value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceSubnetIds: map['resourceAwsEc2InstanceSubnetIds'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  InsightFiltersResourceAwsEc2InstanceSubnetId>(
              map['resourceAwsEc2InstanceSubnetIds'],
              (value) => InsightFiltersResourceAwsEc2InstanceSubnetId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceTypes: map['resourceAwsEc2InstanceTypes'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceAwsEc2InstanceType>(
              map['resourceAwsEc2InstanceTypes'],
              (value) => InsightFiltersResourceAwsEc2InstanceType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceAwsEc2InstanceVpcIds: map['resourceAwsEc2InstanceVpcIds'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceAwsEc2InstanceVpcId>(
              map['resourceAwsEc2InstanceVpcIds'],
              (value) => InsightFiltersResourceAwsEc2InstanceVpcId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceAwsIamAccessKeyCreatedAts:
          map['resourceAwsIamAccessKeyCreatedAts'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersResourceAwsIamAccessKeyCreatedAt>(
                  map['resourceAwsIamAccessKeyCreatedAts'],
                  (value) =>
                      InsightFiltersResourceAwsIamAccessKeyCreatedAt.fromMap(
                          (value as Map).cast<String, dynamic>())),
      resourceAwsIamAccessKeyStatuses: map['resourceAwsIamAccessKeyStatuses'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  InsightFiltersResourceAwsIamAccessKeyStatus>(
              map['resourceAwsIamAccessKeyStatuses'],
              (value) => InsightFiltersResourceAwsIamAccessKeyStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceAwsIamAccessKeyUserNames:
          map['resourceAwsIamAccessKeyUserNames'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersResourceAwsIamAccessKeyUserName>(
                  map['resourceAwsIamAccessKeyUserNames'],
                  (value) =>
                      InsightFiltersResourceAwsIamAccessKeyUserName.fromMap(
                          (value as Map).cast<String, dynamic>())),
      resourceAwsS3BucketOwnerIds: map['resourceAwsS3BucketOwnerIds'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceAwsS3BucketOwnerId>(
              map['resourceAwsS3BucketOwnerIds'],
              (value) => InsightFiltersResourceAwsS3BucketOwnerId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceAwsS3BucketOwnerNames: map['resourceAwsS3BucketOwnerNames'] ==
              null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceAwsS3BucketOwnerName>(
              map['resourceAwsS3BucketOwnerNames'],
              (value) => InsightFiltersResourceAwsS3BucketOwnerName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceContainerImageIds: map['resourceContainerImageIds'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceContainerImageId>(
              map['resourceContainerImageIds'],
              (value) => InsightFiltersResourceContainerImageId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceContainerImageNames: map['resourceContainerImageNames'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceContainerImageName>(
              map['resourceContainerImageNames'],
              (value) => InsightFiltersResourceContainerImageName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceContainerLaunchedAts: map['resourceContainerLaunchedAts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceContainerLaunchedAt>(
              map['resourceContainerLaunchedAts'],
              (value) => InsightFiltersResourceContainerLaunchedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceContainerNames: map['resourceContainerNames'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceContainerName>(
              map['resourceContainerNames'],
              (value) => InsightFiltersResourceContainerName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceDetailsOthers: map['resourceDetailsOthers'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceDetailsOther>(
              map['resourceDetailsOthers'],
              (value) => InsightFiltersResourceDetailsOther.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceIds: map['resourceIds'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceId>(
              map['resourceIds'],
              (value) => InsightFiltersResourceId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourcePartitions: map['resourcePartitions'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourcePartition>(
              map['resourcePartitions'],
              (value) => InsightFiltersResourcePartition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceRegions: map['resourceRegions'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceRegion>(
              map['resourceRegions'],
              (value) => InsightFiltersResourceRegion.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceTags: map['resourceTags'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceTag>(
              map['resourceTags'],
              (value) => InsightFiltersResourceTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceTypes: map['resourceTypes'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersResourceType>(
              map['resourceTypes'],
              (value) => InsightFiltersResourceType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      severityLabels: map['severityLabels'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersSeverityLabel>(
              map['severityLabels'],
              (value) => InsightFiltersSeverityLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceUrls: map['sourceUrls'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersSourceUrl>(
              map['sourceUrls'],
              (value) => InsightFiltersSourceUrl.fromMap(
                  (value as Map).cast<String, dynamic>())),
      threatIntelIndicatorCategories: map['threatIntelIndicatorCategories'] ==
              null
          ? null
          : pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorCategory>(
              map['threatIntelIndicatorCategories'],
              (value) => InsightFiltersThreatIntelIndicatorCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      threatIntelIndicatorLastObservedAts:
          map['threatIntelIndicatorLastObservedAts'] == null
              ? null
              : pulumi.Input.decodeList<
                      InsightFiltersThreatIntelIndicatorLastObservedAt>(
                  map['threatIntelIndicatorLastObservedAts'],
                  (value) =>
                      InsightFiltersThreatIntelIndicatorLastObservedAt.fromMap(
                          (value as Map).cast<String, dynamic>())),
      threatIntelIndicatorSourceUrls: map['threatIntelIndicatorSourceUrls'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  InsightFiltersThreatIntelIndicatorSourceUrl>(
              map['threatIntelIndicatorSourceUrls'],
              (value) => InsightFiltersThreatIntelIndicatorSourceUrl.fromMap(
                  (value as Map).cast<String, dynamic>())),
      threatIntelIndicatorSources: map['threatIntelIndicatorSources'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorSource>(
              map['threatIntelIndicatorSources'],
              (value) => InsightFiltersThreatIntelIndicatorSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      threatIntelIndicatorTypes: map['threatIntelIndicatorTypes'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorType>(
              map['threatIntelIndicatorTypes'],
              (value) => InsightFiltersThreatIntelIndicatorType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      threatIntelIndicatorValues: map['threatIntelIndicatorValues'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorValue>(
              map['threatIntelIndicatorValues'],
              (value) => InsightFiltersThreatIntelIndicatorValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      titles: map['titles'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersTitle>(
              map['titles'],
              (value) => InsightFiltersTitle.fromMap(
                  (value as Map).cast<String, dynamic>())),
      types: map['types'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersType>(
              map['types'],
              (value) => InsightFiltersType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updatedAts: map['updatedAts'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersUpdatedAt>(
              map['updatedAts'],
              (value) => InsightFiltersUpdatedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      userDefinedValues: map['userDefinedValues'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersUserDefinedValue>(
              map['userDefinedValues'],
              (value) => InsightFiltersUserDefinedValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      verificationStates: map['verificationStates'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersVerificationState>(
              map['verificationStates'],
              (value) => InsightFiltersVerificationState.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workflowStatuses: map['workflowStatuses'] == null
          ? null
          : pulumi.Input.decodeList<InsightFiltersWorkflowStatus>(
              map['workflowStatuses'],
              (value) => InsightFiltersWorkflowStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
