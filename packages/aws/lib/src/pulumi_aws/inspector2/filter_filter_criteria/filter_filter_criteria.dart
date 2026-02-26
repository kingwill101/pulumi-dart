// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../filter_filter_criteria_aws_account_id/filter_filter_criteria_aws_account_id.dart';
import '../filter_filter_criteria_code_repository_project_name/filter_filter_criteria_code_repository_project_name.dart';
import '../filter_filter_criteria_code_repository_provider_type/filter_filter_criteria_code_repository_provider_type.dart';
import '../filter_filter_criteria_code_vulnerability_detector_name/filter_filter_criteria_code_vulnerability_detector_name.dart';
import '../filter_filter_criteria_code_vulnerability_detector_tag/filter_filter_criteria_code_vulnerability_detector_tag.dart';
import '../filter_filter_criteria_code_vulnerability_file_path/filter_filter_criteria_code_vulnerability_file_path.dart';
import '../filter_filter_criteria_component_id/filter_filter_criteria_component_id.dart';
import '../filter_filter_criteria_component_type/filter_filter_criteria_component_type.dart';
import '../filter_filter_criteria_ec2_instance_image_id/filter_filter_criteria_ec2_instance_image_id.dart';
import '../filter_filter_criteria_ec2_instance_subnet_id/filter_filter_criteria_ec2_instance_subnet_id.dart';
import '../filter_filter_criteria_ec2_instance_vpc_id/filter_filter_criteria_ec2_instance_vpc_id.dart';
import '../filter_filter_criteria_ecr_image_architecture/filter_filter_criteria_ecr_image_architecture.dart';
import '../filter_filter_criteria_ecr_image_hash/filter_filter_criteria_ecr_image_hash.dart';
import '../filter_filter_criteria_ecr_image_in_use_count/filter_filter_criteria_ecr_image_in_use_count.dart';
import '../filter_filter_criteria_ecr_image_last_in_use_at/filter_filter_criteria_ecr_image_last_in_use_at.dart';
import '../filter_filter_criteria_ecr_image_pushed_at/filter_filter_criteria_ecr_image_pushed_at.dart';
import '../filter_filter_criteria_ecr_image_registry/filter_filter_criteria_ecr_image_registry.dart';
import '../filter_filter_criteria_ecr_image_repository_name/filter_filter_criteria_ecr_image_repository_name.dart';
import '../filter_filter_criteria_ecr_image_tag/filter_filter_criteria_ecr_image_tag.dart';
import '../filter_filter_criteria_epss_score/filter_filter_criteria_epss_score.dart';
import '../filter_filter_criteria_exploit_available/filter_filter_criteria_exploit_available.dart';
import '../filter_filter_criteria_finding_arn/filter_filter_criteria_finding_arn.dart';
import '../filter_filter_criteria_finding_status/filter_filter_criteria_finding_status.dart';
import '../filter_filter_criteria_finding_type/filter_filter_criteria_finding_type.dart';
import '../filter_filter_criteria_first_observed_at/filter_filter_criteria_first_observed_at.dart';
import '../filter_filter_criteria_fix_available/filter_filter_criteria_fix_available.dart';
import '../filter_filter_criteria_inspector_score/filter_filter_criteria_inspector_score.dart';
import '../filter_filter_criteria_lambda_function_execution_role_arn/filter_filter_criteria_lambda_function_execution_role_arn.dart';
import '../filter_filter_criteria_lambda_function_last_modified_at/filter_filter_criteria_lambda_function_last_modified_at.dart';
import '../filter_filter_criteria_lambda_function_layer/filter_filter_criteria_lambda_function_layer.dart';
import '../filter_filter_criteria_lambda_function_name/filter_filter_criteria_lambda_function_name.dart';
import '../filter_filter_criteria_lambda_function_runtime/filter_filter_criteria_lambda_function_runtime.dart';
import '../filter_filter_criteria_last_observed_at/filter_filter_criteria_last_observed_at.dart';
import '../filter_filter_criteria_network_protocol/filter_filter_criteria_network_protocol.dart';
import '../filter_filter_criteria_port_range/filter_filter_criteria_port_range.dart';
import '../filter_filter_criteria_related_vulnerability/filter_filter_criteria_related_vulnerability.dart';
import '../filter_filter_criteria_resource_id/filter_filter_criteria_resource_id.dart';
import '../filter_filter_criteria_resource_tag/filter_filter_criteria_resource_tag.dart';
import '../filter_filter_criteria_resource_type/filter_filter_criteria_resource_type.dart';
import '../filter_filter_criteria_severity/filter_filter_criteria_severity.dart';
import '../filter_filter_criteria_title/filter_filter_criteria_title.dart';
import '../filter_filter_criteria_updated_at/filter_filter_criteria_updated_at.dart';
import '../filter_filter_criteria_vendor_severity/filter_filter_criteria_vendor_severity.dart';
import '../filter_filter_criteria_vulnerability_id/filter_filter_criteria_vulnerability_id.dart';
import '../filter_filter_criteria_vulnerability_source/filter_filter_criteria_vulnerability_source.dart';
import '../filter_filter_criteria_vulnerable_package/filter_filter_criteria_vulnerable_package.dart';

