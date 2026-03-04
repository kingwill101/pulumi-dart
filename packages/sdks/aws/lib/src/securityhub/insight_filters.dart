// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_filters_aws_account_id.dart';
import 'insight_filters_company_name.dart';
import 'insight_filters_compliance_status.dart';
import 'insight_filters_confidence.dart';
import 'insight_filters_created_at.dart';
import 'insight_filters_criticality.dart';
import 'insight_filters_description.dart';
import 'insight_filters_finding_provider_fields_confidence.dart';
import 'insight_filters_finding_provider_fields_criticality.dart';
import 'insight_filters_finding_provider_fields_related_findings_id.dart';
import 'insight_filters_finding_provider_fields_related_findings_product_arn.dart';
import 'insight_filters_finding_provider_fields_severity_label.dart';
import 'insight_filters_finding_provider_fields_severity_original.dart';
import 'insight_filters_finding_provider_fields_type.dart';
import 'insight_filters_first_observed_at.dart';
import 'insight_filters_generator_id.dart';
import 'insight_filters_id.dart';
import 'insight_filters_keyword.dart';
import 'insight_filters_last_observed_at.dart';
import 'insight_filters_malware_name.dart';
import 'insight_filters_malware_path.dart';
import 'insight_filters_malware_state.dart';
import 'insight_filters_malware_type.dart';
import 'insight_filters_network_destination_domain.dart';
import 'insight_filters_network_destination_ipv4.dart';
import 'insight_filters_network_destination_ipv6.dart';
import 'insight_filters_network_destination_port.dart';
import 'insight_filters_network_direction.dart';
import 'insight_filters_network_protocol.dart';
import 'insight_filters_network_source_domain.dart';
import 'insight_filters_network_source_ipv4.dart';
import 'insight_filters_network_source_ipv6.dart';
import 'insight_filters_network_source_mac.dart';
import 'insight_filters_network_source_port.dart';
import 'insight_filters_note_text.dart';
import 'insight_filters_note_updated_at.dart';
import 'insight_filters_note_updated_by.dart';
import 'insight_filters_process_launched_at.dart';
import 'insight_filters_process_name.dart';
import 'insight_filters_process_parent_pid.dart';
import 'insight_filters_process_path.dart';
import 'insight_filters_process_pid.dart';
import 'insight_filters_process_terminated_at.dart';
import 'insight_filters_product_arn.dart';
import 'insight_filters_product_field.dart';
import 'insight_filters_product_name.dart';
import 'insight_filters_recommendation_text.dart';
import 'insight_filters_record_state.dart';
import 'insight_filters_related_findings_id.dart';
import 'insight_filters_related_findings_product_arn.dart';
import 'insight_filters_resource_aws_ec2_instance_iam_instance_profile_arn.dart';
import 'insight_filters_resource_aws_ec2_instance_image_id.dart';
import 'insight_filters_resource_aws_ec2_instance_ipv4_address.dart';
import 'insight_filters_resource_aws_ec2_instance_ipv6_address.dart';
import 'insight_filters_resource_aws_ec2_instance_key_name.dart';
import 'insight_filters_resource_aws_ec2_instance_launched_at.dart';
import 'insight_filters_resource_aws_ec2_instance_subnet_id.dart';
import 'insight_filters_resource_aws_ec2_instance_type.dart';
import 'insight_filters_resource_aws_ec2_instance_vpc_id.dart';
import 'insight_filters_resource_aws_iam_access_key_created_at.dart';
import 'insight_filters_resource_aws_iam_access_key_status.dart';
import 'insight_filters_resource_aws_iam_access_key_user_name.dart';
import 'insight_filters_resource_aws_s3_bucket_owner_id.dart';
import 'insight_filters_resource_aws_s3_bucket_owner_name.dart';
import 'insight_filters_resource_container_image_id.dart';
import 'insight_filters_resource_container_image_name.dart';
import 'insight_filters_resource_container_launched_at.dart';
import 'insight_filters_resource_container_name.dart';
import 'insight_filters_resource_details_other.dart';
import 'insight_filters_resource_id.dart';
import 'insight_filters_resource_partition.dart';
import 'insight_filters_resource_region.dart';
import 'insight_filters_resource_tag.dart';
import 'insight_filters_resource_type.dart';
import 'insight_filters_severity_label.dart';
import 'insight_filters_source_url.dart';
import 'insight_filters_threat_intel_indicator_category.dart';
import 'insight_filters_threat_intel_indicator_last_observed_at.dart';
import 'insight_filters_threat_intel_indicator_source.dart';
import 'insight_filters_threat_intel_indicator_source_url.dart';
import 'insight_filters_threat_intel_indicator_type.dart';
import 'insight_filters_threat_intel_indicator_value.dart';
import 'insight_filters_title.dart';
import 'insight_filters_type.dart';
import 'insight_filters_updated_at.dart';
import 'insight_filters_user_defined_value.dart';
import 'insight_filters_verification_state.dart';
import 'insight_filters_workflow_status.dart';

class InsightFilters {
  /// AWS account ID that a finding is generated in. See String_Filter below for more details.
  final pulumi.Input<List<InsightFiltersAwsAccountId>>? awsAccountIds;

  /// The name of the findings provider (company) that owns the solution (product) that generates findings. See String_Filter below for more details.
  final pulumi.Input<List<InsightFiltersCompanyName>>? companyNames;

  /// Exclusive to findings that are generated as the result of a check run against a specific rule in a supported standard, such as CIS AWS Foundations. Contains security standard-related finding details. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersComplianceStatus>>? complianceStatuses;

  /// A finding's confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details.
  final pulumi.Input<List<InsightFiltersConfidence>>? confidences;

  /// An ISO8601-formatted timestamp that indicates when the security-findings provider captured the potential security issue that a finding captured. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersCreatedAt>>? createdAts;

  /// The level of importance assigned to the resources associated with the finding. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details.
  final pulumi.Input<List<InsightFiltersCriticality>>? criticalities;

  /// A finding's description. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersDescription>>? descriptions;

  /// The finding provider value for the finding confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details.
  final pulumi.Input<List<InsightFiltersFindingProviderFieldsConfidence>>?
  findingProviderFieldsConfidences;

  /// The finding provider value for the level of importance assigned to the resources associated with the findings. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details.
  final pulumi.Input<List<InsightFiltersFindingProviderFieldsCriticality>>?
  findingProviderFieldsCriticalities;

  /// The finding identifier of a related finding that is identified by the finding provider. See String Filter below for more details.
  final pulumi.Input<
    List<InsightFiltersFindingProviderFieldsRelatedFindingsId>
  >?
  findingProviderFieldsRelatedFindingsIds;

  /// The ARN of the solution that generated a related finding that is identified by the finding provider. See String Filter below for more details.
  final pulumi.Input<
    List<InsightFiltersFindingProviderFieldsRelatedFindingsProductArn>
  >?
  findingProviderFieldsRelatedFindingsProductArns;

  /// The finding provider value for the severity label. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersFindingProviderFieldsSeverityLabel>>?
  findingProviderFieldsSeverityLabels;

