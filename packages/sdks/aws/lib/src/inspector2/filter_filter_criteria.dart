// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_filter_criteria_aws_account_id.dart';
import 'filter_filter_criteria_code_repository_project_name.dart';
import 'filter_filter_criteria_code_repository_provider_type.dart';
import 'filter_filter_criteria_code_vulnerability_detector_name.dart';
import 'filter_filter_criteria_code_vulnerability_detector_tag.dart';
import 'filter_filter_criteria_code_vulnerability_file_path.dart';
import 'filter_filter_criteria_component_id.dart';
import 'filter_filter_criteria_component_type.dart';
import 'filter_filter_criteria_ec2_instance_image_id.dart';
import 'filter_filter_criteria_ec2_instance_subnet_id.dart';
import 'filter_filter_criteria_ec2_instance_vpc_id.dart';
import 'filter_filter_criteria_ecr_image_architecture.dart';
import 'filter_filter_criteria_ecr_image_hash.dart';
import 'filter_filter_criteria_ecr_image_in_use_count.dart';
import 'filter_filter_criteria_ecr_image_last_in_use_at.dart';
import 'filter_filter_criteria_ecr_image_pushed_at.dart';
import 'filter_filter_criteria_ecr_image_registry.dart';
import 'filter_filter_criteria_ecr_image_repository_name.dart';
import 'filter_filter_criteria_ecr_image_tag.dart';
import 'filter_filter_criteria_epss_score.dart';
import 'filter_filter_criteria_exploit_available.dart';
import 'filter_filter_criteria_finding_arn.dart';
import 'filter_filter_criteria_finding_status.dart';
import 'filter_filter_criteria_finding_type.dart';
import 'filter_filter_criteria_first_observed_at.dart';
import 'filter_filter_criteria_fix_available.dart';
import 'filter_filter_criteria_inspector_score.dart';
import 'filter_filter_criteria_lambda_function_execution_role_arn.dart';
import 'filter_filter_criteria_lambda_function_last_modified_at.dart';
import 'filter_filter_criteria_lambda_function_layer.dart';
import 'filter_filter_criteria_lambda_function_name.dart';
import 'filter_filter_criteria_lambda_function_runtime.dart';
import 'filter_filter_criteria_last_observed_at.dart';
import 'filter_filter_criteria_network_protocol.dart';
import 'filter_filter_criteria_port_range.dart';
import 'filter_filter_criteria_related_vulnerability.dart';
import 'filter_filter_criteria_resource_id.dart';
import 'filter_filter_criteria_resource_tag.dart';
import 'filter_filter_criteria_resource_type.dart';
import 'filter_filter_criteria_severity.dart';
import 'filter_filter_criteria_title.dart';
import 'filter_filter_criteria_updated_at.dart';
import 'filter_filter_criteria_vendor_severity.dart';
import 'filter_filter_criteria_vulnerability_id.dart';
import 'filter_filter_criteria_vulnerability_source.dart';
import 'filter_filter_criteria_vulnerable_package.dart';

class FilterFilterCriteria {
  /// (Optional) The AWS account ID in which the finding was generated. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaAwsAccountId>>? awsAccountIds;

  /// (Optional) The project name in a code repository. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaCodeRepositoryProjectName>>?
  codeRepositoryProjectNames;

  /// (Optional) The repository provider type (such as GitHub, GitLab, etc.) Documented below.
  final pulumi.Input<List<FilterFilterCriteriaCodeRepositoryProviderType>>?
  codeRepositoryProviderTypes;

  /// (Optional) The ID of the component. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaCodeVulnerabilityDetectorName>>?
  codeVulnerabilityDetectorNames;

  /// (Optional) The ID of the component. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaCodeVulnerabilityDetectorTag>>?
  codeVulnerabilityDetectorTags;

  /// (Optional) The ID of the component. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaCodeVulnerabilityFilePath>>?
  codeVulnerabilityFilePaths;

  /// (Optional) The ID of the component. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaComponentId>>? componentIds;

  /// (Optional) The type of the component. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaComponentType>>? componentTypes;

  /// (Optional) The ID of the Amazon Machine Image (AMI). Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEc2InstanceImageId>>?
  ec2InstanceImageIds;