class FilterFilterCriteria {
  /// (Optional) The AWS account ID in which the finding was generated. Documented below.
  final List<FilterFilterCriteriaAwsAccountId>? awsAccountIds;

  /// (Optional) The project name in a code repository. Documented below.
  final List<FilterFilterCriteriaCodeRepositoryProjectName>?
      codeRepositoryProjectNames;

  /// (Optional) The repository provider type (such as GitHub, GitLab, etc.) Documented below.
  final List<FilterFilterCriteriaCodeRepositoryProviderType>?
      codeRepositoryProviderTypes;

  /// (Optional) The ID of the component. Documented below.
  final List<FilterFilterCriteriaCodeVulnerabilityDetectorName>?
      codeVulnerabilityDetectorNames;

  /// (Optional) The ID of the component. Documented below.
  final List<FilterFilterCriteriaCodeVulnerabilityDetectorTag>?
      codeVulnerabilityDetectorTags;

  /// (Optional) The ID of the component. Documented below.
  final List<FilterFilterCriteriaCodeVulnerabilityFilePath>?
      codeVulnerabilityFilePaths;

  /// (Optional) The ID of the component. Documented below.
  final List<FilterFilterCriteriaComponentId>? componentIds;

  /// (Optional) The type of the component. Documented below.
  final List<FilterFilterCriteriaComponentType>? componentTypes;

  /// (Optional) The ID of the Amazon Machine Image (AMI). Documented below.
  final List<FilterFilterCriteriaEc2InstanceImageId>? ec2InstanceImageIds;

  /// (Optional) The ID of the subnet. Documented below.
  final List<FilterFilterCriteriaEc2InstanceSubnetId>? ec2InstanceSubnetIds;

  /// (Optional) The ID of the VPC. Documented below.
  final List<FilterFilterCriteriaEc2InstanceVpcId>? ec2InstanceVpcIds;

  /// (Optional) The architecture of the ECR image. Documented below.
  final List<FilterFilterCriteriaEcrImageArchitecture>? ecrImageArchitectures;

  /// (Optional) The SHA256 hash of the ECR image. Documented below.
  final List<FilterFilterCriteriaEcrImageHash>? ecrImageHashes;

  /// (Optional)  The number of the ECR images in use. Documented below.
  final List<FilterFilterCriteriaEcrImageInUseCount>? ecrImageInUseCounts;

  /// (Optional) The date range when an ECR image was last used in an ECS cluster task or EKS cluster pod. Documented below.
  final List<FilterFilterCriteriaEcrImageLastInUseAt>? ecrImageLastInUseAts;

  /// (Optional) The date range when the image was pushed. Documented below.
  final List<FilterFilterCriteriaEcrImagePushedAt>? ecrImagePushedAts;

  /// (Optional) The registry of the ECR image. Documented below.
  final List<FilterFilterCriteriaEcrImageRegistry>? ecrImageRegistries;

  /// (Optional) The name of the ECR repository. Documented below.
  final List<FilterFilterCriteriaEcrImageRepositoryName>?
      ecrImageRepositoryNames;

  /// (Optional) The tags associated with the ECR image. Documented below.
  final List<FilterFilterCriteriaEcrImageTag>? ecrImageTags;

  /// (Optional) EPSS (Exploit Prediction Scoring System) Score of the finding. Documented below.
  final List<FilterFilterCriteriaEpssScore>? epssScores;

  /// (Optional) Availability of exploits. Documented below.
  final List<FilterFilterCriteriaExploitAvailable>? exploitAvailables;

  /// (Optional) The ARN of the finding. Documented below.
  final List<FilterFilterCriteriaFindingArn>? findingArns;

  /// (Optional) The status of the finding. Documented below.
  final List<FilterFilterCriteriaFindingStatus>? findingStatuses;

  /// (Optional) The type of the finding. Documented below.
  final List<FilterFilterCriteriaFindingType>? findingTypes;

  /// (Optional) When the finding was first observed. Documented below.
  final List<FilterFilterCriteriaFirstObservedAt>? firstObservedAts;

  /// (Optional) Availability of the fix. Documented below.
  final List<FilterFilterCriteriaFixAvailable>? fixAvailables;

  /// (Optional) The Inspector score given to the finding. Documented below.
  final List<FilterFilterCriteriaInspectorScore>? inspectorScores;