  /// The finding provider's original value for the severity. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersFindingProviderFieldsSeverityOriginal>>?
  findingProviderFieldsSeverityOriginals;

  /// One or more finding types that the finding provider assigned to the finding. Uses the format of `namespace/category/classifier` that classify a finding. Valid namespace values include: `Software and Configuration Checks`, `TTPs`, `Effects`, `Unusual Behaviors`, and `Sensitive Data Identifications`. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersFindingProviderFieldsType>>?
  findingProviderFieldsTypes;

  /// An ISO8601-formatted timestamp that indicates when the security-findings provider first observed the potential security issue that a finding captured. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersFirstObservedAt>>? firstObservedAts;

  /// The identifier for the solution-specific component (a discrete unit of logic) that generated a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersGeneratorId>>? generatorIds;

  /// The security findings provider-specific identifier for a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersId>>? ids;

  /// A keyword for a finding. See Keyword Filter below for more details.
  final pulumi.Input<List<InsightFiltersKeyword>>? keywords;

  /// An ISO8601-formatted timestamp that indicates when the security-findings provider most recently observed the potential security issue that a finding captured. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersLastObservedAt>>? lastObservedAts;

  /// The name of the malware that was observed. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersMalwareName>>? malwareNames;

  /// The filesystem path of the malware that was observed. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersMalwarePath>>? malwarePaths;

  /// The state of the malware that was observed. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersMalwareState>>? malwareStates;

  /// The type of the malware that was observed. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersMalwareType>>? malwareTypes;

  /// The destination domain of network-related information about a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkDestinationDomain>>?
  networkDestinationDomains;

  /// The destination IPv4 address of network-related information about a finding. See Ip Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkDestinationIpv4>>?
  networkDestinationIpv4s;

  /// The destination IPv6 address of network-related information about a finding. See Ip Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkDestinationIpv6>>?
  networkDestinationIpv6s;

  /// The destination port of network-related information about a finding. See Number Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkDestinationPort>>?
  networkDestinationPorts;

  /// Indicates the direction of network traffic associated with a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkDirection>>? networkDirections;

  /// The protocol of network-related information about a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkProtocol>>? networkProtocols;

  /// The source domain of network-related information about a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkSourceDomain>>?
  networkSourceDomains;

  /// The source IPv4 address of network-related information about a finding. See Ip Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkSourceIpv4>>? networkSourceIpv4s;

  /// The source IPv6 address of network-related information about a finding. See Ip Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkSourceIpv6>>? networkSourceIpv6s;

  /// The source media access control (MAC) address of network-related information about a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkSourceMac>>? networkSourceMacs;

  /// The source port of network-related information about a finding. See Number Filter below for more details.
  final pulumi.Input<List<InsightFiltersNetworkSourcePort>>? networkSourcePorts;

  /// The text of a note. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersNoteText>>? noteTexts;

  /// The timestamp of when the note was updated. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersNoteUpdatedAt>>? noteUpdatedAts;

  /// The principal that created a note. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersNoteUpdatedBy>>? noteUpdatedBies;

  /// The date/time that the process was launched. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersProcessLaunchedAt>>? processLaunchedAts;

  /// The name of the process. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersProcessName>>? processNames;

  /// The parent process ID. See Number Filter below for more details.
  final pulumi.Input<List<InsightFiltersProcessParentPid>>? processParentPids;

  /// The path to the process executable. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersProcessPath>>? processPaths;

  /// The process ID. See Number Filter below for more details.
  final pulumi.Input<List<InsightFiltersProcessPid>>? processPids;

  /// The date/time that the process was terminated. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersProcessTerminatedAt>>?
  processTerminatedAts;

  /// The ARN generated by Security Hub that uniquely identifies a third-party company (security findings provider) after this provider's product (solution that generates findings) is registered with Security Hub. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersProductArn>>? productArns;

  /// A data type where security-findings providers can include additional solution-specific details that aren't part of the defined `AwsSecurityFinding` format. See Map Filter below for more details.
  final pulumi.Input<List<InsightFiltersProductField>>? productFields;

  /// The name of the solution (product) that generates findings. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersProductName>>? productNames;

  /// The recommendation of what to do about the issue described in a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersRecommendationText>>?
  recommendationTexts;

  /// The updated record state for the finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersRecordState>>? recordStates;

  /// The solution-generated identifier for a related finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersRelatedFindingsId>>? relatedFindingsIds;

  /// The ARN of the solution that generated a related finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersRelatedFindingsProductArn>>?
  relatedFindingsProductArns;

  /// The IAM profile ARN of the instance. See String Filter below for more details.
  final pulumi.Input<
    List<InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn>
  >?
  resourceAwsEc2InstanceIamInstanceProfileArns;

  /// The Amazon Machine Image (AMI) ID of the instance. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsEc2InstanceImageId>>?
  resourceAwsEc2InstanceImageIds;

  /// The IPv4 addresses associated with the instance. See Ip Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsEc2InstanceIpv4Address>>?
  resourceAwsEc2InstanceIpv4Addresses;

  /// The IPv6 addresses associated with the instance. See Ip Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsEc2InstanceIpv6Address>>?
  resourceAwsEc2InstanceIpv6Addresses;

  /// The key name associated with the instance. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsEc2InstanceKeyName>>?
  resourceAwsEc2InstanceKeyNames;

  /// The date and time the instance was launched. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsEc2InstanceLaunchedAt>>?
  resourceAwsEc2InstanceLaunchedAts;

  /// The identifier of the subnet that the instance was launched in. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsEc2InstanceSubnetId>>?
  resourceAwsEc2InstanceSubnetIds;

  /// The instance type of the instance. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsEc2InstanceType>>?
  resourceAwsEc2InstanceTypes;

  /// The identifier of the VPC that the instance was launched in. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsEc2InstanceVpcId>>?
  resourceAwsEc2InstanceVpcIds;

  /// The creation date/time of the IAM access key related to a finding. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsIamAccessKeyCreatedAt>>?
  resourceAwsIamAccessKeyCreatedAts;

  /// The status of the IAM access key related to a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsIamAccessKeyStatus>>?
  resourceAwsIamAccessKeyStatuses;

  /// The user associated with the IAM access key related to a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsIamAccessKeyUserName>>?
  resourceAwsIamAccessKeyUserNames;

  /// The canonical user ID of the owner of the S3 bucket. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsS3BucketOwnerId>>?
  resourceAwsS3BucketOwnerIds;

  /// The display name of the owner of the S3 bucket. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceAwsS3BucketOwnerName>>?
  resourceAwsS3BucketOwnerNames;

  /// The identifier of the image related to a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceContainerImageId>>?
  resourceContainerImageIds;

  /// The name of the image related to a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceContainerImageName>>?
  resourceContainerImageNames;

  /// The date/time that the container was started. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceContainerLaunchedAt>>?
  resourceContainerLaunchedAts;

  /// The name of the container related to a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceContainerName>>?
  resourceContainerNames;

  /// The details of a resource that doesn't have a specific subfield for the resource type defined. See Map Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceDetailsOther>>?
  resourceDetailsOthers;