  /// (Optional) The ID of the subnet. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEc2InstanceSubnetId>>?
  ec2InstanceSubnetIds;

  /// (Optional) The ID of the VPC. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEc2InstanceVpcId>>?
  ec2InstanceVpcIds;

  /// (Optional) The architecture of the ECR image. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEcrImageArchitecture>>?
  ecrImageArchitectures;

  /// (Optional) The SHA256 hash of the ECR image. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEcrImageHash>>? ecrImageHashes;

  /// (Optional)  The number of the ECR images in use. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEcrImageInUseCount>>?
  ecrImageInUseCounts;

  /// (Optional) The date range when an ECR image was last used in an ECS cluster task or EKS cluster pod. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEcrImageLastInUseAt>>?
  ecrImageLastInUseAts;

  /// (Optional) The date range when the image was pushed. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEcrImagePushedAt>>?
  ecrImagePushedAts;

  /// (Optional) The registry of the ECR image. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEcrImageRegistry>>?
  ecrImageRegistries;

  /// (Optional) The name of the ECR repository. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEcrImageRepositoryName>>?
  ecrImageRepositoryNames;

  /// (Optional) The tags associated with the ECR image. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEcrImageTag>>? ecrImageTags;

  /// (Optional) EPSS (Exploit Prediction Scoring System) Score of the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaEpssScore>>? epssScores;

  /// (Optional) Availability of exploits. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaExploitAvailable>>?
  exploitAvailables;

  /// (Optional) The ARN of the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaFindingArn>>? findingArns;

  /// (Optional) The status of the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaFindingStatus>>? findingStatuses;

  /// (Optional) The type of the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaFindingType>>? findingTypes;

  /// (Optional) When the finding was first observed. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaFirstObservedAt>>?
  firstObservedAts;

  /// (Optional) Availability of the fix. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaFixAvailable>>? fixAvailables;

  /// (Optional) The Inspector score given to the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaInspectorScore>>? inspectorScores;

  /// (Optional) Lambda execution role ARN. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaLambdaFunctionExecutionRoleArn>>?
  lambdaFunctionExecutionRoleArns;

  /// (Optional) Last modified timestamp of the lambda function. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaLambdaFunctionLastModifiedAt>>?
  lambdaFunctionLastModifiedAts;

  /// (Optional) Lambda function layers. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaLambdaFunctionLayer>>?
  lambdaFunctionLayers;

  /// (Optional) Lambda function name. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaLambdaFunctionName>>?
  lambdaFunctionNames;

  /// (Optional) Lambda function runtime. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaLambdaFunctionRuntime>>?
  lambdaFunctionRuntimes;

  /// (Optional) When the finding was last observed. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaLastObservedAt>>? lastObservedAts;

  /// (Optional) The network protocol of the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaNetworkProtocol>>?
  networkProtocols;

  /// (Optional) The port range of the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaPortRange>>? portRanges;

  /// (Optional) Related vulnerabilities. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaRelatedVulnerability>>?
  relatedVulnerabilities;

  /// (Optional) The ID of the resource. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaResourceId>>? resourceIds;

  /// (Optional) The tags of the resource. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaResourceTag>>? resourceTags;

  /// (Optional) The type of the resource. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaResourceType>>? resourceTypes;

  /// (Optional) The severity of the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaSeverity>>? severities;

  /// (Optional) The title of the finding. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaTitle>>? titles;

  /// (Optional) When the finding was last updated. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaUpdatedAt>>? updatedAts;

  /// (Optional) The severity as reported by the vendor. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaVendorSeverity>>?
  vendorSeverities;

  /// (Optional) The ID of the vulnerability. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaVulnerabilityId>>?
  vulnerabilityIds;

  /// (Optional) The source of the vulnerability. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaVulnerabilitySource>>?
  vulnerabilitySources;

  /// (Optional) Details about vulnerable packages. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaVulnerablePackage>>?
  vulnerablePackages;