  /// (Optional) Lambda execution role ARN. Documented below.
  final List<FilterFilterCriteriaLambdaFunctionExecutionRoleArn>?
      lambdaFunctionExecutionRoleArns;

  /// (Optional) Last modified timestamp of the lambda function. Documented below.
  final List<FilterFilterCriteriaLambdaFunctionLastModifiedAt>?
      lambdaFunctionLastModifiedAts;

  /// (Optional) Lambda function layers. Documented below.
  final List<FilterFilterCriteriaLambdaFunctionLayer>? lambdaFunctionLayers;

  /// (Optional) Lambda function name. Documented below.
  final List<FilterFilterCriteriaLambdaFunctionName>? lambdaFunctionNames;

  /// (Optional) Lambda function runtime. Documented below.
  final List<FilterFilterCriteriaLambdaFunctionRuntime>? lambdaFunctionRuntimes;

  /// (Optional) When the finding was last observed. Documented below.
  final List<FilterFilterCriteriaLastObservedAt>? lastObservedAts;

  /// (Optional) The network protocol of the finding. Documented below.
  final List<FilterFilterCriteriaNetworkProtocol>? networkProtocols;

  /// (Optional) The port range of the finding. Documented below.
  final List<FilterFilterCriteriaPortRange>? portRanges;

  /// (Optional) Related vulnerabilities. Documented below.
  final List<FilterFilterCriteriaRelatedVulnerability>? relatedVulnerabilities;

  /// (Optional) The ID of the resource. Documented below.
  final List<FilterFilterCriteriaResourceId>? resourceIds;

  /// (Optional) The tags of the resource. Documented below.
  final List<FilterFilterCriteriaResourceTag>? resourceTags;

  /// (Optional) The type of the resource. Documented below.
  final List<FilterFilterCriteriaResourceType>? resourceTypes;

  /// (Optional) The severity of the finding. Documented below.
  final List<FilterFilterCriteriaSeverity>? severities;

  /// (Optional) The title of the finding. Documented below.
  final List<FilterFilterCriteriaTitle>? titles;

  /// (Optional) When the finding was last updated. Documented below.
  final List<FilterFilterCriteriaUpdatedAt>? updatedAts;

  /// (Optional) The severity as reported by the vendor. Documented below.
  final List<FilterFilterCriteriaVendorSeverity>? vendorSeverities;

  /// (Optional) The ID of the vulnerability. Documented below.
  final List<FilterFilterCriteriaVulnerabilityId>? vulnerabilityIds;

  /// (Optional) The source of the vulnerability. Documented below.
  final List<FilterFilterCriteriaVulnerabilitySource>? vulnerabilitySources;

  /// (Optional) Details about vulnerable packages. Documented below.
  final List<FilterFilterCriteriaVulnerablePackage>? vulnerablePackages;