  /// The canonical identifier for the given resource type. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceId>>? resourceIds;

  /// The canonical AWS partition name that the Region is assigned to. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourcePartition>>? resourcePartitions;

  /// The canonical AWS external Region name where this resource is located. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceRegion>>? resourceRegions;

  /// A list of AWS tags associated with a resource at the time the finding was processed. See Map Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceTag>>? resourceTags;

  /// Specifies the type of the resource that details are provided for. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersResourceType>>? resourceTypes;

  /// The label of a finding's severity. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersSeverityLabel>>? severityLabels;

  /// A URL that links to a page about the current finding in the security-findings provider's solution. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersSourceUrl>>? sourceUrls;

  /// The category of a threat intelligence indicator. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersThreatIntelIndicatorCategory>>?
  threatIntelIndicatorCategories;

  /// The date/time of the last observation of a threat intelligence indicator. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersThreatIntelIndicatorLastObservedAt>>?
  threatIntelIndicatorLastObservedAts;

  /// The URL for more details from the source of the threat intelligence. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersThreatIntelIndicatorSourceUrl>>?
  threatIntelIndicatorSourceUrls;

  /// The source of the threat intelligence. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersThreatIntelIndicatorSource>>?
  threatIntelIndicatorSources;

  /// The type of a threat intelligence indicator. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersThreatIntelIndicatorType>>?
  threatIntelIndicatorTypes;

  /// The value of a threat intelligence indicator. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersThreatIntelIndicatorValue>>?
  threatIntelIndicatorValues;

  /// A finding's title. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersTitle>>? titles;

  /// A finding type in the format of `namespace/category/classifier` that classifies a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersType>>? types;

  /// An ISO8601-formatted timestamp that indicates when the security-findings provider last updated the finding record. See Date Filter below for more details.
  final pulumi.Input<List<InsightFiltersUpdatedAt>>? updatedAts;

  /// A list of name/value string pairs associated with the finding. These are custom, user-defined fields added to a finding. See Map Filter below for more details.
  final pulumi.Input<List<InsightFiltersUserDefinedValue>>? userDefinedValues;

  /// The veracity of a finding. See String Filter below for more details.
  final pulumi.Input<List<InsightFiltersVerificationState>>? verificationStates;

  /// The status of the investigation into a finding. See Workflow Status Filter below for more details.
  final pulumi.Input<List<InsightFiltersWorkflowStatus>>? workflowStatuses;