  /// Creates a new [FilterFilterCriteria].
  /// [awsAccountIds] (Optional) The AWS account ID in which the finding was generated. Documented below.
  /// [codeRepositoryProjectNames] (Optional) The project name in a code repository. Documented below.
  /// [codeRepositoryProviderTypes] (Optional) The repository provider type (such as GitHub, GitLab, etc.) Documented below.
  /// [codeVulnerabilityDetectorNames] (Optional) The ID of the component. Documented below.
  /// [codeVulnerabilityDetectorTags] (Optional) The ID of the component. Documented below.
  /// [codeVulnerabilityFilePaths] (Optional) The ID of the component. Documented below.
  /// [componentIds] (Optional) The ID of the component. Documented below.
  /// [componentTypes] (Optional) The type of the component. Documented below.
  /// [ec2InstanceImageIds] (Optional) The ID of the Amazon Machine Image (AMI). Documented below.
  /// [ec2InstanceSubnetIds] (Optional) The ID of the subnet. Documented below.
  /// [ec2InstanceVpcIds] (Optional) The ID of the VPC. Documented below.
  /// [ecrImageArchitectures] (Optional) The architecture of the ECR image. Documented below.
  /// [ecrImageHashes] (Optional) The SHA256 hash of the ECR image. Documented below.
  /// [ecrImageInUseCounts] (Optional)  The number of the ECR images in use. Documented below.
  /// [ecrImageLastInUseAts] (Optional) The date range when an ECR image was last used in an ECS cluster task or EKS cluster pod. Documented below.
  /// [ecrImagePushedAts] (Optional) The date range when the image was pushed. Documented below.
  /// [ecrImageRegistries] (Optional) The registry of the ECR image. Documented below.
  /// [ecrImageRepositoryNames] (Optional) The name of the ECR repository. Documented below.
  /// [ecrImageTags] (Optional) The tags associated with the ECR image. Documented below.
  /// [epssScores] (Optional) EPSS (Exploit Prediction Scoring System) Score of the finding. Documented below.
  /// [exploitAvailables] (Optional) Availability of exploits. Documented below.
  /// [findingArns] (Optional) The ARN of the finding. Documented below.
  /// [findingStatuses] (Optional) The status of the finding. Documented below.
  /// [findingTypes] (Optional) The type of the finding. Documented below.
  /// [firstObservedAts] (Optional) When the finding was first observed. Documented below.
  /// [fixAvailables] (Optional) Availability of the fix. Documented below.
  /// [inspectorScores] (Optional) The Inspector score given to the finding. Documented below.
  /// [lambdaFunctionExecutionRoleArns] (Optional) Lambda execution role ARN. Documented below.
  /// [lambdaFunctionLastModifiedAts] (Optional) Last modified timestamp of the lambda function. Documented below.
  /// [lambdaFunctionLayers] (Optional) Lambda function layers. Documented below.
  /// [lambdaFunctionNames] (Optional) Lambda function name. Documented below.
  /// [lambdaFunctionRuntimes] (Optional) Lambda function runtime. Documented below.
  /// [lastObservedAts] (Optional) When the finding was last observed. Documented below.
  /// [networkProtocols] (Optional) The network protocol of the finding. Documented below.
  /// [portRanges] (Optional) The port range of the finding. Documented below.
  /// [relatedVulnerabilities] (Optional) Related vulnerabilities. Documented below.
  /// [resourceIds] (Optional) The ID of the resource. Documented below.
  /// [resourceTags] (Optional) The tags of the resource. Documented below.
  /// [resourceTypes] (Optional) The type of the resource. Documented below.
  /// [severities] (Optional) The severity of the finding. Documented below.
  /// [titles] (Optional) The title of the finding. Documented below.
  /// [updatedAts] (Optional) When the finding was last updated. Documented below.
  /// [vendorSeverities] (Optional) The severity as reported by the vendor. Documented below.
  /// [vulnerabilityIds] (Optional) The ID of the vulnerability. Documented below.
  /// [vulnerabilitySources] (Optional) The source of the vulnerability. Documented below.
  /// [vulnerablePackages] (Optional) Details about vulnerable packages. Documented below.
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
    return <String, dynamic>{
      'awsAccountIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaAwsAccountId>,
            List<Map<String, dynamic>>
          >(
            awsAccountIds,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaAwsAccountId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'codeRepositoryProjectNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaCodeRepositoryProjectName>,
            List<Map<String, dynamic>>
          >(
            codeRepositoryProjectNames,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaCodeRepositoryProjectName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'codeRepositoryProviderTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaCodeRepositoryProviderType>,
            List<Map<String, dynamic>>
          >(
            codeRepositoryProviderTypes,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaCodeRepositoryProviderType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'codeVulnerabilityDetectorNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaCodeVulnerabilityDetectorName>,
            List<Map<String, dynamic>>
          >(
            codeVulnerabilityDetectorNames,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaCodeVulnerabilityDetectorName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'codeVulnerabilityDetectorTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaCodeVulnerabilityDetectorTag>,
            List<Map<String, dynamic>>
          >(
            codeVulnerabilityDetectorTags,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaCodeVulnerabilityDetectorTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'codeVulnerabilityFilePaths':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaCodeVulnerabilityFilePath>,
            List<Map<String, dynamic>>
          >(
            codeVulnerabilityFilePaths,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaCodeVulnerabilityFilePath,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'componentIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaComponentId>,
            List<Map<String, dynamic>>
          >(
            componentIds,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaComponentId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'componentTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaComponentType>,
            List<Map<String, dynamic>>
          >(
            componentTypes,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaComponentType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ec2InstanceImageIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEc2InstanceImageId>,
            List<Map<String, dynamic>>
          >(
            ec2InstanceImageIds,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEc2InstanceImageId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ec2InstanceSubnetIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEc2InstanceSubnetId>,
            List<Map<String, dynamic>>
          >(
            ec2InstanceSubnetIds,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEc2InstanceSubnetId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ec2InstanceVpcIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEc2InstanceVpcId>,
            List<Map<String, dynamic>>
          >(
            ec2InstanceVpcIds,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEc2InstanceVpcId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecrImageArchitectures':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEcrImageArchitecture>,
            List<Map<String, dynamic>>
          >(
            ecrImageArchitectures,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEcrImageArchitecture,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecrImageHashes':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEcrImageHash>,
            List<Map<String, dynamic>>
          >(
            ecrImageHashes,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEcrImageHash,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecrImageInUseCounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEcrImageInUseCount>,
            List<Map<String, dynamic>>
          >(
            ecrImageInUseCounts,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEcrImageInUseCount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecrImageLastInUseAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEcrImageLastInUseAt>,
            List<Map<String, dynamic>>
          >(
            ecrImageLastInUseAts,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEcrImageLastInUseAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecrImagePushedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEcrImagePushedAt>,
            List<Map<String, dynamic>>
          >(
            ecrImagePushedAts,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEcrImagePushedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecrImageRegistries':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEcrImageRegistry>,
            List<Map<String, dynamic>>
          >(
            ecrImageRegistries,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEcrImageRegistry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecrImageRepositoryNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEcrImageRepositoryName>,
            List<Map<String, dynamic>>
          >(
            ecrImageRepositoryNames,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEcrImageRepositoryName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecrImageTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEcrImageTag>,
            List<Map<String, dynamic>>
          >(
            ecrImageTags,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEcrImageTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'epssScores':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaEpssScore>,
            List<Map<String, dynamic>>
          >(
            epssScores,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaEpssScore,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'exploitAvailables':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaExploitAvailable>,
            List<Map<String, dynamic>>
          >(
            exploitAvailables,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaExploitAvailable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingArns':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaFindingArn>,
            List<Map<String, dynamic>>
          >(
            findingArns,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaFindingArn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingStatuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaFindingStatus>,
            List<Map<String, dynamic>>
          >(
            findingStatuses,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaFindingStatus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'findingTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaFindingType>,
            List<Map<String, dynamic>>
          >(
            findingTypes,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaFindingType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'firstObservedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaFirstObservedAt>,
            List<Map<String, dynamic>>
          >(
            firstObservedAts,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaFirstObservedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'fixAvailables':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaFixAvailable>,
            List<Map<String, dynamic>>
          >(
            fixAvailables,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaFixAvailable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'inspectorScores':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaInspectorScore>,
            List<Map<String, dynamic>>
          >(
            inspectorScores,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaInspectorScore,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lambdaFunctionExecutionRoleArns':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaLambdaFunctionExecutionRoleArn>,
            List<Map<String, dynamic>>
          >(
            lambdaFunctionExecutionRoleArns,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaLambdaFunctionExecutionRoleArn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lambdaFunctionLastModifiedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaLambdaFunctionLastModifiedAt>,
            List<Map<String, dynamic>>
          >(
            lambdaFunctionLastModifiedAts,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaLambdaFunctionLastModifiedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lambdaFunctionLayers':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaLambdaFunctionLayer>,
            List<Map<String, dynamic>>
          >(
            lambdaFunctionLayers,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaLambdaFunctionLayer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lambdaFunctionNames':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaLambdaFunctionName>,
            List<Map<String, dynamic>>
          >(
            lambdaFunctionNames,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaLambdaFunctionName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lambdaFunctionRuntimes':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaLambdaFunctionRuntime>,
            List<Map<String, dynamic>>
          >(
            lambdaFunctionRuntimes,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaLambdaFunctionRuntime,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lastObservedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaLastObservedAt>,
            List<Map<String, dynamic>>
          >(
            lastObservedAts,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaLastObservedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkProtocols':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaNetworkProtocol>,
            List<Map<String, dynamic>>
          >(
            networkProtocols,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaNetworkProtocol,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'portRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaPortRange>,
            List<Map<String, dynamic>>
          >(
            portRanges,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaPortRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'relatedVulnerabilities':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaRelatedVulnerability>,
            List<Map<String, dynamic>>
          >(
            relatedVulnerabilities,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaRelatedVulnerability,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaResourceId>,
            List<Map<String, dynamic>>
          >(
            resourceIds,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaResourceId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaResourceTag>,
            List<Map<String, dynamic>>
          >(
            resourceTags,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaResourceTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaResourceType>,
            List<Map<String, dynamic>>
          >(
            resourceTypes,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaResourceType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'severities':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaSeverity>,
            List<Map<String, dynamic>>
          >(
            severities,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaSeverity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'titles':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaTitle>,
            List<Map<String, dynamic>>
          >(
            titles,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaTitle,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'updatedAts':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaUpdatedAt>,
            List<Map<String, dynamic>>
          >(
            updatedAts,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaUpdatedAt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vendorSeverities':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaVendorSeverity>,
            List<Map<String, dynamic>>
          >(
            vendorSeverities,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaVendorSeverity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vulnerabilityIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaVulnerabilityId>,
            List<Map<String, dynamic>>
          >(
            vulnerabilityIds,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaVulnerabilityId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vulnerabilitySources':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaVulnerabilitySource>,
            List<Map<String, dynamic>>
          >(
            vulnerabilitySources,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaVulnerabilitySource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vulnerablePackages':
          ?pulumi.Input.mapOptionalInputValue<
            List<FilterFilterCriteriaVulnerablePackage>,
            List<Map<String, dynamic>>
          >(
            vulnerablePackages,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteriaVulnerablePackage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FilterFilterCriteria.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteria(
      awsAccountIds: (() {
        final guardedValue = map['awsAccountIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaAwsAccountId>(
            guardedValue,
            (value) => FilterFilterCriteriaAwsAccountId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      codeRepositoryProjectNames: (() {
        final guardedValue = map['codeRepositoryProjectNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<FilterFilterCriteriaCodeRepositoryProjectName>(
            guardedValue,
            (value) => FilterFilterCriteriaCodeRepositoryProjectName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      codeRepositoryProviderTypes: (() {
        final guardedValue = map['codeRepositoryProviderTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<FilterFilterCriteriaCodeRepositoryProviderType>(
            guardedValue,
            (value) => FilterFilterCriteriaCodeRepositoryProviderType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      codeVulnerabilityDetectorNames: (() {
        final guardedValue = map['codeVulnerabilityDetectorNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FilterFilterCriteriaCodeVulnerabilityDetectorName
          >(
            guardedValue,
            (value) =>
                FilterFilterCriteriaCodeVulnerabilityDetectorName.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      codeVulnerabilityDetectorTags: (() {
        final guardedValue = map['codeVulnerabilityDetectorTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FilterFilterCriteriaCodeVulnerabilityDetectorTag
          >(
            guardedValue,
            (value) => FilterFilterCriteriaCodeVulnerabilityDetectorTag.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      codeVulnerabilityFilePaths: (() {
        final guardedValue = map['codeVulnerabilityFilePaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<FilterFilterCriteriaCodeVulnerabilityFilePath>(
            guardedValue,
            (value) => FilterFilterCriteriaCodeVulnerabilityFilePath.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      componentIds: (() {
        final guardedValue = map['componentIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaComponentId>(
            guardedValue,
            (value) => FilterFilterCriteriaComponentId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      componentTypes: (() {
        final guardedValue = map['componentTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaComponentType>(
            guardedValue,
            (value) => FilterFilterCriteriaComponentType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ec2InstanceImageIds: (() {
        final guardedValue = map['ec2InstanceImageIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEc2InstanceImageId>(
            guardedValue,
            (value) => FilterFilterCriteriaEc2InstanceImageId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ec2InstanceSubnetIds: (() {
        final guardedValue = map['ec2InstanceSubnetIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEc2InstanceSubnetId>(
            guardedValue,
            (value) => FilterFilterCriteriaEc2InstanceSubnetId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ec2InstanceVpcIds: (() {
        final guardedValue = map['ec2InstanceVpcIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEc2InstanceVpcId>(
            guardedValue,
            (value) => FilterFilterCriteriaEc2InstanceVpcId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecrImageArchitectures: (() {
        final guardedValue = map['ecrImageArchitectures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEcrImageArchitecture>(
            guardedValue,
            (value) => FilterFilterCriteriaEcrImageArchitecture.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecrImageHashes: (() {
        final guardedValue = map['ecrImageHashes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEcrImageHash>(
            guardedValue,
            (value) => FilterFilterCriteriaEcrImageHash.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecrImageInUseCounts: (() {
        final guardedValue = map['ecrImageInUseCounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEcrImageInUseCount>(
            guardedValue,
            (value) => FilterFilterCriteriaEcrImageInUseCount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecrImageLastInUseAts: (() {
        final guardedValue = map['ecrImageLastInUseAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEcrImageLastInUseAt>(
            guardedValue,
            (value) => FilterFilterCriteriaEcrImageLastInUseAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecrImagePushedAts: (() {
        final guardedValue = map['ecrImagePushedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEcrImagePushedAt>(
            guardedValue,
            (value) => FilterFilterCriteriaEcrImagePushedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecrImageRegistries: (() {
        final guardedValue = map['ecrImageRegistries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEcrImageRegistry>(
            guardedValue,
            (value) => FilterFilterCriteriaEcrImageRegistry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecrImageRepositoryNames: (() {
        final guardedValue = map['ecrImageRepositoryNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEcrImageRepositoryName>(
            guardedValue,
            (value) => FilterFilterCriteriaEcrImageRepositoryName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecrImageTags: (() {
        final guardedValue = map['ecrImageTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEcrImageTag>(
            guardedValue,
            (value) => FilterFilterCriteriaEcrImageTag.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      epssScores: (() {
        final guardedValue = map['epssScores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaEpssScore>(
            guardedValue,
            (value) => FilterFilterCriteriaEpssScore.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      exploitAvailables: (() {
        final guardedValue = map['exploitAvailables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaExploitAvailable>(
            guardedValue,
            (value) => FilterFilterCriteriaExploitAvailable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      findingArns: (() {
        final guardedValue = map['findingArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaFindingArn>(
            guardedValue,
            (value) => FilterFilterCriteriaFindingArn.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      findingStatuses: (() {
        final guardedValue = map['findingStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaFindingStatus>(
            guardedValue,
            (value) => FilterFilterCriteriaFindingStatus.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      findingTypes: (() {
        final guardedValue = map['findingTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaFindingType>(
            guardedValue,
            (value) => FilterFilterCriteriaFindingType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      firstObservedAts: (() {
        final guardedValue = map['firstObservedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaFirstObservedAt>(
            guardedValue,
            (value) => FilterFilterCriteriaFirstObservedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      fixAvailables: (() {
        final guardedValue = map['fixAvailables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaFixAvailable>(
            guardedValue,
            (value) => FilterFilterCriteriaFixAvailable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      inspectorScores: (() {
        final guardedValue = map['inspectorScores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaInspectorScore>(
            guardedValue,
            (value) => FilterFilterCriteriaInspectorScore.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lambdaFunctionExecutionRoleArns: (() {
        final guardedValue = map['lambdaFunctionExecutionRoleArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FilterFilterCriteriaLambdaFunctionExecutionRoleArn
          >(
            guardedValue,
            (value) =>
                FilterFilterCriteriaLambdaFunctionExecutionRoleArn.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      lambdaFunctionLastModifiedAts: (() {
        final guardedValue = map['lambdaFunctionLastModifiedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FilterFilterCriteriaLambdaFunctionLastModifiedAt
          >(
            guardedValue,
            (value) => FilterFilterCriteriaLambdaFunctionLastModifiedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lambdaFunctionLayers: (() {
        final guardedValue = map['lambdaFunctionLayers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaLambdaFunctionLayer>(
            guardedValue,
            (value) => FilterFilterCriteriaLambdaFunctionLayer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lambdaFunctionNames: (() {
        final guardedValue = map['lambdaFunctionNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaLambdaFunctionName>(
            guardedValue,
            (value) => FilterFilterCriteriaLambdaFunctionName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lambdaFunctionRuntimes: (() {
        final guardedValue = map['lambdaFunctionRuntimes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaLambdaFunctionRuntime>(
            guardedValue,
            (value) => FilterFilterCriteriaLambdaFunctionRuntime.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lastObservedAts: (() {
        final guardedValue = map['lastObservedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaLastObservedAt>(
            guardedValue,
            (value) => FilterFilterCriteriaLastObservedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkProtocols: (() {
        final guardedValue = map['networkProtocols'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaNetworkProtocol>(
            guardedValue,
            (value) => FilterFilterCriteriaNetworkProtocol.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      portRanges: (() {
        final guardedValue = map['portRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaPortRange>(
            guardedValue,
            (value) => FilterFilterCriteriaPortRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      relatedVulnerabilities: (() {
        final guardedValue = map['relatedVulnerabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaRelatedVulnerability>(
            guardedValue,
            (value) => FilterFilterCriteriaRelatedVulnerability.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceIds: (() {
        final guardedValue = map['resourceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaResourceId>(
            guardedValue,
            (value) => FilterFilterCriteriaResourceId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceTags: (() {
        final guardedValue = map['resourceTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaResourceTag>(
            guardedValue,
            (value) => FilterFilterCriteriaResourceTag.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceTypes: (() {
        final guardedValue = map['resourceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaResourceType>(
            guardedValue,
            (value) => FilterFilterCriteriaResourceType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      severities: (() {
        final guardedValue = map['severities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaSeverity>(
            guardedValue,
            (value) => FilterFilterCriteriaSeverity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      titles: (() {
        final guardedValue = map['titles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaTitle>(
            guardedValue,
            (value) => FilterFilterCriteriaTitle.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      updatedAts: (() {
        final guardedValue = map['updatedAts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaUpdatedAt>(
            guardedValue,
            (value) => FilterFilterCriteriaUpdatedAt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vendorSeverities: (() {
        final guardedValue = map['vendorSeverities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaVendorSeverity>(
            guardedValue,
            (value) => FilterFilterCriteriaVendorSeverity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vulnerabilityIds: (() {
        final guardedValue = map['vulnerabilityIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaVulnerabilityId>(
            guardedValue,
            (value) => FilterFilterCriteriaVulnerabilityId.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vulnerabilitySources: (() {
        final guardedValue = map['vulnerabilitySources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaVulnerabilitySource>(
            guardedValue,
            (value) => FilterFilterCriteriaVulnerabilitySource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vulnerablePackages: (() {
        final guardedValue = map['vulnerablePackages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FilterFilterCriteriaVulnerablePackage>(
            guardedValue,
            (value) => FilterFilterCriteriaVulnerablePackage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