  FilterFilterCriteria({
    this.awsAccountIds,
    this.codeRepositoryProjectNames,
    this.codeRepositoryProviderTypes,
    this.codeVulnerabilityDetectorNames,
    this.codeVulnerabilityDetectorTags,
    this.codeVulnerabilityFilePaths,
    this.componentIds,
    this.componentTypes,
    this.ec2InstanceImageIds,
    this.ec2InstanceSubnetIds,
    this.ec2InstanceVpcIds,
    this.ecrImageArchitectures,
    this.ecrImageHashes,
    this.ecrImageInUseCounts,
    this.ecrImageLastInUseAts,
    this.ecrImagePushedAts,
    this.ecrImageRegistries,
    this.ecrImageRepositoryNames,
    this.ecrImageTags,
    this.epssScores,
    this.exploitAvailables,
    this.findingArns,
    this.findingStatuses,
    this.findingTypes,
    this.firstObservedAts,
    this.fixAvailables,
    this.inspectorScores,
    this.lambdaFunctionExecutionRoleArns,
    this.lambdaFunctionLastModifiedAts,
    this.lambdaFunctionLayers,
    this.lambdaFunctionNames,
    this.lambdaFunctionRuntimes,
    this.lastObservedAts,
    this.networkProtocols,
    this.portRanges,
    this.relatedVulnerabilities,
    this.resourceIds,
    this.resourceTags,
    this.resourceTypes,
    this.severities,
    this.titles,
    this.updatedAts,
    this.vendorSeverities,
    this.vulnerabilityIds,
    this.vulnerabilitySources,
    this.vulnerablePackages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdsValue = awsAccountIds;
    if (awsAccountIdsValue != null) {
      map['awsAccountIds'] = Input.encodeList<FilterFilterCriteriaAwsAccountId,
          Map<String, dynamic>>(awsAccountIdsValue, (value) => value.toMap());
    }
    final codeRepositoryProjectNamesValue = codeRepositoryProjectNames;
    if (codeRepositoryProjectNamesValue != null) {
      map['codeRepositoryProjectNames'] = Input.encodeList<
              FilterFilterCriteriaCodeRepositoryProjectName,
              Map<String, dynamic>>(
          codeRepositoryProjectNamesValue, (value) => value.toMap());
    }
    final codeRepositoryProviderTypesValue = codeRepositoryProviderTypes;
    if (codeRepositoryProviderTypesValue != null) {
      map['codeRepositoryProviderTypes'] = Input.encodeList<
              FilterFilterCriteriaCodeRepositoryProviderType,
              Map<String, dynamic>>(
          codeRepositoryProviderTypesValue, (value) => value.toMap());
    }
    final codeVulnerabilityDetectorNamesValue = codeVulnerabilityDetectorNames;
    if (codeVulnerabilityDetectorNamesValue != null) {
      map['codeVulnerabilityDetectorNames'] = Input.encodeList<
              FilterFilterCriteriaCodeVulnerabilityDetectorName,
              Map<String, dynamic>>(
          codeVulnerabilityDetectorNamesValue, (value) => value.toMap());
    }
    final codeVulnerabilityDetectorTagsValue = codeVulnerabilityDetectorTags;
    if (codeVulnerabilityDetectorTagsValue != null) {
      map['codeVulnerabilityDetectorTags'] = Input.encodeList<
              FilterFilterCriteriaCodeVulnerabilityDetectorTag,
              Map<String, dynamic>>(
          codeVulnerabilityDetectorTagsValue, (value) => value.toMap());
    }
    final codeVulnerabilityFilePathsValue = codeVulnerabilityFilePaths;
    if (codeVulnerabilityFilePathsValue != null) {
      map['codeVulnerabilityFilePaths'] = Input.encodeList<
              FilterFilterCriteriaCodeVulnerabilityFilePath,
              Map<String, dynamic>>(
          codeVulnerabilityFilePathsValue, (value) => value.toMap());
    }
    final componentIdsValue = componentIds;
    if (componentIdsValue != null) {
      map['componentIds'] = Input.encodeList<FilterFilterCriteriaComponentId,
          Map<String, dynamic>>(componentIdsValue, (value) => value.toMap());
    }
    final componentTypesValue = componentTypes;
    if (componentTypesValue != null) {
      map['componentTypes'] = Input.encodeList<
          FilterFilterCriteriaComponentType,
          Map<String, dynamic>>(componentTypesValue, (value) => value.toMap());
    }
    final ec2InstanceImageIdsValue = ec2InstanceImageIds;
    if (ec2InstanceImageIdsValue != null) {
      map['ec2InstanceImageIds'] = Input.encodeList<
              FilterFilterCriteriaEc2InstanceImageId, Map<String, dynamic>>(
          ec2InstanceImageIdsValue, (value) => value.toMap());
    }
    final ec2InstanceSubnetIdsValue = ec2InstanceSubnetIds;
    if (ec2InstanceSubnetIdsValue != null) {
      map['ec2InstanceSubnetIds'] = Input.encodeList<
              FilterFilterCriteriaEc2InstanceSubnetId, Map<String, dynamic>>(
          ec2InstanceSubnetIdsValue, (value) => value.toMap());
    }
    final ec2InstanceVpcIdsValue = ec2InstanceVpcIds;
    if (ec2InstanceVpcIdsValue != null) {
      map['ec2InstanceVpcIds'] = Input.encodeList<
              FilterFilterCriteriaEc2InstanceVpcId, Map<String, dynamic>>(
          ec2InstanceVpcIdsValue, (value) => value.toMap());
    }
    final ecrImageArchitecturesValue = ecrImageArchitectures;
    if (ecrImageArchitecturesValue != null) {
      map['ecrImageArchitectures'] = Input.encodeList<
              FilterFilterCriteriaEcrImageArchitecture, Map<String, dynamic>>(
          ecrImageArchitecturesValue, (value) => value.toMap());
    }
    final ecrImageHashesValue = ecrImageHashes;
    if (ecrImageHashesValue != null) {
      map['ecrImageHashes'] = Input.encodeList<FilterFilterCriteriaEcrImageHash,
          Map<String, dynamic>>(ecrImageHashesValue, (value) => value.toMap());
    }
    final ecrImageInUseCountsValue = ecrImageInUseCounts;
    if (ecrImageInUseCountsValue != null) {
      map['ecrImageInUseCounts'] = Input.encodeList<
              FilterFilterCriteriaEcrImageInUseCount, Map<String, dynamic>>(
          ecrImageInUseCountsValue, (value) => value.toMap());
    }
    final ecrImageLastInUseAtsValue = ecrImageLastInUseAts;
    if (ecrImageLastInUseAtsValue != null) {
      map['ecrImageLastInUseAts'] = Input.encodeList<
              FilterFilterCriteriaEcrImageLastInUseAt, Map<String, dynamic>>(
          ecrImageLastInUseAtsValue, (value) => value.toMap());
    }
    final ecrImagePushedAtsValue = ecrImagePushedAts;
    if (ecrImagePushedAtsValue != null) {
      map['ecrImagePushedAts'] = Input.encodeList<
              FilterFilterCriteriaEcrImagePushedAt, Map<String, dynamic>>(
          ecrImagePushedAtsValue, (value) => value.toMap());
    }
    final ecrImageRegistriesValue = ecrImageRegistries;
    if (ecrImageRegistriesValue != null) {
      map['ecrImageRegistries'] = Input.encodeList<
              FilterFilterCriteriaEcrImageRegistry, Map<String, dynamic>>(
          ecrImageRegistriesValue, (value) => value.toMap());
    }
    final ecrImageRepositoryNamesValue = ecrImageRepositoryNames;
    if (ecrImageRepositoryNamesValue != null) {
      map['ecrImageRepositoryNames'] = Input.encodeList<
              FilterFilterCriteriaEcrImageRepositoryName, Map<String, dynamic>>(
          ecrImageRepositoryNamesValue, (value) => value.toMap());
    }
    final ecrImageTagsValue = ecrImageTags;
    if (ecrImageTagsValue != null) {
      map['ecrImageTags'] = Input.encodeList<FilterFilterCriteriaEcrImageTag,
          Map<String, dynamic>>(ecrImageTagsValue, (value) => value.toMap());
    }
    final epssScoresValue = epssScores;
    if (epssScoresValue != null) {
      map['epssScores'] =
          Input.encodeList<FilterFilterCriteriaEpssScore, Map<String, dynamic>>(
              epssScoresValue, (value) => value.toMap());
    }
    final exploitAvailablesValue = exploitAvailables;
    if (exploitAvailablesValue != null) {
      map['exploitAvailables'] = Input.encodeList<
              FilterFilterCriteriaExploitAvailable, Map<String, dynamic>>(
          exploitAvailablesValue, (value) => value.toMap());
    }
    final findingArnsValue = findingArns;
    if (findingArnsValue != null) {
      map['findingArns'] = Input.encodeList<FilterFilterCriteriaFindingArn,
          Map<String, dynamic>>(findingArnsValue, (value) => value.toMap());
    }
    final findingStatusesValue = findingStatuses;
    if (findingStatusesValue != null) {
      map['findingStatuses'] = Input.encodeList<
          FilterFilterCriteriaFindingStatus,
          Map<String, dynamic>>(findingStatusesValue, (value) => value.toMap());
    }
    final findingTypesValue = findingTypes;
    if (findingTypesValue != null) {
      map['findingTypes'] = Input.encodeList<FilterFilterCriteriaFindingType,
          Map<String, dynamic>>(findingTypesValue, (value) => value.toMap());
    }
    final firstObservedAtsValue = firstObservedAts;
    if (firstObservedAtsValue != null) {
      map['firstObservedAts'] = Input.encodeList<
              FilterFilterCriteriaFirstObservedAt, Map<String, dynamic>>(
          firstObservedAtsValue, (value) => value.toMap());
    }
    final fixAvailablesValue = fixAvailables;
    if (fixAvailablesValue != null) {
      map['fixAvailables'] = Input.encodeList<FilterFilterCriteriaFixAvailable,
          Map<String, dynamic>>(fixAvailablesValue, (value) => value.toMap());
    }
    final inspectorScoresValue = inspectorScores;
    if (inspectorScoresValue != null) {
      map['inspectorScores'] = Input.encodeList<
          FilterFilterCriteriaInspectorScore,
          Map<String, dynamic>>(inspectorScoresValue, (value) => value.toMap());
    }
    final lambdaFunctionExecutionRoleArnsValue =
        lambdaFunctionExecutionRoleArns;
    if (lambdaFunctionExecutionRoleArnsValue != null) {
      map['lambdaFunctionExecutionRoleArns'] = Input.encodeList<
              FilterFilterCriteriaLambdaFunctionExecutionRoleArn,
              Map<String, dynamic>>(
          lambdaFunctionExecutionRoleArnsValue, (value) => value.toMap());
    }
    final lambdaFunctionLastModifiedAtsValue = lambdaFunctionLastModifiedAts;
    if (lambdaFunctionLastModifiedAtsValue != null) {
      map['lambdaFunctionLastModifiedAts'] = Input.encodeList<
              FilterFilterCriteriaLambdaFunctionLastModifiedAt,
              Map<String, dynamic>>(
          lambdaFunctionLastModifiedAtsValue, (value) => value.toMap());
    }
    final lambdaFunctionLayersValue = lambdaFunctionLayers;
    if (lambdaFunctionLayersValue != null) {
      map['lambdaFunctionLayers'] = Input.encodeList<
              FilterFilterCriteriaLambdaFunctionLayer, Map<String, dynamic>>(
          lambdaFunctionLayersValue, (value) => value.toMap());
    }
    final lambdaFunctionNamesValue = lambdaFunctionNames;
    if (lambdaFunctionNamesValue != null) {
      map['lambdaFunctionNames'] = Input.encodeList<
              FilterFilterCriteriaLambdaFunctionName, Map<String, dynamic>>(
          lambdaFunctionNamesValue, (value) => value.toMap());
    }
    final lambdaFunctionRuntimesValue = lambdaFunctionRuntimes;
    if (lambdaFunctionRuntimesValue != null) {
      map['lambdaFunctionRuntimes'] = Input.encodeList<
              FilterFilterCriteriaLambdaFunctionRuntime, Map<String, dynamic>>(
          lambdaFunctionRuntimesValue, (value) => value.toMap());
    }
    final lastObservedAtsValue = lastObservedAts;
    if (lastObservedAtsValue != null) {
      map['lastObservedAts'] = Input.encodeList<
          FilterFilterCriteriaLastObservedAt,
          Map<String, dynamic>>(lastObservedAtsValue, (value) => value.toMap());
    }
    final networkProtocolsValue = networkProtocols;
    if (networkProtocolsValue != null) {
      map['networkProtocols'] = Input.encodeList<
              FilterFilterCriteriaNetworkProtocol, Map<String, dynamic>>(
          networkProtocolsValue, (value) => value.toMap());
    }
    final portRangesValue = portRanges;
    if (portRangesValue != null) {
      map['portRanges'] =
          Input.encodeList<FilterFilterCriteriaPortRange, Map<String, dynamic>>(
              portRangesValue, (value) => value.toMap());
    }
    final relatedVulnerabilitiesValue = relatedVulnerabilities;
    if (relatedVulnerabilitiesValue != null) {
      map['relatedVulnerabilities'] = Input.encodeList<
              FilterFilterCriteriaRelatedVulnerability, Map<String, dynamic>>(
          relatedVulnerabilitiesValue, (value) => value.toMap());
    }
    final resourceIdsValue = resourceIds;
    if (resourceIdsValue != null) {
      map['resourceIds'] = Input.encodeList<FilterFilterCriteriaResourceId,
          Map<String, dynamic>>(resourceIdsValue, (value) => value.toMap());
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = Input.encodeList<FilterFilterCriteriaResourceTag,
          Map<String, dynamic>>(resourceTagsValue, (value) => value.toMap());
    }
    final resourceTypesValue = resourceTypes;
    if (resourceTypesValue != null) {
      map['resourceTypes'] = Input.encodeList<FilterFilterCriteriaResourceType,
          Map<String, dynamic>>(resourceTypesValue, (value) => value.toMap());
    }
    final severitiesValue = severities;
    if (severitiesValue != null) {
      map['severities'] =
          Input.encodeList<FilterFilterCriteriaSeverity, Map<String, dynamic>>(
              severitiesValue, (value) => value.toMap());
    }
    final titlesValue = titles;
    if (titlesValue != null) {
      map['titles'] =
          Input.encodeList<FilterFilterCriteriaTitle, Map<String, dynamic>>(
              titlesValue, (value) => value.toMap());
    }
    final updatedAtsValue = updatedAts;
    if (updatedAtsValue != null) {
      map['updatedAts'] =
          Input.encodeList<FilterFilterCriteriaUpdatedAt, Map<String, dynamic>>(
              updatedAtsValue, (value) => value.toMap());
    }
    final vendorSeveritiesValue = vendorSeverities;
    if (vendorSeveritiesValue != null) {
      map['vendorSeverities'] = Input.encodeList<
              FilterFilterCriteriaVendorSeverity, Map<String, dynamic>>(
          vendorSeveritiesValue, (value) => value.toMap());
    }
    final vulnerabilityIdsValue = vulnerabilityIds;
    if (vulnerabilityIdsValue != null) {
      map['vulnerabilityIds'] = Input.encodeList<
              FilterFilterCriteriaVulnerabilityId, Map<String, dynamic>>(
          vulnerabilityIdsValue, (value) => value.toMap());
    }
    final vulnerabilitySourcesValue = vulnerabilitySources;
    if (vulnerabilitySourcesValue != null) {
      map['vulnerabilitySources'] = Input.encodeList<
              FilterFilterCriteriaVulnerabilitySource, Map<String, dynamic>>(
          vulnerabilitySourcesValue, (value) => value.toMap());
    }
    final vulnerablePackagesValue = vulnerablePackages;
    if (vulnerablePackagesValue != null) {
      map['vulnerablePackages'] = Input.encodeList<
              FilterFilterCriteriaVulnerablePackage, Map<String, dynamic>>(
          vulnerablePackagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory FilterFilterCriteria.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteria(
      awsAccountIds: map['awsAccountIds'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaAwsAccountId>(
              map['awsAccountIds'],
              (value) => FilterFilterCriteriaAwsAccountId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      codeRepositoryProjectNames: map['codeRepositoryProjectNames'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaCodeRepositoryProjectName>(
              map['codeRepositoryProjectNames'],
              (value) => FilterFilterCriteriaCodeRepositoryProjectName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      codeRepositoryProviderTypes: map['codeRepositoryProviderTypes'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaCodeRepositoryProviderType>(
              map['codeRepositoryProviderTypes'],
              (value) => FilterFilterCriteriaCodeRepositoryProviderType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      codeVulnerabilityDetectorNames: map['codeVulnerabilityDetectorNames'] ==
              null
          ? null
          : Input.decodeList<FilterFilterCriteriaCodeVulnerabilityDetectorName>(
              map['codeVulnerabilityDetectorNames'],
              (value) =>
                  FilterFilterCriteriaCodeVulnerabilityDetectorName.fromMap(
                      (value as Map).cast<String, dynamic>())),
      codeVulnerabilityDetectorTags: map['codeVulnerabilityDetectorTags'] ==
              null
          ? null
          : Input.decodeList<FilterFilterCriteriaCodeVulnerabilityDetectorTag>(
              map['codeVulnerabilityDetectorTags'],
              (value) =>
                  FilterFilterCriteriaCodeVulnerabilityDetectorTag.fromMap(
                      (value as Map).cast<String, dynamic>())),
      codeVulnerabilityFilePaths: map['codeVulnerabilityFilePaths'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaCodeVulnerabilityFilePath>(
              map['codeVulnerabilityFilePaths'],
              (value) => FilterFilterCriteriaCodeVulnerabilityFilePath.fromMap(
                  (value as Map).cast<String, dynamic>())),
      componentIds: map['componentIds'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaComponentId>(
              map['componentIds'],
              (value) => FilterFilterCriteriaComponentId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      componentTypes: map['componentTypes'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaComponentType>(
              map['componentTypes'],
              (value) => FilterFilterCriteriaComponentType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ec2InstanceImageIds: map['ec2InstanceImageIds'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEc2InstanceImageId>(
              map['ec2InstanceImageIds'],
              (value) => FilterFilterCriteriaEc2InstanceImageId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ec2InstanceSubnetIds: map['ec2InstanceSubnetIds'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEc2InstanceSubnetId>(
              map['ec2InstanceSubnetIds'],
              (value) => FilterFilterCriteriaEc2InstanceSubnetId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ec2InstanceVpcIds: map['ec2InstanceVpcIds'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEc2InstanceVpcId>(
              map['ec2InstanceVpcIds'],
              (value) => FilterFilterCriteriaEc2InstanceVpcId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecrImageArchitectures: map['ecrImageArchitectures'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEcrImageArchitecture>(
              map['ecrImageArchitectures'],
              (value) => FilterFilterCriteriaEcrImageArchitecture.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecrImageHashes: map['ecrImageHashes'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEcrImageHash>(
              map['ecrImageHashes'],
              (value) => FilterFilterCriteriaEcrImageHash.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecrImageInUseCounts: map['ecrImageInUseCounts'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEcrImageInUseCount>(
              map['ecrImageInUseCounts'],
              (value) => FilterFilterCriteriaEcrImageInUseCount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecrImageLastInUseAts: map['ecrImageLastInUseAts'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEcrImageLastInUseAt>(
              map['ecrImageLastInUseAts'],
              (value) => FilterFilterCriteriaEcrImageLastInUseAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecrImagePushedAts: map['ecrImagePushedAts'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEcrImagePushedAt>(
              map['ecrImagePushedAts'],
              (value) => FilterFilterCriteriaEcrImagePushedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecrImageRegistries: map['ecrImageRegistries'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEcrImageRegistry>(
              map['ecrImageRegistries'],
              (value) => FilterFilterCriteriaEcrImageRegistry.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecrImageRepositoryNames: map['ecrImageRepositoryNames'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEcrImageRepositoryName>(
              map['ecrImageRepositoryNames'],
              (value) => FilterFilterCriteriaEcrImageRepositoryName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecrImageTags: map['ecrImageTags'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEcrImageTag>(
              map['ecrImageTags'],
              (value) => FilterFilterCriteriaEcrImageTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      epssScores: map['epssScores'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaEpssScore>(
              map['epssScores'],
              (value) => FilterFilterCriteriaEpssScore.fromMap(
                  (value as Map).cast<String, dynamic>())),
      exploitAvailables: map['exploitAvailables'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaExploitAvailable>(
              map['exploitAvailables'],
              (value) => FilterFilterCriteriaExploitAvailable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      findingArns: map['findingArns'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaFindingArn>(
              map['findingArns'],
              (value) => FilterFilterCriteriaFindingArn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      findingStatuses: map['findingStatuses'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaFindingStatus>(
              map['findingStatuses'],
              (value) => FilterFilterCriteriaFindingStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
      findingTypes: map['findingTypes'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaFindingType>(
              map['findingTypes'],
              (value) => FilterFilterCriteriaFindingType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      firstObservedAts: map['firstObservedAts'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaFirstObservedAt>(
              map['firstObservedAts'],
              (value) => FilterFilterCriteriaFirstObservedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fixAvailables: map['fixAvailables'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaFixAvailable>(
              map['fixAvailables'],
              (value) => FilterFilterCriteriaFixAvailable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inspectorScores: map['inspectorScores'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaInspectorScore>(
              map['inspectorScores'],
              (value) => FilterFilterCriteriaInspectorScore.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lambdaFunctionExecutionRoleArns: map['lambdaFunctionExecutionRoleArns'] ==
              null
          ? null
          : Input.decodeList<
                  FilterFilterCriteriaLambdaFunctionExecutionRoleArn>(
              map['lambdaFunctionExecutionRoleArns'],
              (value) =>
                  FilterFilterCriteriaLambdaFunctionExecutionRoleArn.fromMap(
                      (value as Map).cast<String, dynamic>())),
      lambdaFunctionLastModifiedAts: map['lambdaFunctionLastModifiedAts'] ==
              null
          ? null
          : Input.decodeList<FilterFilterCriteriaLambdaFunctionLastModifiedAt>(
              map['lambdaFunctionLastModifiedAts'],
              (value) =>
                  FilterFilterCriteriaLambdaFunctionLastModifiedAt.fromMap(
                      (value as Map).cast<String, dynamic>())),
      lambdaFunctionLayers: map['lambdaFunctionLayers'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaLambdaFunctionLayer>(
              map['lambdaFunctionLayers'],
              (value) => FilterFilterCriteriaLambdaFunctionLayer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lambdaFunctionNames: map['lambdaFunctionNames'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaLambdaFunctionName>(
              map['lambdaFunctionNames'],
              (value) => FilterFilterCriteriaLambdaFunctionName.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lambdaFunctionRuntimes: map['lambdaFunctionRuntimes'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaLambdaFunctionRuntime>(
              map['lambdaFunctionRuntimes'],
              (value) => FilterFilterCriteriaLambdaFunctionRuntime.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lastObservedAts: map['lastObservedAts'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaLastObservedAt>(
              map['lastObservedAts'],
              (value) => FilterFilterCriteriaLastObservedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkProtocols: map['networkProtocols'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaNetworkProtocol>(
              map['networkProtocols'],
              (value) => FilterFilterCriteriaNetworkProtocol.fromMap(
                  (value as Map).cast<String, dynamic>())),
      portRanges: map['portRanges'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaPortRange>(
              map['portRanges'],
              (value) => FilterFilterCriteriaPortRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      relatedVulnerabilities: map['relatedVulnerabilities'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaRelatedVulnerability>(
              map['relatedVulnerabilities'],
              (value) => FilterFilterCriteriaRelatedVulnerability.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceIds: map['resourceIds'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaResourceId>(
              map['resourceIds'],
              (value) => FilterFilterCriteriaResourceId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceTags: map['resourceTags'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaResourceTag>(
              map['resourceTags'],
              (value) => FilterFilterCriteriaResourceTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceTypes: map['resourceTypes'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaResourceType>(
              map['resourceTypes'],
              (value) => FilterFilterCriteriaResourceType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      severities: map['severities'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaSeverity>(
              map['severities'],
              (value) => FilterFilterCriteriaSeverity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      titles: map['titles'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaTitle>(
              map['titles'],
              (value) => FilterFilterCriteriaTitle.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updatedAts: map['updatedAts'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaUpdatedAt>(
              map['updatedAts'],
              (value) => FilterFilterCriteriaUpdatedAt.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vendorSeverities: map['vendorSeverities'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaVendorSeverity>(
              map['vendorSeverities'],
              (value) => FilterFilterCriteriaVendorSeverity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vulnerabilityIds: map['vulnerabilityIds'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaVulnerabilityId>(
              map['vulnerabilityIds'],
              (value) => FilterFilterCriteriaVulnerabilityId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vulnerabilitySources: map['vulnerabilitySources'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaVulnerabilitySource>(
              map['vulnerabilitySources'],
              (value) => FilterFilterCriteriaVulnerabilitySource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vulnerablePackages: map['vulnerablePackages'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaVulnerablePackage>(
              map['vulnerablePackages'],
              (value) => FilterFilterCriteriaVulnerablePackage.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