  /// Creates a new [InsightFilters].
  /// [awsAccountIds] AWS account ID that a finding is generated in. See String_Filter below for more details.
  /// [companyNames] The name of the findings provider (company) that owns the solution (product) that generates findings. See String_Filter below for more details.
  /// [complianceStatuses] Exclusive to findings that are generated as the result of a check run against a specific rule in a supported standard, such as CIS AWS Foundations. Contains security standard-related finding details. See String Filter below for more details.
  /// [confidences] A finding's confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details.
  /// [createdAts] An ISO8601-formatted timestamp that indicates when the security-findings provider captured the potential security issue that a finding captured. See Date Filter below for more details.
  /// [criticalities] The level of importance assigned to the resources associated with the finding. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details.
  /// [descriptions] A finding's description. See String Filter below for more details.
  /// [findingProviderFieldsConfidences] The finding provider value for the finding confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details.
  /// [findingProviderFieldsCriticalities] The finding provider value for the level of importance assigned to the resources associated with the findings. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details.
  /// [findingProviderFieldsRelatedFindingsIds] The finding identifier of a related finding that is identified by the finding provider. See String Filter below for more details.
  /// [findingProviderFieldsRelatedFindingsProductArns] The ARN of the solution that generated a related finding that is identified by the finding provider. See String Filter below for more details.
  /// [findingProviderFieldsSeverityLabels] The finding provider value for the severity label. See String Filter below for more details.
  /// [findingProviderFieldsSeverityOriginals] The finding provider's original value for the severity. See String Filter below for more details.
  /// [findingProviderFieldsTypes] One or more finding types that the finding provider assigned to the finding. Uses the format of `namespace/category/classifier` that classify a finding. Valid namespace values include: `Software and Configuration Checks`, `TTPs`, `Effects`, `Unusual Behaviors`, and `Sensitive Data Identifications`. See String Filter below for more details.
  /// [firstObservedAts] An ISO8601-formatted timestamp that indicates when the security-findings provider first observed the potential security issue that a finding captured. See Date Filter below for more details.
  /// [generatorIds] The identifier for the solution-specific component (a discrete unit of logic) that generated a finding. See String Filter below for more details.
  /// [ids] The security findings provider-specific identifier for a finding. See String Filter below for more details.
  /// [keywords] A keyword for a finding. See Keyword Filter below for more details.
  /// [lastObservedAts] An ISO8601-formatted timestamp that indicates when the security-findings provider most recently observed the potential security issue that a finding captured. See Date Filter below for more details.
  /// [malwareNames] The name of the malware that was observed. See String Filter below for more details.
  /// [malwarePaths] The filesystem path of the malware that was observed. See String Filter below for more details.
  /// [malwareStates] The state of the malware that was observed. See String Filter below for more details.
  /// [malwareTypes] The type of the malware that was observed. See String Filter below for more details.
  /// [networkDestinationDomains] The destination domain of network-related information about a finding. See String Filter below for more details.
  /// [networkDestinationIpv4s] The destination IPv4 address of network-related information about a finding. See Ip Filter below for more details.
  /// [networkDestinationIpv6s] The destination IPv6 address of network-related information about a finding. See Ip Filter below for more details.
  /// [networkDestinationPorts] The destination port of network-related information about a finding. See Number Filter below for more details.
  /// [networkDirections] Indicates the direction of network traffic associated with a finding. See String Filter below for more details.
  /// [networkProtocols] The protocol of network-related information about a finding. See String Filter below for more details.
  /// [networkSourceDomains] The source domain of network-related information about a finding. See String Filter below for more details.
  /// [networkSourceIpv4s] The source IPv4 address of network-related information about a finding. See Ip Filter below for more details.
  /// [networkSourceIpv6s] The source IPv6 address of network-related information about a finding. See Ip Filter below for more details.
  /// [networkSourceMacs] The source media access control (MAC) address of network-related information about a finding. See String Filter below for more details.
  /// [networkSourcePorts] The source port of network-related information about a finding. See Number Filter below for more details.
  /// [noteTexts] The text of a note. See String Filter below for more details.
  /// [noteUpdatedAts] The timestamp of when the note was updated. See Date Filter below for more details.
  /// [noteUpdatedBies] The principal that created a note. See String Filter below for more details.
  /// [processLaunchedAts] The date/time that the process was launched. See Date Filter below for more details.
  /// [processNames] The name of the process. See String Filter below for more details.
  /// [processParentPids] The parent process ID. See Number Filter below for more details.
  /// [processPaths] The path to the process executable. See String Filter below for more details.
  /// [processPids] The process ID. See Number Filter below for more details.
  /// [processTerminatedAts] The date/time that the process was terminated. See Date Filter below for more details.
  /// [productArns] The ARN generated by Security Hub that uniquely identifies a third-party company (security findings provider) after this provider's product (solution that generates findings) is registered with Security Hub. See String Filter below for more details.
  /// [productFields] A data type where security-findings providers can include additional solution-specific details that aren't part of the defined `AwsSecurityFinding` format. See Map Filter below for more details.
  /// [productNames] The name of the solution (product) that generates findings. See String Filter below for more details.
  /// [recommendationTexts] The recommendation of what to do about the issue described in a finding. See String Filter below for more details.
  /// [recordStates] The updated record state for the finding. See String Filter below for more details.
  /// [relatedFindingsIds] The solution-generated identifier for a related finding. See String Filter below for more details.
  /// [relatedFindingsProductArns] The ARN of the solution that generated a related finding. See String Filter below for more details.
  /// [resourceAwsEc2InstanceIamInstanceProfileArns] The IAM profile ARN of the instance. See String Filter below for more details.
  /// [resourceAwsEc2InstanceImageIds] The Amazon Machine Image (AMI) ID of the instance. See String Filter below for more details.
  /// [resourceAwsEc2InstanceIpv4Addresses] The IPv4 addresses associated with the instance. See Ip Filter below for more details.
  /// [resourceAwsEc2InstanceIpv6Addresses] The IPv6 addresses associated with the instance. See Ip Filter below for more details.
  /// [resourceAwsEc2InstanceKeyNames] The key name associated with the instance. See String Filter below for more details.
  /// [resourceAwsEc2InstanceLaunchedAts] The date and time the instance was launched. See Date Filter below for more details.
  /// [resourceAwsEc2InstanceSubnetIds] The identifier of the subnet that the instance was launched in. See String Filter below for more details.
  /// [resourceAwsEc2InstanceTypes] The instance type of the instance. See String Filter below for more details.
  /// [resourceAwsEc2InstanceVpcIds] The identifier of the VPC that the instance was launched in. See String Filter below for more details.
  /// [resourceAwsIamAccessKeyCreatedAts] The creation date/time of the IAM access key related to a finding. See Date Filter below for more details.
  /// [resourceAwsIamAccessKeyStatuses] The status of the IAM access key related to a finding. See String Filter below for more details.
  /// [resourceAwsIamAccessKeyUserNames] The user associated with the IAM access key related to a finding. See String Filter below for more details.
  /// [resourceAwsS3BucketOwnerIds] The canonical user ID of the owner of the S3 bucket. See String Filter below for more details.
  /// [resourceAwsS3BucketOwnerNames] The display name of the owner of the S3 bucket. See String Filter below for more details.
  /// [resourceContainerImageIds] The identifier of the image related to a finding. See String Filter below for more details.
  /// [resourceContainerImageNames] The name of the image related to a finding. See String Filter below for more details.
  /// [resourceContainerLaunchedAts] The date/time that the container was started. See Date Filter below for more details.
  /// [resourceContainerNames] The name of the container related to a finding. See String Filter below for more details.
  /// [resourceDetailsOthers] The details of a resource that doesn't have a specific subfield for the resource type defined. See Map Filter below for more details.
  /// [resourceIds] The canonical identifier for the given resource type. See String Filter below for more details.
  /// [resourcePartitions] The canonical AWS partition name that the Region is assigned to. See String Filter below for more details.
  /// [resourceRegions] The canonical AWS external Region name where this resource is located. See String Filter below for more details.
  /// [resourceTags] A list of AWS tags associated with a resource at the time the finding was processed. See Map Filter below for more details.
  /// [resourceTypes] Specifies the type of the resource that details are provided for. See String Filter below for more details.
  /// [severityLabels] The label of a finding's severity. See String Filter below for more details.
  /// [sourceUrls] A URL that links to a page about the current finding in the security-findings provider's solution. See String Filter below for more details.
  /// [threatIntelIndicatorCategories] The category of a threat intelligence indicator. See String Filter below for more details.
  /// [threatIntelIndicatorLastObservedAts] The date/time of the last observation of a threat intelligence indicator. See Date Filter below for more details.
  /// [threatIntelIndicatorSourceUrls] The URL for more details from the source of the threat intelligence. See String Filter below for more details.
  /// [threatIntelIndicatorSources] The source of the threat intelligence. See String Filter below for more details.
  /// [threatIntelIndicatorTypes] The type of a threat intelligence indicator. See String Filter below for more details.
  /// [threatIntelIndicatorValues] The value of a threat intelligence indicator. See String Filter below for more details.
  /// [titles] A finding's title. See String Filter below for more details.
  /// [types] A finding type in the format of `namespace/category/classifier` that classifies a finding. See String Filter below for more details.
  /// [updatedAts] An ISO8601-formatted timestamp that indicates when the security-findings provider last updated the finding record. See Date Filter below for more details.
  /// [userDefinedValues] A list of name/value string pairs associated with the finding. These are custom, user-defined fields added to a finding. See Map Filter below for more details.
  /// [verificationStates] The veracity of a finding. See String Filter below for more details.
  /// [workflowStatuses] The status of the investigation into a finding. See Workflow Status Filter below for more details.
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
    return <String, dynamic>{
      'awsAccountIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersAwsAccountId>,
            List<Map<String, dynamic>>
          >(
            awsAccountIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersAwsAccountId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'companyNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersCompanyName>,
            List<Map<String, dynamic>>
          >(
            companyNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersCompanyName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'complianceStatuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersComplianceStatus>,
            List<Map<String, dynamic>>
          >(
            complianceStatuses,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersComplianceStatus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'confidences':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersConfidence>,
            List<Map<String, dynamic>>
          >(
            confidences,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersConfidence,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'createdAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersCreatedAt>,
            List<Map<String, dynamic>>
          >(
            createdAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersCreatedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'criticalities':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersCriticality>,
            List<Map<String, dynamic>>
          >(
            criticalities,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersCriticality,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'descriptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersDescription>,
            List<Map<String, dynamic>>
          >(
            descriptions,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersDescription,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingProviderFieldsConfidences':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersFindingProviderFieldsConfidence>,
            List<Map<String, dynamic>>
          >(
            findingProviderFieldsConfidences,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersFindingProviderFieldsConfidence,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingProviderFieldsCriticalities':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersFindingProviderFieldsCriticality>,
            List<Map<String, dynamic>>
          >(
            findingProviderFieldsCriticalities,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersFindingProviderFieldsCriticality,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingProviderFieldsRelatedFindingsIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersFindingProviderFieldsRelatedFindingsId>,
            List<Map<String, dynamic>>
          >(
            findingProviderFieldsRelatedFindingsIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersFindingProviderFieldsRelatedFindingsId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingProviderFieldsRelatedFindingsProductArns':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersFindingProviderFieldsRelatedFindingsProductArn>,
            List<Map<String, dynamic>>
          >(
            findingProviderFieldsRelatedFindingsProductArns,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersFindingProviderFieldsRelatedFindingsProductArn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingProviderFieldsSeverityLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersFindingProviderFieldsSeverityLabel>,
            List<Map<String, dynamic>>
          >(
            findingProviderFieldsSeverityLabels,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersFindingProviderFieldsSeverityLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingProviderFieldsSeverityOriginals':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersFindingProviderFieldsSeverityOriginal>,
            List<Map<String, dynamic>>
          >(
            findingProviderFieldsSeverityOriginals,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersFindingProviderFieldsSeverityOriginal,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingProviderFieldsTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersFindingProviderFieldsType>,
            List<Map<String, dynamic>>
          >(
            findingProviderFieldsTypes,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersFindingProviderFieldsType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'firstObservedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersFirstObservedAt>,
            List<Map<String, dynamic>>
          >(
            firstObservedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersFirstObservedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'generatorIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersGeneratorId>,
            List<Map<String, dynamic>>
          >(
            generatorIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersGeneratorId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ids':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersId>,
            List<Map<String, dynamic>>
          >(
            ids,
            (value) =>
                pulumi.Input.encodeList<InsightFiltersId, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'keywords':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersKeyword>,
            List<Map<String, dynamic>>
          >(
            keywords,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersKeyword,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lastObservedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersLastObservedAt>,
            List<Map<String, dynamic>>
          >(
            lastObservedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersLastObservedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'malwareNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersMalwareName>,
            List<Map<String, dynamic>>
          >(
            malwareNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersMalwareName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'malwarePaths':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersMalwarePath>,
            List<Map<String, dynamic>>
          >(
            malwarePaths,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersMalwarePath,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'malwareStates':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersMalwareState>,
            List<Map<String, dynamic>>
          >(
            malwareStates,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersMalwareState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'malwareTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersMalwareType>,
            List<Map<String, dynamic>>
          >(
            malwareTypes,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersMalwareType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkDestinationDomains':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkDestinationDomain>,
            List<Map<String, dynamic>>
          >(
            networkDestinationDomains,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkDestinationDomain,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkDestinationIpv4s':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkDestinationIpv4>,
            List<Map<String, dynamic>>
          >(
            networkDestinationIpv4s,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkDestinationIpv4,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkDestinationIpv6s':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkDestinationIpv6>,
            List<Map<String, dynamic>>
          >(
            networkDestinationIpv6s,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkDestinationIpv6,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkDestinationPorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkDestinationPort>,
            List<Map<String, dynamic>>
          >(
            networkDestinationPorts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkDestinationPort,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkDirections':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkDirection>,
            List<Map<String, dynamic>>
          >(
            networkDirections,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkDirection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkProtocols':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkProtocol>,
            List<Map<String, dynamic>>
          >(
            networkProtocols,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkProtocol,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkSourceDomains':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkSourceDomain>,
            List<Map<String, dynamic>>
          >(
            networkSourceDomains,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkSourceDomain,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkSourceIpv4s':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkSourceIpv4>,
            List<Map<String, dynamic>>
          >(
            networkSourceIpv4s,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkSourceIpv4,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkSourceIpv6s':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkSourceIpv6>,
            List<Map<String, dynamic>>
          >(
            networkSourceIpv6s,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkSourceIpv6,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkSourceMacs':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkSourceMac>,
            List<Map<String, dynamic>>
          >(
            networkSourceMacs,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkSourceMac,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkSourcePorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNetworkSourcePort>,
            List<Map<String, dynamic>>
          >(
            networkSourcePorts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNetworkSourcePort,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'noteTexts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNoteText>,
            List<Map<String, dynamic>>
          >(
            noteTexts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNoteText,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'noteUpdatedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNoteUpdatedAt>,
            List<Map<String, dynamic>>
          >(
            noteUpdatedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNoteUpdatedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'noteUpdatedBies':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersNoteUpdatedBy>,
            List<Map<String, dynamic>>
          >(
            noteUpdatedBies,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersNoteUpdatedBy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'processLaunchedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProcessLaunchedAt>,
            List<Map<String, dynamic>>
          >(
            processLaunchedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProcessLaunchedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'processNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProcessName>,
            List<Map<String, dynamic>>
          >(
            processNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProcessName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'processParentPids':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProcessParentPid>,
            List<Map<String, dynamic>>
          >(
            processParentPids,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProcessParentPid,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'processPaths':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProcessPath>,
            List<Map<String, dynamic>>
          >(
            processPaths,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProcessPath,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'processPids':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProcessPid>,
            List<Map<String, dynamic>>
          >(
            processPids,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProcessPid,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'processTerminatedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProcessTerminatedAt>,
            List<Map<String, dynamic>>
          >(
            processTerminatedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProcessTerminatedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'productArns':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProductArn>,
            List<Map<String, dynamic>>
          >(
            productArns,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProductArn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'productFields':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProductField>,
            List<Map<String, dynamic>>
          >(
            productFields,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProductField,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'productNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersProductName>,
            List<Map<String, dynamic>>
          >(
            productNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersProductName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'recommendationTexts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersRecommendationText>,
            List<Map<String, dynamic>>
          >(
            recommendationTexts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersRecommendationText,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'recordStates':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersRecordState>,
            List<Map<String, dynamic>>
          >(
            recordStates,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersRecordState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'relatedFindingsIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersRelatedFindingsId>,
            List<Map<String, dynamic>>
          >(
            relatedFindingsIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersRelatedFindingsId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'relatedFindingsProductArns':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersRelatedFindingsProductArn>,
            List<Map<String, dynamic>>
          >(
            relatedFindingsProductArns,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersRelatedFindingsProductArn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceIamInstanceProfileArns':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceIamInstanceProfileArns,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceImageIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceImageId>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceImageIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceImageId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceIpv4Addresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceIpv4Address>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceIpv4Addresses,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceIpv4Address,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceIpv6Addresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceIpv6Address>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceIpv6Addresses,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceIpv6Address,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceKeyNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceKeyName>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceKeyNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceKeyName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceLaunchedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceLaunchedAt>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceLaunchedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceLaunchedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceSubnetIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceSubnetId>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceSubnetIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceSubnetId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceType>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceTypes,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsEc2InstanceVpcIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsEc2InstanceVpcId>,
            List<Map<String, dynamic>>
          >(
            resourceAwsEc2InstanceVpcIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsEc2InstanceVpcId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsIamAccessKeyCreatedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsIamAccessKeyCreatedAt>,
            List<Map<String, dynamic>>
          >(
            resourceAwsIamAccessKeyCreatedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsIamAccessKeyCreatedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsIamAccessKeyStatuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsIamAccessKeyStatus>,
            List<Map<String, dynamic>>
          >(
            resourceAwsIamAccessKeyStatuses,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsIamAccessKeyStatus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsIamAccessKeyUserNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsIamAccessKeyUserName>,
            List<Map<String, dynamic>>
          >(
            resourceAwsIamAccessKeyUserNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsIamAccessKeyUserName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsS3BucketOwnerIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsS3BucketOwnerId>,
            List<Map<String, dynamic>>
          >(
            resourceAwsS3BucketOwnerIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsS3BucketOwnerId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAwsS3BucketOwnerNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceAwsS3BucketOwnerName>,
            List<Map<String, dynamic>>
          >(
            resourceAwsS3BucketOwnerNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceAwsS3BucketOwnerName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceContainerImageIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceContainerImageId>,
            List<Map<String, dynamic>>
          >(
            resourceContainerImageIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceContainerImageId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceContainerImageNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceContainerImageName>,
            List<Map<String, dynamic>>
          >(
            resourceContainerImageNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceContainerImageName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceContainerLaunchedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceContainerLaunchedAt>,
            List<Map<String, dynamic>>
          >(
            resourceContainerLaunchedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceContainerLaunchedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceContainerNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceContainerName>,
            List<Map<String, dynamic>>
          >(
            resourceContainerNames,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceContainerName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceDetailsOthers':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceDetailsOther>,
            List<Map<String, dynamic>>
          >(
            resourceDetailsOthers,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceDetailsOther,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceId>,
            List<Map<String, dynamic>>
          >(
            resourceIds,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourcePartitions':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourcePartition>,
            List<Map<String, dynamic>>
          >(
            resourcePartitions,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourcePartition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceRegions':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceRegion>,
            List<Map<String, dynamic>>
          >(
            resourceRegions,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceRegion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceTag>,
            List<Map<String, dynamic>>
          >(
            resourceTags,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersResourceType>,
            List<Map<String, dynamic>>
          >(
            resourceTypes,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersResourceType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'severityLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersSeverityLabel>,
            List<Map<String, dynamic>>
          >(
            severityLabels,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersSeverityLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceUrls':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersSourceUrl>,
            List<Map<String, dynamic>>
          >(
            sourceUrls,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersSourceUrl,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threatIntelIndicatorCategories':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersThreatIntelIndicatorCategory>,
            List<Map<String, dynamic>>
          >(
            threatIntelIndicatorCategories,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersThreatIntelIndicatorCategory,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threatIntelIndicatorLastObservedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersThreatIntelIndicatorLastObservedAt>,
            List<Map<String, dynamic>>
          >(
            threatIntelIndicatorLastObservedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersThreatIntelIndicatorLastObservedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threatIntelIndicatorSourceUrls':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersThreatIntelIndicatorSourceUrl>,
            List<Map<String, dynamic>>
          >(
            threatIntelIndicatorSourceUrls,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersThreatIntelIndicatorSourceUrl,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threatIntelIndicatorSources':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersThreatIntelIndicatorSource>,
            List<Map<String, dynamic>>
          >(
            threatIntelIndicatorSources,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersThreatIntelIndicatorSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threatIntelIndicatorTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersThreatIntelIndicatorType>,
            List<Map<String, dynamic>>
          >(
            threatIntelIndicatorTypes,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersThreatIntelIndicatorType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threatIntelIndicatorValues':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersThreatIntelIndicatorValue>,
            List<Map<String, dynamic>>
          >(
            threatIntelIndicatorValues,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersThreatIntelIndicatorValue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'titles':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersTitle>,
            List<Map<String, dynamic>>
          >(
            titles,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersTitle,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'types':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersType>,
            List<Map<String, dynamic>>
          >(
            types,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'updatedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersUpdatedAt>,
            List<Map<String, dynamic>>
          >(
            updatedAts,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersUpdatedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'userDefinedValues':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersUserDefinedValue>,
            List<Map<String, dynamic>>
          >(
            userDefinedValues,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersUserDefinedValue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'verificationStates':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersVerificationState>,
            List<Map<String, dynamic>>
          >(
            verificationStates,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersVerificationState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'workflowStatuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightFiltersWorkflowStatus>,
            List<Map<String, dynamic>>
          >(
            workflowStatuses,
            (value) =>
                pulumi.Input.encodeList<
                  InsightFiltersWorkflowStatus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory InsightFilters.fromMap(Map<String, dynamic> map) {
    return InsightFilters(
      awsAccountIds: (() {
        final guardedValue = map['awsAccountIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersAwsAccountId>(
            guardedValue,
            (value) => InsightFiltersAwsAccountId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      companyNames: (() {
        final guardedValue = map['companyNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersCompanyName>(
            guardedValue,
            (value) => InsightFiltersCompanyName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      complianceStatuses: (() {
        final guardedValue = map['complianceStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersComplianceStatus>(
            guardedValue,
            (value) => InsightFiltersComplianceStatus.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      confidences: (() {
        final guardedValue = map['confidences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersConfidence>(
            guardedValue,
            (value) => InsightFiltersConfidence.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      createdAts: (() {
        final guardedValue = map['createdAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersCreatedAt>(
            guardedValue,
            (value) => InsightFiltersCreatedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      criticalities: (() {
        final guardedValue = map['criticalities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersCriticality>(
            guardedValue,
            (value) => InsightFiltersCriticality.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      descriptions: (() {
        final guardedValue = map['descriptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersDescription>(
            guardedValue,
            (value) => InsightFiltersDescription.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      findingProviderFieldsConfidences: (() {
        final guardedValue = map['findingProviderFieldsConfidences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<InsightFiltersFindingProviderFieldsConfidence>(
            guardedValue,
            (value) => InsightFiltersFindingProviderFieldsConfidence.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      findingProviderFieldsCriticalities: (() {
        final guardedValue = map['findingProviderFieldsCriticalities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<InsightFiltersFindingProviderFieldsCriticality>(
            guardedValue,
            (value) => InsightFiltersFindingProviderFieldsCriticality.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      findingProviderFieldsRelatedFindingsIds: (() {
        final guardedValue = map['findingProviderFieldsRelatedFindingsIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InsightFiltersFindingProviderFieldsRelatedFindingsId
          >(
            guardedValue,
            (value) =>
                InsightFiltersFindingProviderFieldsRelatedFindingsId.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      findingProviderFieldsRelatedFindingsProductArns: (() {
        final guardedValue =
            map['findingProviderFieldsRelatedFindingsProductArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InsightFiltersFindingProviderFieldsRelatedFindingsProductArn
          >(
            guardedValue,
            (value) =>
                InsightFiltersFindingProviderFieldsRelatedFindingsProductArn.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      findingProviderFieldsSeverityLabels: (() {
        final guardedValue = map['findingProviderFieldsSeverityLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InsightFiltersFindingProviderFieldsSeverityLabel
          >(
            guardedValue,
            (value) => InsightFiltersFindingProviderFieldsSeverityLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      findingProviderFieldsSeverityOriginals: (() {
        final guardedValue = map['findingProviderFieldsSeverityOriginals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InsightFiltersFindingProviderFieldsSeverityOriginal
          >(
            guardedValue,
            (value) =>
                InsightFiltersFindingProviderFieldsSeverityOriginal.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      findingProviderFieldsTypes: (() {
        final guardedValue = map['findingProviderFieldsTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersFindingProviderFieldsType>(
            guardedValue,
            (value) => InsightFiltersFindingProviderFieldsType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      firstObservedAts: (() {
        final guardedValue = map['firstObservedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersFirstObservedAt>(
            guardedValue,
            (value) => InsightFiltersFirstObservedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      generatorIds: (() {
        final guardedValue = map['generatorIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersGeneratorId>(
            guardedValue,
            (value) => InsightFiltersGeneratorId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersId>(
            guardedValue,
            (value) => InsightFiltersId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      keywords: (() {
        final guardedValue = map['keywords'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersKeyword>(
            guardedValue,
            (value) => InsightFiltersKeyword.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lastObservedAts: (() {
        final guardedValue = map['lastObservedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersLastObservedAt>(
            guardedValue,
            (value) => InsightFiltersLastObservedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      malwareNames: (() {
        final guardedValue = map['malwareNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersMalwareName>(
            guardedValue,
            (value) => InsightFiltersMalwareName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      malwarePaths: (() {
        final guardedValue = map['malwarePaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersMalwarePath>(
            guardedValue,
            (value) => InsightFiltersMalwarePath.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      malwareStates: (() {
        final guardedValue = map['malwareStates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersMalwareState>(
            guardedValue,
            (value) => InsightFiltersMalwareState.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      malwareTypes: (() {
        final guardedValue = map['malwareTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersMalwareType>(
            guardedValue,
            (value) => InsightFiltersMalwareType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkDestinationDomains: (() {
        final guardedValue = map['networkDestinationDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkDestinationDomain>(
            guardedValue,
            (value) => InsightFiltersNetworkDestinationDomain.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkDestinationIpv4s: (() {
        final guardedValue = map['networkDestinationIpv4s'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkDestinationIpv4>(
            guardedValue,
            (value) => InsightFiltersNetworkDestinationIpv4.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkDestinationIpv6s: (() {
        final guardedValue = map['networkDestinationIpv6s'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkDestinationIpv6>(
            guardedValue,
            (value) => InsightFiltersNetworkDestinationIpv6.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkDestinationPorts: (() {
        final guardedValue = map['networkDestinationPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkDestinationPort>(
            guardedValue,
            (value) => InsightFiltersNetworkDestinationPort.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkDirections: (() {
        final guardedValue = map['networkDirections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkDirection>(
            guardedValue,
            (value) => InsightFiltersNetworkDirection.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkProtocols: (() {
        final guardedValue = map['networkProtocols'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkProtocol>(
            guardedValue,
            (value) => InsightFiltersNetworkProtocol.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkSourceDomains: (() {
        final guardedValue = map['networkSourceDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkSourceDomain>(
            guardedValue,
            (value) => InsightFiltersNetworkSourceDomain.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkSourceIpv4s: (() {
        final guardedValue = map['networkSourceIpv4s'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkSourceIpv4>(
            guardedValue,
            (value) => InsightFiltersNetworkSourceIpv4.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkSourceIpv6s: (() {
        final guardedValue = map['networkSourceIpv6s'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkSourceIpv6>(
            guardedValue,
            (value) => InsightFiltersNetworkSourceIpv6.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkSourceMacs: (() {
        final guardedValue = map['networkSourceMacs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkSourceMac>(
            guardedValue,
            (value) => InsightFiltersNetworkSourceMac.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkSourcePorts: (() {
        final guardedValue = map['networkSourcePorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNetworkSourcePort>(
            guardedValue,
            (value) => InsightFiltersNetworkSourcePort.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      noteTexts: (() {
        final guardedValue = map['noteTexts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNoteText>(
            guardedValue,
            (value) => InsightFiltersNoteText.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      noteUpdatedAts: (() {
        final guardedValue = map['noteUpdatedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNoteUpdatedAt>(
            guardedValue,
            (value) => InsightFiltersNoteUpdatedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      noteUpdatedBies: (() {
        final guardedValue = map['noteUpdatedBies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersNoteUpdatedBy>(
            guardedValue,
            (value) => InsightFiltersNoteUpdatedBy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      processLaunchedAts: (() {
        final guardedValue = map['processLaunchedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProcessLaunchedAt>(
            guardedValue,
            (value) => InsightFiltersProcessLaunchedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      processNames: (() {
        final guardedValue = map['processNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProcessName>(
            guardedValue,
            (value) => InsightFiltersProcessName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      processParentPids: (() {
        final guardedValue = map['processParentPids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProcessParentPid>(
            guardedValue,
            (value) => InsightFiltersProcessParentPid.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      processPaths: (() {
        final guardedValue = map['processPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProcessPath>(
            guardedValue,
            (value) => InsightFiltersProcessPath.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      processPids: (() {
        final guardedValue = map['processPids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProcessPid>(
            guardedValue,
            (value) => InsightFiltersProcessPid.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      processTerminatedAts: (() {
        final guardedValue = map['processTerminatedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProcessTerminatedAt>(
            guardedValue,
            (value) => InsightFiltersProcessTerminatedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      productArns: (() {
        final guardedValue = map['productArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProductArn>(
            guardedValue,
            (value) => InsightFiltersProductArn.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      productFields: (() {
        final guardedValue = map['productFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProductField>(
            guardedValue,
            (value) => InsightFiltersProductField.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      productNames: (() {
        final guardedValue = map['productNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersProductName>(
            guardedValue,
            (value) => InsightFiltersProductName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      recommendationTexts: (() {
        final guardedValue = map['recommendationTexts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersRecommendationText>(
            guardedValue,
            (value) => InsightFiltersRecommendationText.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      recordStates: (() {
        final guardedValue = map['recordStates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersRecordState>(
            guardedValue,
            (value) => InsightFiltersRecordState.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      relatedFindingsIds: (() {
        final guardedValue = map['relatedFindingsIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersRelatedFindingsId>(
            guardedValue,
            (value) => InsightFiltersRelatedFindingsId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      relatedFindingsProductArns: (() {
        final guardedValue = map['relatedFindingsProductArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersRelatedFindingsProductArn>(
            guardedValue,
            (value) => InsightFiltersRelatedFindingsProductArn.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsEc2InstanceIamInstanceProfileArns: (() {
        final guardedValue =
            map['resourceAwsEc2InstanceIamInstanceProfileArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn
          >(
            guardedValue,
            (value) =>
                InsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      resourceAwsEc2InstanceImageIds: (() {
        final guardedValue = map['resourceAwsEc2InstanceImageIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceAwsEc2InstanceImageId>(
            guardedValue,
            (value) => InsightFiltersResourceAwsEc2InstanceImageId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsEc2InstanceIpv4Addresses: (() {
        final guardedValue = map['resourceAwsEc2InstanceIpv4Addresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InsightFiltersResourceAwsEc2InstanceIpv4Address
          >(
            guardedValue,
            (value) => InsightFiltersResourceAwsEc2InstanceIpv4Address.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsEc2InstanceIpv6Addresses: (() {
        final guardedValue = map['resourceAwsEc2InstanceIpv6Addresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InsightFiltersResourceAwsEc2InstanceIpv6Address
          >(
            guardedValue,
            (value) => InsightFiltersResourceAwsEc2InstanceIpv6Address.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsEc2InstanceKeyNames: (() {
        final guardedValue = map['resourceAwsEc2InstanceKeyNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceAwsEc2InstanceKeyName>(
            guardedValue,
            (value) => InsightFiltersResourceAwsEc2InstanceKeyName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsEc2InstanceLaunchedAts: (() {
        final guardedValue = map['resourceAwsEc2InstanceLaunchedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<InsightFiltersResourceAwsEc2InstanceLaunchedAt>(
            guardedValue,
            (value) => InsightFiltersResourceAwsEc2InstanceLaunchedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsEc2InstanceSubnetIds: (() {
        final guardedValue = map['resourceAwsEc2InstanceSubnetIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceAwsEc2InstanceSubnetId>(
            guardedValue,
            (value) => InsightFiltersResourceAwsEc2InstanceSubnetId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsEc2InstanceTypes: (() {
        final guardedValue = map['resourceAwsEc2InstanceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceAwsEc2InstanceType>(
            guardedValue,
            (value) => InsightFiltersResourceAwsEc2InstanceType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsEc2InstanceVpcIds: (() {
        final guardedValue = map['resourceAwsEc2InstanceVpcIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceAwsEc2InstanceVpcId>(
            guardedValue,
            (value) => InsightFiltersResourceAwsEc2InstanceVpcId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsIamAccessKeyCreatedAts: (() {
        final guardedValue = map['resourceAwsIamAccessKeyCreatedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<InsightFiltersResourceAwsIamAccessKeyCreatedAt>(
            guardedValue,
            (value) => InsightFiltersResourceAwsIamAccessKeyCreatedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsIamAccessKeyStatuses: (() {
        final guardedValue = map['resourceAwsIamAccessKeyStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceAwsIamAccessKeyStatus>(
            guardedValue,
            (value) => InsightFiltersResourceAwsIamAccessKeyStatus.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsIamAccessKeyUserNames: (() {
        final guardedValue = map['resourceAwsIamAccessKeyUserNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<InsightFiltersResourceAwsIamAccessKeyUserName>(
            guardedValue,
            (value) => InsightFiltersResourceAwsIamAccessKeyUserName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsS3BucketOwnerIds: (() {
        final guardedValue = map['resourceAwsS3BucketOwnerIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceAwsS3BucketOwnerId>(
            guardedValue,
            (value) => InsightFiltersResourceAwsS3BucketOwnerId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceAwsS3BucketOwnerNames: (() {
        final guardedValue = map['resourceAwsS3BucketOwnerNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceAwsS3BucketOwnerName>(
            guardedValue,
            (value) => InsightFiltersResourceAwsS3BucketOwnerName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceContainerImageIds: (() {
        final guardedValue = map['resourceContainerImageIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceContainerImageId>(
            guardedValue,
            (value) => InsightFiltersResourceContainerImageId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceContainerImageNames: (() {
        final guardedValue = map['resourceContainerImageNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceContainerImageName>(
            guardedValue,
            (value) => InsightFiltersResourceContainerImageName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceContainerLaunchedAts: (() {
        final guardedValue = map['resourceContainerLaunchedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceContainerLaunchedAt>(
            guardedValue,
            (value) => InsightFiltersResourceContainerLaunchedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceContainerNames: (() {
        final guardedValue = map['resourceContainerNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceContainerName>(
            guardedValue,
            (value) => InsightFiltersResourceContainerName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceDetailsOthers: (() {
        final guardedValue = map['resourceDetailsOthers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceDetailsOther>(
            guardedValue,
            (value) => InsightFiltersResourceDetailsOther.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceIds: (() {
        final guardedValue = map['resourceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceId>(
            guardedValue,
            (value) => InsightFiltersResourceId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourcePartitions: (() {
        final guardedValue = map['resourcePartitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourcePartition>(
            guardedValue,
            (value) => InsightFiltersResourcePartition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceRegions: (() {
        final guardedValue = map['resourceRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceRegion>(
            guardedValue,
            (value) => InsightFiltersResourceRegion.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceTags: (() {
        final guardedValue = map['resourceTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceTag>(
            guardedValue,
            (value) => InsightFiltersResourceTag.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceTypes: (() {
        final guardedValue = map['resourceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersResourceType>(
            guardedValue,
            (value) => InsightFiltersResourceType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      severityLabels: (() {
        final guardedValue = map['severityLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersSeverityLabel>(
            guardedValue,
            (value) => InsightFiltersSeverityLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sourceUrls: (() {
        final guardedValue = map['sourceUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersSourceUrl>(
            guardedValue,
            (value) => InsightFiltersSourceUrl.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      threatIntelIndicatorCategories: (() {
        final guardedValue = map['threatIntelIndicatorCategories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorCategory>(
            guardedValue,
            (value) => InsightFiltersThreatIntelIndicatorCategory.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      threatIntelIndicatorLastObservedAts: (() {
        final guardedValue = map['threatIntelIndicatorLastObservedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InsightFiltersThreatIntelIndicatorLastObservedAt
          >(
            guardedValue,
            (value) => InsightFiltersThreatIntelIndicatorLastObservedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      threatIntelIndicatorSourceUrls: (() {
        final guardedValue = map['threatIntelIndicatorSourceUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorSourceUrl>(
            guardedValue,
            (value) => InsightFiltersThreatIntelIndicatorSourceUrl.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      threatIntelIndicatorSources: (() {
        final guardedValue = map['threatIntelIndicatorSources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorSource>(
            guardedValue,
            (value) => InsightFiltersThreatIntelIndicatorSource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      threatIntelIndicatorTypes: (() {
        final guardedValue = map['threatIntelIndicatorTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorType>(
            guardedValue,
            (value) => InsightFiltersThreatIntelIndicatorType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      threatIntelIndicatorValues: (() {
        final guardedValue = map['threatIntelIndicatorValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersThreatIntelIndicatorValue>(
            guardedValue,
            (value) => InsightFiltersThreatIntelIndicatorValue.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      titles: (() {
        final guardedValue = map['titles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersTitle>(
            guardedValue,
            (value) => InsightFiltersTitle.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      types: (() {
        final guardedValue = map['types'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersType>(
            guardedValue,
            (value) => InsightFiltersType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      updatedAts: (() {
        final guardedValue = map['updatedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersUpdatedAt>(
            guardedValue,
            (value) => InsightFiltersUpdatedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      userDefinedValues: (() {
        final guardedValue = map['userDefinedValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersUserDefinedValue>(
            guardedValue,
            (value) => InsightFiltersUserDefinedValue.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      verificationStates: (() {
        final guardedValue = map['verificationStates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersVerificationState>(
            guardedValue,
            (value) => InsightFiltersVerificationState.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      workflowStatuses: (() {
        final guardedValue = map['workflowStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightFiltersWorkflowStatus>(
            guardedValue,
            (value) => InsightFiltersWorkflowStatus.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
