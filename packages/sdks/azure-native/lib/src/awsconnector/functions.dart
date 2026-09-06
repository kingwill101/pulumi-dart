import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_analyzer_analyzer_args.dart';
import 'get_access_analyzer_analyzer_result.dart';
import 'get_acm_certificate_summary_args.dart';
import 'get_acm_certificate_summary_result.dart';
import 'get_api_gateway_rest_api_args.dart';
import 'get_api_gateway_rest_api_result.dart';
import 'get_api_gateway_stage_args.dart';
import 'get_api_gateway_stage_result.dart';
import 'get_app_sync_graphql_api_args.dart';
import 'get_app_sync_graphql_api_result.dart';
import 'get_auto_scaling_auto_scaling_group_args.dart';
import 'get_auto_scaling_auto_scaling_group_result.dart';
import 'get_cloud_formation_stack_args.dart';
import 'get_cloud_formation_stack_result.dart';
import 'get_cloud_formation_stack_set_args.dart';
import 'get_cloud_formation_stack_set_result.dart';
import 'get_cloud_front_distribution_args.dart';
import 'get_cloud_front_distribution_result.dart';
import 'get_cloud_trail_trail_args.dart';
import 'get_cloud_trail_trail_result.dart';
import 'get_cloud_watch_alarm_args.dart';
import 'get_cloud_watch_alarm_result.dart';
import 'get_code_build_project_args.dart';
import 'get_code_build_project_result.dart';
import 'get_code_build_source_credentials_info_args.dart';
import 'get_code_build_source_credentials_info_result.dart';
import 'get_config_service_configuration_recorder_args.dart';
import 'get_config_service_configuration_recorder_result.dart';
import 'get_config_service_configuration_recorder_status_args.dart';
import 'get_config_service_configuration_recorder_status_result.dart';
import 'get_config_service_delivery_channel_args.dart';
import 'get_config_service_delivery_channel_result.dart';
import 'get_database_migration_service_replication_instance_args.dart';
import 'get_database_migration_service_replication_instance_result.dart';
import 'get_dax_cluster_args.dart';
import 'get_dax_cluster_result.dart';
import 'get_dynamo_db_continuous_backups_description_args.dart';
import 'get_dynamo_db_continuous_backups_description_result.dart';
import 'get_dynamo_db_table_args.dart';
import 'get_dynamo_db_table_result.dart';
import 'get_ec2_account_attribute_args.dart';
import 'get_ec2_account_attribute_result.dart';
import 'get_ec2_address_args.dart';
import 'get_ec2_address_result.dart';
import 'get_ec2_flow_log_args.dart';
import 'get_ec2_flow_log_result.dart';
import 'get_ec2_image_args.dart';
import 'get_ec2_image_result.dart';
import 'get_ec2_instance_args.dart';
import 'get_ec2_instance_result.dart';
import 'get_ec2_instance_status_args.dart';
import 'get_ec2_instance_status_result.dart';
import 'get_ec2_ipam_args.dart';
import 'get_ec2_ipam_result.dart';
import 'get_ec2_key_pair_args.dart';
import 'get_ec2_key_pair_result.dart';
import 'get_ec2_network_acl_args.dart';
import 'get_ec2_network_acl_result.dart';
import 'get_ec2_network_interface_args.dart';
import 'get_ec2_network_interface_result.dart';
import 'get_ec2_route_table_args.dart';
import 'get_ec2_route_table_result.dart';
import 'get_ec2_security_group_args.dart';
import 'get_ec2_security_group_result.dart';
import 'get_ec2_snapshot_args.dart';
import 'get_ec2_snapshot_result.dart';
import 'get_ec2_subnet_args.dart';
import 'get_ec2_subnet_result.dart';
import 'get_ec2_volume_args.dart';
import 'get_ec2_volume_result.dart';
import 'get_ec2_vpc_args.dart';
import 'get_ec2_vpc_endpoint_args.dart';
import 'get_ec2_vpc_endpoint_result.dart';
import 'get_ec2_vpc_peering_connection_args.dart';
import 'get_ec2_vpc_peering_connection_result.dart';
import 'get_ec2_vpc_result.dart';
import 'get_ecr_image_detail_args.dart';
import 'get_ecr_image_detail_result.dart';
import 'get_ecr_repository_args.dart';
import 'get_ecr_repository_result.dart';
import 'get_ecs_cluster_args.dart';
import 'get_ecs_cluster_result.dart';
import 'get_ecs_service_args.dart';
import 'get_ecs_service_result.dart';
import 'get_ecs_task_definition_args.dart';
import 'get_ecs_task_definition_result.dart';
import 'get_efs_file_system_args.dart';
import 'get_efs_file_system_result.dart';
import 'get_efs_mount_target_args.dart';
import 'get_efs_mount_target_result.dart';
import 'get_eks_cluster_args.dart';
import 'get_eks_cluster_result.dart';
import 'get_eks_nodegroup_args.dart';
import 'get_eks_nodegroup_result.dart';
import 'get_elastic_beanstalk_application_args.dart';
import 'get_elastic_beanstalk_application_result.dart';
import 'get_elastic_beanstalk_configuration_template_args.dart';
import 'get_elastic_beanstalk_configuration_template_result.dart';
import 'get_elastic_beanstalk_environment_args.dart';
import 'get_elastic_beanstalk_environment_result.dart';
import 'get_elastic_load_balancing_v2_listener_args.dart';
import 'get_elastic_load_balancing_v2_listener_result.dart';
import 'get_elastic_load_balancing_v2_load_balancer_args.dart';
import 'get_elastic_load_balancing_v2_load_balancer_result.dart';
import 'get_elastic_load_balancing_v2_target_group_args.dart';
import 'get_elastic_load_balancing_v2_target_group_result.dart';
import 'get_elastic_load_balancingv2_target_health_description_args.dart';
import 'get_elastic_load_balancingv2_target_health_description_result.dart';
import 'get_emr_cluster_args.dart';
import 'get_emr_cluster_result.dart';
import 'get_guard_duty_detector_args.dart';
import 'get_guard_duty_detector_result.dart';
import 'get_iam_access_key_last_used_args.dart';
import 'get_iam_access_key_last_used_result.dart';
import 'get_iam_access_key_metadata_info_args.dart';
import 'get_iam_access_key_metadata_info_result.dart';
import 'get_iam_group_args.dart';
import 'get_iam_group_result.dart';
import 'get_iam_instance_profile_args.dart';
import 'get_iam_instance_profile_result.dart';
import 'get_iam_mfa_device_args.dart';
import 'get_iam_mfa_device_result.dart';
import 'get_iam_password_policy_args.dart';
import 'get_iam_password_policy_result.dart';
import 'get_iam_policy_version_args.dart';
import 'get_iam_policy_version_result.dart';
import 'get_iam_role_args.dart';
import 'get_iam_role_result.dart';
import 'get_iam_server_certificate_args.dart';
import 'get_iam_server_certificate_result.dart';
import 'get_iam_virtual_mfa_device_args.dart';
import 'get_iam_virtual_mfa_device_result.dart';
import 'get_kms_alias_args.dart';
import 'get_kms_alias_result.dart';
import 'get_kms_key_args.dart';
import 'get_kms_key_result.dart';
import 'get_lambda_function_args.dart';
import 'get_lambda_function_code_location_args.dart';
import 'get_lambda_function_code_location_result.dart';
import 'get_lambda_function_result.dart';
import 'get_lightsail_bucket_args.dart';
import 'get_lightsail_bucket_result.dart';
import 'get_lightsail_instance_args.dart';
import 'get_lightsail_instance_result.dart';
import 'get_logs_log_group_args.dart';
import 'get_logs_log_group_result.dart';
import 'get_logs_log_stream_args.dart';
import 'get_logs_log_stream_result.dart';
import 'get_logs_metric_filter_args.dart';
import 'get_logs_metric_filter_result.dart';
import 'get_logs_subscription_filter_args.dart';
import 'get_logs_subscription_filter_result.dart';
import 'get_macie2_job_summary_args.dart';
import 'get_macie2_job_summary_result.dart';
import 'get_macie_allow_list_args.dart';
import 'get_macie_allow_list_result.dart';
import 'get_network_firewall_firewall_args.dart';
import 'get_network_firewall_firewall_policy_args.dart';
import 'get_network_firewall_firewall_policy_result.dart';
import 'get_network_firewall_firewall_result.dart';
import 'get_network_firewall_rule_group_args.dart';
import 'get_network_firewall_rule_group_result.dart';
import 'get_open_search_domain_status_args.dart';
import 'get_open_search_domain_status_result.dart';
import 'get_organizations_account_args.dart';
import 'get_organizations_account_result.dart';
import 'get_organizations_organization_args.dart';
import 'get_organizations_organization_result.dart';
import 'get_rds_db_cluster_args.dart';
import 'get_rds_db_cluster_result.dart';
import 'get_rds_db_instance_args.dart';
import 'get_rds_db_instance_result.dart';
import 'get_rds_db_snapshot_args.dart';
import 'get_rds_db_snapshot_attributes_result_args.dart';
import 'get_rds_db_snapshot_attributes_result_result.dart';
import 'get_rds_db_snapshot_result.dart';
import 'get_rds_event_subscription_args.dart';
import 'get_rds_event_subscription_result.dart';
import 'get_rds_export_task_args.dart';
import 'get_rds_export_task_result.dart';
import 'get_redshift_cluster_args.dart';
import 'get_redshift_cluster_parameter_group_args.dart';
import 'get_redshift_cluster_parameter_group_result.dart';
import 'get_redshift_cluster_result.dart';
import 'get_route53_domains_domain_summary_args.dart';
import 'get_route53_domains_domain_summary_result.dart';
import 'get_route53_hosted_zone_args.dart';
import 'get_route53_hosted_zone_result.dart';
import 'get_route53_resource_record_set_args.dart';
import 'get_route53_resource_record_set_result.dart';
import 'get_s3_access_control_policy_args.dart';
import 'get_s3_access_control_policy_result.dart';
import 'get_s3_access_point_args.dart';
import 'get_s3_access_point_result.dart';
import 'get_s3_bucket_args.dart';
import 'get_s3_bucket_policy_args.dart';
import 'get_s3_bucket_policy_result.dart';
import 'get_s3_bucket_result.dart';
import 'get_s3_control_multi_region_access_point_policy_document_args.dart';
import 'get_s3_control_multi_region_access_point_policy_document_result.dart';
import 'get_sage_maker_app_args.dart';
import 'get_sage_maker_app_result.dart';
import 'get_sage_maker_notebook_instance_summary_args.dart';
import 'get_sage_maker_notebook_instance_summary_result.dart';
import 'get_secrets_manager_resource_policy_args.dart';
import 'get_secrets_manager_resource_policy_result.dart';
import 'get_secrets_manager_secret_args.dart';
import 'get_secrets_manager_secret_result.dart';
import 'get_sns_subscription_args.dart';
import 'get_sns_subscription_result.dart';
import 'get_sns_topic_args.dart';
import 'get_sns_topic_result.dart';
import 'get_sqs_queue_args.dart';
import 'get_sqs_queue_result.dart';
import 'get_ssm_instance_information_args.dart';
import 'get_ssm_instance_information_result.dart';
import 'get_ssm_parameter_args.dart';
import 'get_ssm_parameter_result.dart';
import 'get_ssm_resource_compliance_summary_item_args.dart';
import 'get_ssm_resource_compliance_summary_item_result.dart';
import 'get_waf_web_acl_summary_args.dart';
import 'get_waf_web_acl_summary_result.dart';
import 'get_wafv2_logging_configuration_args.dart';
import 'get_wafv2_logging_configuration_result.dart';

/// Get a AccessAnalyzerAnalyzer
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_access_analyzer_analyzer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessAnalyzerAnalyzerResult> getAccessAnalyzerAnalyzer(
  GetAccessAnalyzerAnalyzerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getAccessAnalyzerAnalyzer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessAnalyzerAnalyzerResult.fromMap(result);
}

pulumi.Output<GetAccessAnalyzerAnalyzerResult> getAccessAnalyzerAnalyzerOutput(
  GetAccessAnalyzerAnalyzerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getAccessAnalyzerAnalyzer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessAnalyzerAnalyzerResult.fromMap);
}

/// Get a AcmCertificateSummary
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_acm_certificate_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAcmCertificateSummaryResult> getAcmCertificateSummary(
  GetAcmCertificateSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getAcmCertificateSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAcmCertificateSummaryResult.fromMap(result);
}

pulumi.Output<GetAcmCertificateSummaryResult> getAcmCertificateSummaryOutput(
  GetAcmCertificateSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getAcmCertificateSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAcmCertificateSummaryResult.fromMap);
}

/// Get a ApiGatewayRestApi
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_api_gateway_rest_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiGatewayRestApiResult> getApiGatewayRestApi(
  GetApiGatewayRestApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getApiGatewayRestApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiGatewayRestApiResult.fromMap(result);
}

pulumi.Output<GetApiGatewayRestApiResult> getApiGatewayRestApiOutput(
  GetApiGatewayRestApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getApiGatewayRestApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiGatewayRestApiResult.fromMap);
}

/// Get a ApiGatewayStage
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_api_gateway_stage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiGatewayStageResult> getApiGatewayStage(
  GetApiGatewayStageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getApiGatewayStage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiGatewayStageResult.fromMap(result);
}

pulumi.Output<GetApiGatewayStageResult> getApiGatewayStageOutput(
  GetApiGatewayStageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getApiGatewayStage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiGatewayStageResult.fromMap);
}

/// Get a AppSyncGraphqlApi
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_app_sync_graphql_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppSyncGraphqlApiResult> getAppSyncGraphqlApi(
  GetAppSyncGraphqlApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getAppSyncGraphqlApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppSyncGraphqlApiResult.fromMap(result);
}

pulumi.Output<GetAppSyncGraphqlApiResult> getAppSyncGraphqlApiOutput(
  GetAppSyncGraphqlApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getAppSyncGraphqlApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppSyncGraphqlApiResult.fromMap);
}

/// Get a AutoScalingAutoScalingGroup
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_auto_scaling_auto_scaling_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoScalingAutoScalingGroupResult> getAutoScalingAutoScalingGroup(
  GetAutoScalingAutoScalingGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getAutoScalingAutoScalingGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoScalingAutoScalingGroupResult.fromMap(result);
}

pulumi.Output<GetAutoScalingAutoScalingGroupResult> getAutoScalingAutoScalingGroupOutput(
  GetAutoScalingAutoScalingGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getAutoScalingAutoScalingGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutoScalingAutoScalingGroupResult.fromMap);
}

/// Get a CloudFormationStack
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_cloud_formation_stack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudFormationStackResult> getCloudFormationStack(
  GetCloudFormationStackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudFormationStack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudFormationStackResult.fromMap(result);
}

pulumi.Output<GetCloudFormationStackResult> getCloudFormationStackOutput(
  GetCloudFormationStackArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudFormationStack',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudFormationStackResult.fromMap);
}

/// Get a CloudFormationStackSet
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_cloud_formation_stack_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudFormationStackSetResult> getCloudFormationStackSet(
  GetCloudFormationStackSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudFormationStackSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudFormationStackSetResult.fromMap(result);
}

pulumi.Output<GetCloudFormationStackSetResult> getCloudFormationStackSetOutput(
  GetCloudFormationStackSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudFormationStackSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudFormationStackSetResult.fromMap);
}

/// Get a CloudFrontDistribution
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_cloud_front_distribution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudFrontDistributionResult> getCloudFrontDistribution(
  GetCloudFrontDistributionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudFrontDistribution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudFrontDistributionResult.fromMap(result);
}

pulumi.Output<GetCloudFrontDistributionResult> getCloudFrontDistributionOutput(
  GetCloudFrontDistributionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudFrontDistribution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudFrontDistributionResult.fromMap);
}

/// Get a CloudTrailTrail
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_cloud_trail_trail_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudTrailTrailResult> getCloudTrailTrail(
  GetCloudTrailTrailArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudTrailTrail',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudTrailTrailResult.fromMap(result);
}

pulumi.Output<GetCloudTrailTrailResult> getCloudTrailTrailOutput(
  GetCloudTrailTrailArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudTrailTrail',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudTrailTrailResult.fromMap);
}

/// Get a CloudWatchAlarm
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_cloud_watch_alarm_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudWatchAlarmResult> getCloudWatchAlarm(
  GetCloudWatchAlarmArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudWatchAlarm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudWatchAlarmResult.fromMap(result);
}

pulumi.Output<GetCloudWatchAlarmResult> getCloudWatchAlarmOutput(
  GetCloudWatchAlarmArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getCloudWatchAlarm',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudWatchAlarmResult.fromMap);
}

/// Get a CodeBuildProject
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_code_build_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCodeBuildProjectResult> getCodeBuildProject(
  GetCodeBuildProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getCodeBuildProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCodeBuildProjectResult.fromMap(result);
}

pulumi.Output<GetCodeBuildProjectResult> getCodeBuildProjectOutput(
  GetCodeBuildProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getCodeBuildProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCodeBuildProjectResult.fromMap);
}

/// Get a CodeBuildSourceCredentialsInfo
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_code_build_source_credentials_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCodeBuildSourceCredentialsInfoResult> getCodeBuildSourceCredentialsInfo(
  GetCodeBuildSourceCredentialsInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getCodeBuildSourceCredentialsInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCodeBuildSourceCredentialsInfoResult.fromMap(result);
}

pulumi.Output<GetCodeBuildSourceCredentialsInfoResult> getCodeBuildSourceCredentialsInfoOutput(
  GetCodeBuildSourceCredentialsInfoArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getCodeBuildSourceCredentialsInfo',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCodeBuildSourceCredentialsInfoResult.fromMap);
}

/// Get a ConfigServiceConfigurationRecorder
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_config_service_configuration_recorder_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigServiceConfigurationRecorderResult> getConfigServiceConfigurationRecorder(
  GetConfigServiceConfigurationRecorderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getConfigServiceConfigurationRecorder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigServiceConfigurationRecorderResult.fromMap(result);
}

pulumi.Output<GetConfigServiceConfigurationRecorderResult> getConfigServiceConfigurationRecorderOutput(
  GetConfigServiceConfigurationRecorderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getConfigServiceConfigurationRecorder',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigServiceConfigurationRecorderResult.fromMap);
}

/// Get a ConfigServiceConfigurationRecorderStatus
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_config_service_configuration_recorder_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigServiceConfigurationRecorderStatusResult> getConfigServiceConfigurationRecorderStatus(
  GetConfigServiceConfigurationRecorderStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getConfigServiceConfigurationRecorderStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigServiceConfigurationRecorderStatusResult.fromMap(result);
}

pulumi.Output<GetConfigServiceConfigurationRecorderStatusResult> getConfigServiceConfigurationRecorderStatusOutput(
  GetConfigServiceConfigurationRecorderStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getConfigServiceConfigurationRecorderStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigServiceConfigurationRecorderStatusResult.fromMap);
}

/// Get a ConfigServiceDeliveryChannel
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_config_service_delivery_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigServiceDeliveryChannelResult> getConfigServiceDeliveryChannel(
  GetConfigServiceDeliveryChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getConfigServiceDeliveryChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigServiceDeliveryChannelResult.fromMap(result);
}

pulumi.Output<GetConfigServiceDeliveryChannelResult> getConfigServiceDeliveryChannelOutput(
  GetConfigServiceDeliveryChannelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getConfigServiceDeliveryChannel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigServiceDeliveryChannelResult.fromMap);
}

/// Get a DatabaseMigrationServiceReplicationInstance
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_database_migration_service_replication_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMigrationServiceReplicationInstanceResult> getDatabaseMigrationServiceReplicationInstance(
  GetDatabaseMigrationServiceReplicationInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getDatabaseMigrationServiceReplicationInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMigrationServiceReplicationInstanceResult.fromMap(result);
}

pulumi.Output<GetDatabaseMigrationServiceReplicationInstanceResult> getDatabaseMigrationServiceReplicationInstanceOutput(
  GetDatabaseMigrationServiceReplicationInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getDatabaseMigrationServiceReplicationInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseMigrationServiceReplicationInstanceResult.fromMap);
}

/// Get a DaxCluster
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_dax_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDaxClusterResult> getDaxCluster(
  GetDaxClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getDaxCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDaxClusterResult.fromMap(result);
}

pulumi.Output<GetDaxClusterResult> getDaxClusterOutput(
  GetDaxClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getDaxCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDaxClusterResult.fromMap);
}

/// Get a DynamoDBContinuousBackupsDescription
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_dynamo_db_continuous_backups_description_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDynamoDbContinuousBackupsDescriptionResult> getDynamoDbContinuousBackupsDescription(
  GetDynamoDbContinuousBackupsDescriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getDynamoDbContinuousBackupsDescription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDynamoDbContinuousBackupsDescriptionResult.fromMap(result);
}

pulumi.Output<GetDynamoDbContinuousBackupsDescriptionResult> getDynamoDbContinuousBackupsDescriptionOutput(
  GetDynamoDbContinuousBackupsDescriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getDynamoDbContinuousBackupsDescription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDynamoDbContinuousBackupsDescriptionResult.fromMap);
}

/// Get a DynamoDBTable
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_dynamo_db_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDynamoDbTableResult> getDynamoDbTable(
  GetDynamoDbTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getDynamoDbTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDynamoDbTableResult.fromMap(result);
}

pulumi.Output<GetDynamoDbTableResult> getDynamoDbTableOutput(
  GetDynamoDbTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getDynamoDbTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDynamoDbTableResult.fromMap);
}

/// Get a Ec2AccountAttribute
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_account_attribute_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2AccountAttributeResult> getEc2AccountAttribute(
  GetEc2AccountAttributeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2AccountAttribute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2AccountAttributeResult.fromMap(result);
}

pulumi.Output<GetEc2AccountAttributeResult> getEc2AccountAttributeOutput(
  GetEc2AccountAttributeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2AccountAttribute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2AccountAttributeResult.fromMap);
}

/// Get a Ec2Address
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2AddressResult> getEc2Address(
  GetEc2AddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Address',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2AddressResult.fromMap(result);
}

pulumi.Output<GetEc2AddressResult> getEc2AddressOutput(
  GetEc2AddressArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Address',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2AddressResult.fromMap);
}

/// Get a Ec2FlowLog
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_flow_log_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2FlowLogResult> getEc2FlowLog(
  GetEc2FlowLogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2FlowLog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2FlowLogResult.fromMap(result);
}

pulumi.Output<GetEc2FlowLogResult> getEc2FlowLogOutput(
  GetEc2FlowLogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2FlowLog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2FlowLogResult.fromMap);
}

/// Get a Ec2Image
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2ImageResult> getEc2Image(
  GetEc2ImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Image',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2ImageResult.fromMap(result);
}

pulumi.Output<GetEc2ImageResult> getEc2ImageOutput(
  GetEc2ImageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Image',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2ImageResult.fromMap);
}

/// Get a Ec2Instance
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2InstanceResult> getEc2Instance(
  GetEc2InstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Instance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2InstanceResult.fromMap(result);
}

pulumi.Output<GetEc2InstanceResult> getEc2InstanceOutput(
  GetEc2InstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Instance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2InstanceResult.fromMap);
}

/// Get a Ec2InstanceStatus
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_instance_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2InstanceStatusResult> getEc2InstanceStatus(
  GetEc2InstanceStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2InstanceStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2InstanceStatusResult.fromMap(result);
}

pulumi.Output<GetEc2InstanceStatusResult> getEc2InstanceStatusOutput(
  GetEc2InstanceStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2InstanceStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2InstanceStatusResult.fromMap);
}

/// Get a Ec2Ipam
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_ipam_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2IpamResult> getEc2Ipam(
  GetEc2IpamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Ipam',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2IpamResult.fromMap(result);
}

pulumi.Output<GetEc2IpamResult> getEc2IpamOutput(
  GetEc2IpamArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Ipam',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2IpamResult.fromMap);
}

/// Get a Ec2KeyPair
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_key_pair_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2KeyPairResult> getEc2KeyPair(
  GetEc2KeyPairArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2KeyPair',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2KeyPairResult.fromMap(result);
}

pulumi.Output<GetEc2KeyPairResult> getEc2KeyPairOutput(
  GetEc2KeyPairArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2KeyPair',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2KeyPairResult.fromMap);
}

/// Get a Ec2NetworkAcl
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_network_acl_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2NetworkAclResult> getEc2NetworkAcl(
  GetEc2NetworkAclArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2NetworkAcl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2NetworkAclResult.fromMap(result);
}

pulumi.Output<GetEc2NetworkAclResult> getEc2NetworkAclOutput(
  GetEc2NetworkAclArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2NetworkAcl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2NetworkAclResult.fromMap);
}

/// Get a Ec2NetworkInterface
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_network_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2NetworkInterfaceResult> getEc2NetworkInterface(
  GetEc2NetworkInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2NetworkInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2NetworkInterfaceResult.fromMap(result);
}

pulumi.Output<GetEc2NetworkInterfaceResult> getEc2NetworkInterfaceOutput(
  GetEc2NetworkInterfaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2NetworkInterface',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2NetworkInterfaceResult.fromMap);
}

/// Get a Ec2RouteTable
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_route_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2RouteTableResult> getEc2RouteTable(
  GetEc2RouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2RouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2RouteTableResult.fromMap(result);
}

pulumi.Output<GetEc2RouteTableResult> getEc2RouteTableOutput(
  GetEc2RouteTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2RouteTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2RouteTableResult.fromMap);
}

/// Get a Ec2SecurityGroup
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_security_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2SecurityGroupResult> getEc2SecurityGroup(
  GetEc2SecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2SecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2SecurityGroupResult.fromMap(result);
}

pulumi.Output<GetEc2SecurityGroupResult> getEc2SecurityGroupOutput(
  GetEc2SecurityGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2SecurityGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2SecurityGroupResult.fromMap);
}

/// Get a Ec2Snapshot
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2SnapshotResult> getEc2Snapshot(
  GetEc2SnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Snapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2SnapshotResult.fromMap(result);
}

pulumi.Output<GetEc2SnapshotResult> getEc2SnapshotOutput(
  GetEc2SnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Snapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2SnapshotResult.fromMap);
}

/// Get a Ec2Subnet
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2SubnetResult> getEc2Subnet(
  GetEc2SubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Subnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2SubnetResult.fromMap(result);
}

pulumi.Output<GetEc2SubnetResult> getEc2SubnetOutput(
  GetEc2SubnetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Subnet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2SubnetResult.fromMap);
}

/// Get a Ec2Volume
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2VolumeResult> getEc2Volume(
  GetEc2VolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Volume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2VolumeResult.fromMap(result);
}

pulumi.Output<GetEc2VolumeResult> getEc2VolumeOutput(
  GetEc2VolumeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Volume',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2VolumeResult.fromMap);
}

/// Get a Ec2Vpc
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_vpc_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2VpcResult> getEc2Vpc(
  GetEc2VpcArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Vpc',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2VpcResult.fromMap(result);
}

pulumi.Output<GetEc2VpcResult> getEc2VpcOutput(
  GetEc2VpcArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2Vpc',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2VpcResult.fromMap);
}

/// Get a Ec2VPCEndpoint
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_vpc_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2VpcEndpointResult> getEc2VpcEndpoint(
  GetEc2VpcEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2VpcEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2VpcEndpointResult.fromMap(result);
}

pulumi.Output<GetEc2VpcEndpointResult> getEc2VpcEndpointOutput(
  GetEc2VpcEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2VpcEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2VpcEndpointResult.fromMap);
}

/// Get a Ec2VPCPeeringConnection
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ec2_vpc_peering_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEc2VpcPeeringConnectionResult> getEc2VpcPeeringConnection(
  GetEc2VpcPeeringConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2VpcPeeringConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEc2VpcPeeringConnectionResult.fromMap(result);
}

pulumi.Output<GetEc2VpcPeeringConnectionResult> getEc2VpcPeeringConnectionOutput(
  GetEc2VpcPeeringConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEc2VpcPeeringConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEc2VpcPeeringConnectionResult.fromMap);
}

/// Get a EcrImageDetail
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ecr_image_detail_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcrImageDetailResult> getEcrImageDetail(
  GetEcrImageDetailArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcrImageDetail',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcrImageDetailResult.fromMap(result);
}

pulumi.Output<GetEcrImageDetailResult> getEcrImageDetailOutput(
  GetEcrImageDetailArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcrImageDetail',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEcrImageDetailResult.fromMap);
}

/// Get a EcrRepository
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ecr_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcrRepositoryResult> getEcrRepository(
  GetEcrRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcrRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcrRepositoryResult.fromMap(result);
}

pulumi.Output<GetEcrRepositoryResult> getEcrRepositoryOutput(
  GetEcrRepositoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcrRepository',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEcrRepositoryResult.fromMap);
}

/// Get a EcsCluster
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ecs_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsClusterResult> getEcsCluster(
  GetEcsClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcsCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsClusterResult.fromMap(result);
}

pulumi.Output<GetEcsClusterResult> getEcsClusterOutput(
  GetEcsClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcsCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEcsClusterResult.fromMap);
}

/// Get a EcsService
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ecs_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsServiceResult> getEcsService(
  GetEcsServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcsService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsServiceResult.fromMap(result);
}

pulumi.Output<GetEcsServiceResult> getEcsServiceOutput(
  GetEcsServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcsService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEcsServiceResult.fromMap);
}

/// Get a EcsTaskDefinition
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ecs_task_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsTaskDefinitionResult> getEcsTaskDefinition(
  GetEcsTaskDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcsTaskDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsTaskDefinitionResult.fromMap(result);
}

pulumi.Output<GetEcsTaskDefinitionResult> getEcsTaskDefinitionOutput(
  GetEcsTaskDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEcsTaskDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEcsTaskDefinitionResult.fromMap);
}

/// Get a EfsFileSystem
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_efs_file_system_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEfsFileSystemResult> getEfsFileSystem(
  GetEfsFileSystemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEfsFileSystem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEfsFileSystemResult.fromMap(result);
}

pulumi.Output<GetEfsFileSystemResult> getEfsFileSystemOutput(
  GetEfsFileSystemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEfsFileSystem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEfsFileSystemResult.fromMap);
}

/// Get a EfsMountTarget
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_efs_mount_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEfsMountTargetResult> getEfsMountTarget(
  GetEfsMountTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEfsMountTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEfsMountTargetResult.fromMap(result);
}

pulumi.Output<GetEfsMountTargetResult> getEfsMountTargetOutput(
  GetEfsMountTargetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEfsMountTarget',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEfsMountTargetResult.fromMap);
}

/// Get a EksCluster
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_eks_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEksClusterResult> getEksCluster(
  GetEksClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEksCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEksClusterResult.fromMap(result);
}

pulumi.Output<GetEksClusterResult> getEksClusterOutput(
  GetEksClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEksCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEksClusterResult.fromMap);
}

/// Get a EksNodegroup
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_eks_nodegroup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEksNodegroupResult> getEksNodegroup(
  GetEksNodegroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEksNodegroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEksNodegroupResult.fromMap(result);
}

pulumi.Output<GetEksNodegroupResult> getEksNodegroupOutput(
  GetEksNodegroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEksNodegroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEksNodegroupResult.fromMap);
}

/// Get a ElasticBeanstalkApplication
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_elastic_beanstalk_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticBeanstalkApplicationResult> getElasticBeanstalkApplication(
  GetElasticBeanstalkApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticBeanstalkApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticBeanstalkApplicationResult.fromMap(result);
}

pulumi.Output<GetElasticBeanstalkApplicationResult> getElasticBeanstalkApplicationOutput(
  GetElasticBeanstalkApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticBeanstalkApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetElasticBeanstalkApplicationResult.fromMap);
}

/// Get a ElasticBeanstalkConfigurationTemplate
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_elastic_beanstalk_configuration_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticBeanstalkConfigurationTemplateResult> getElasticBeanstalkConfigurationTemplate(
  GetElasticBeanstalkConfigurationTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticBeanstalkConfigurationTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticBeanstalkConfigurationTemplateResult.fromMap(result);
}

pulumi.Output<GetElasticBeanstalkConfigurationTemplateResult> getElasticBeanstalkConfigurationTemplateOutput(
  GetElasticBeanstalkConfigurationTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticBeanstalkConfigurationTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetElasticBeanstalkConfigurationTemplateResult.fromMap);
}

/// Get a ElasticBeanstalkEnvironment
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_elastic_beanstalk_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticBeanstalkEnvironmentResult> getElasticBeanstalkEnvironment(
  GetElasticBeanstalkEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticBeanstalkEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticBeanstalkEnvironmentResult.fromMap(result);
}

pulumi.Output<GetElasticBeanstalkEnvironmentResult> getElasticBeanstalkEnvironmentOutput(
  GetElasticBeanstalkEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticBeanstalkEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetElasticBeanstalkEnvironmentResult.fromMap);
}

/// Get a ElasticLoadBalancingV2Listener
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_elastic_load_balancing_v2_listener_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticLoadBalancingV2ListenerResult> getElasticLoadBalancingV2Listener(
  GetElasticLoadBalancingV2ListenerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticLoadBalancingV2Listener',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticLoadBalancingV2ListenerResult.fromMap(result);
}

pulumi.Output<GetElasticLoadBalancingV2ListenerResult> getElasticLoadBalancingV2ListenerOutput(
  GetElasticLoadBalancingV2ListenerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticLoadBalancingV2Listener',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetElasticLoadBalancingV2ListenerResult.fromMap);
}

/// Get a ElasticLoadBalancingV2LoadBalancer
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_elastic_load_balancing_v2_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticLoadBalancingV2LoadBalancerResult> getElasticLoadBalancingV2LoadBalancer(
  GetElasticLoadBalancingV2LoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticLoadBalancingV2LoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticLoadBalancingV2LoadBalancerResult.fromMap(result);
}

pulumi.Output<GetElasticLoadBalancingV2LoadBalancerResult> getElasticLoadBalancingV2LoadBalancerOutput(
  GetElasticLoadBalancingV2LoadBalancerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticLoadBalancingV2LoadBalancer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetElasticLoadBalancingV2LoadBalancerResult.fromMap);
}

/// Get a ElasticLoadBalancingV2TargetGroup
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_elastic_load_balancing_v2_target_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticLoadBalancingV2TargetGroupResult> getElasticLoadBalancingV2TargetGroup(
  GetElasticLoadBalancingV2TargetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticLoadBalancingV2TargetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticLoadBalancingV2TargetGroupResult.fromMap(result);
}

pulumi.Output<GetElasticLoadBalancingV2TargetGroupResult> getElasticLoadBalancingV2TargetGroupOutput(
  GetElasticLoadBalancingV2TargetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticLoadBalancingV2TargetGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetElasticLoadBalancingV2TargetGroupResult.fromMap);
}

/// Get a ElasticLoadBalancingv2TargetHealthDescription
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_elastic_load_balancingv2_target_health_description_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticLoadBalancingv2TargetHealthDescriptionResult> getElasticLoadBalancingv2TargetHealthDescription(
  GetElasticLoadBalancingv2TargetHealthDescriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticLoadBalancingv2TargetHealthDescription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticLoadBalancingv2TargetHealthDescriptionResult.fromMap(result);
}

pulumi.Output<GetElasticLoadBalancingv2TargetHealthDescriptionResult> getElasticLoadBalancingv2TargetHealthDescriptionOutput(
  GetElasticLoadBalancingv2TargetHealthDescriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getElasticLoadBalancingv2TargetHealthDescription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetElasticLoadBalancingv2TargetHealthDescriptionResult.fromMap);
}

/// Get a EmrCluster
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_emr_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEmrClusterResult> getEmrCluster(
  GetEmrClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getEmrCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmrClusterResult.fromMap(result);
}

pulumi.Output<GetEmrClusterResult> getEmrClusterOutput(
  GetEmrClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getEmrCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEmrClusterResult.fromMap);
}

/// Get a GuardDutyDetector
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_guard_duty_detector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuardDutyDetectorResult> getGuardDutyDetector(
  GetGuardDutyDetectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getGuardDutyDetector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuardDutyDetectorResult.fromMap(result);
}

pulumi.Output<GetGuardDutyDetectorResult> getGuardDutyDetectorOutput(
  GetGuardDutyDetectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getGuardDutyDetector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuardDutyDetectorResult.fromMap);
}

/// Get a IamAccessKeyLastUsed
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_access_key_last_used_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamAccessKeyLastUsedResult> getIamAccessKeyLastUsed(
  GetIamAccessKeyLastUsedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamAccessKeyLastUsed',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamAccessKeyLastUsedResult.fromMap(result);
}

pulumi.Output<GetIamAccessKeyLastUsedResult> getIamAccessKeyLastUsedOutput(
  GetIamAccessKeyLastUsedArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamAccessKeyLastUsed',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamAccessKeyLastUsedResult.fromMap);
}

/// Get a IamAccessKeyMetadata
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_access_key_metadata_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamAccessKeyMetadataInfoResult> getIamAccessKeyMetadataInfo(
  GetIamAccessKeyMetadataInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamAccessKeyMetadataInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamAccessKeyMetadataInfoResult.fromMap(result);
}

pulumi.Output<GetIamAccessKeyMetadataInfoResult> getIamAccessKeyMetadataInfoOutput(
  GetIamAccessKeyMetadataInfoArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamAccessKeyMetadataInfo',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamAccessKeyMetadataInfoResult.fromMap);
}

/// Get a IamGroup
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamGroupResult> getIamGroup(
  GetIamGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamGroupResult.fromMap(result);
}

pulumi.Output<GetIamGroupResult> getIamGroupOutput(
  GetIamGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamGroupResult.fromMap);
}

/// Get a IamInstanceProfile
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_instance_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamInstanceProfileResult> getIamInstanceProfile(
  GetIamInstanceProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamInstanceProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamInstanceProfileResult.fromMap(result);
}

pulumi.Output<GetIamInstanceProfileResult> getIamInstanceProfileOutput(
  GetIamInstanceProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamInstanceProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamInstanceProfileResult.fromMap);
}

/// Get a IamMFADevice
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_mfa_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamMfaDeviceResult> getIamMfaDevice(
  GetIamMfaDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamMfaDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamMfaDeviceResult.fromMap(result);
}

pulumi.Output<GetIamMfaDeviceResult> getIamMfaDeviceOutput(
  GetIamMfaDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamMfaDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamMfaDeviceResult.fromMap);
}

/// Get a IamPasswordPolicy
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_password_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamPasswordPolicyResult> getIamPasswordPolicy(
  GetIamPasswordPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamPasswordPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPasswordPolicyResult.fromMap(result);
}

pulumi.Output<GetIamPasswordPolicyResult> getIamPasswordPolicyOutput(
  GetIamPasswordPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamPasswordPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamPasswordPolicyResult.fromMap);
}

/// Get a IamPolicyVersion
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_policy_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamPolicyVersionResult> getIamPolicyVersion(
  GetIamPolicyVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamPolicyVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyVersionResult.fromMap(result);
}

pulumi.Output<GetIamPolicyVersionResult> getIamPolicyVersionOutput(
  GetIamPolicyVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamPolicyVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamPolicyVersionResult.fromMap);
}

/// Get a IamRole
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamRoleResult> getIamRole(
  GetIamRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamRoleResult.fromMap(result);
}

pulumi.Output<GetIamRoleResult> getIamRoleOutput(
  GetIamRoleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamRole',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamRoleResult.fromMap);
}

/// Get a IamServerCertificate
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_server_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamServerCertificateResult> getIamServerCertificate(
  GetIamServerCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamServerCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamServerCertificateResult.fromMap(result);
}

pulumi.Output<GetIamServerCertificateResult> getIamServerCertificateOutput(
  GetIamServerCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamServerCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamServerCertificateResult.fromMap);
}

/// Get a IamVirtualMFADevice
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_iam_virtual_mfa_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamVirtualMfaDeviceResult> getIamVirtualMfaDevice(
  GetIamVirtualMfaDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamVirtualMfaDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamVirtualMfaDeviceResult.fromMap(result);
}

pulumi.Output<GetIamVirtualMfaDeviceResult> getIamVirtualMfaDeviceOutput(
  GetIamVirtualMfaDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getIamVirtualMfaDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamVirtualMfaDeviceResult.fromMap);
}

/// Get a KmsAlias
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_kms_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKmsAliasResult> getKmsAlias(
  GetKmsAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getKmsAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKmsAliasResult.fromMap(result);
}

pulumi.Output<GetKmsAliasResult> getKmsAliasOutput(
  GetKmsAliasArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getKmsAlias',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKmsAliasResult.fromMap);
}

/// Get a KmsKey
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_kms_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKmsKeyResult> getKmsKey(
  GetKmsKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getKmsKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKmsKeyResult.fromMap(result);
}

pulumi.Output<GetKmsKeyResult> getKmsKeyOutput(
  GetKmsKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getKmsKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKmsKeyResult.fromMap);
}

/// Get a LambdaFunction
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_lambda_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLambdaFunctionResult> getLambdaFunction(
  GetLambdaFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getLambdaFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLambdaFunctionResult.fromMap(result);
}

pulumi.Output<GetLambdaFunctionResult> getLambdaFunctionOutput(
  GetLambdaFunctionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getLambdaFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLambdaFunctionResult.fromMap);
}

/// Get a LambdaFunctionCodeLocation
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_lambda_function_code_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLambdaFunctionCodeLocationResult> getLambdaFunctionCodeLocation(
  GetLambdaFunctionCodeLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getLambdaFunctionCodeLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLambdaFunctionCodeLocationResult.fromMap(result);
}

pulumi.Output<GetLambdaFunctionCodeLocationResult> getLambdaFunctionCodeLocationOutput(
  GetLambdaFunctionCodeLocationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getLambdaFunctionCodeLocation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLambdaFunctionCodeLocationResult.fromMap);
}

/// Get a LightsailBucket
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_lightsail_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLightsailBucketResult> getLightsailBucket(
  GetLightsailBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getLightsailBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLightsailBucketResult.fromMap(result);
}

pulumi.Output<GetLightsailBucketResult> getLightsailBucketOutput(
  GetLightsailBucketArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getLightsailBucket',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLightsailBucketResult.fromMap);
}

/// Get a LightsailInstance
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_lightsail_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLightsailInstanceResult> getLightsailInstance(
  GetLightsailInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getLightsailInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLightsailInstanceResult.fromMap(result);
}

pulumi.Output<GetLightsailInstanceResult> getLightsailInstanceOutput(
  GetLightsailInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getLightsailInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLightsailInstanceResult.fromMap);
}

/// Get a LogsLogGroup
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_logs_log_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogsLogGroupResult> getLogsLogGroup(
  GetLogsLogGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getLogsLogGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogsLogGroupResult.fromMap(result);
}

pulumi.Output<GetLogsLogGroupResult> getLogsLogGroupOutput(
  GetLogsLogGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getLogsLogGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogsLogGroupResult.fromMap);
}

/// Get a LogsLogStream
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_logs_log_stream_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogsLogStreamResult> getLogsLogStream(
  GetLogsLogStreamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getLogsLogStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogsLogStreamResult.fromMap(result);
}

pulumi.Output<GetLogsLogStreamResult> getLogsLogStreamOutput(
  GetLogsLogStreamArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getLogsLogStream',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogsLogStreamResult.fromMap);
}

/// Get a LogsMetricFilter
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_logs_metric_filter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogsMetricFilterResult> getLogsMetricFilter(
  GetLogsMetricFilterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getLogsMetricFilter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogsMetricFilterResult.fromMap(result);
}

pulumi.Output<GetLogsMetricFilterResult> getLogsMetricFilterOutput(
  GetLogsMetricFilterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getLogsMetricFilter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogsMetricFilterResult.fromMap);
}

/// Get a LogsSubscriptionFilter
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_logs_subscription_filter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogsSubscriptionFilterResult> getLogsSubscriptionFilter(
  GetLogsSubscriptionFilterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getLogsSubscriptionFilter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogsSubscriptionFilterResult.fromMap(result);
}

pulumi.Output<GetLogsSubscriptionFilterResult> getLogsSubscriptionFilterOutput(
  GetLogsSubscriptionFilterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getLogsSubscriptionFilter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogsSubscriptionFilterResult.fromMap);
}

/// Get a Macie2JobSummary
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_macie2_job_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMacie2JobSummaryResult> getMacie2JobSummary(
  GetMacie2JobSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getMacie2JobSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMacie2JobSummaryResult.fromMap(result);
}

pulumi.Output<GetMacie2JobSummaryResult> getMacie2JobSummaryOutput(
  GetMacie2JobSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getMacie2JobSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMacie2JobSummaryResult.fromMap);
}

/// Get a MacieAllowList
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_macie_allow_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMacieAllowListResult> getMacieAllowList(
  GetMacieAllowListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getMacieAllowList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMacieAllowListResult.fromMap(result);
}

pulumi.Output<GetMacieAllowListResult> getMacieAllowListOutput(
  GetMacieAllowListArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getMacieAllowList',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMacieAllowListResult.fromMap);
}

/// Get a NetworkFirewallFirewall
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_network_firewall_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallFirewallResult> getNetworkFirewallFirewall(
  GetNetworkFirewallFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getNetworkFirewallFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallFirewallResult.fromMap(result);
}

pulumi.Output<GetNetworkFirewallFirewallResult> getNetworkFirewallFirewallOutput(
  GetNetworkFirewallFirewallArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getNetworkFirewallFirewall',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFirewallFirewallResult.fromMap);
}

/// Get a NetworkFirewallFirewallPolicy
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_network_firewall_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallFirewallPolicyResult> getNetworkFirewallFirewallPolicy(
  GetNetworkFirewallFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getNetworkFirewallFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallFirewallPolicyResult.fromMap(result);
}

pulumi.Output<GetNetworkFirewallFirewallPolicyResult> getNetworkFirewallFirewallPolicyOutput(
  GetNetworkFirewallFirewallPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getNetworkFirewallFirewallPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFirewallFirewallPolicyResult.fromMap);
}

/// Get a NetworkFirewallRuleGroup
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_network_firewall_rule_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallRuleGroupResult> getNetworkFirewallRuleGroup(
  GetNetworkFirewallRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getNetworkFirewallRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallRuleGroupResult.fromMap(result);
}

pulumi.Output<GetNetworkFirewallRuleGroupResult> getNetworkFirewallRuleGroupOutput(
  GetNetworkFirewallRuleGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getNetworkFirewallRuleGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFirewallRuleGroupResult.fromMap);
}

/// Get a OpenSearchDomainStatus
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_open_search_domain_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenSearchDomainStatusResult> getOpenSearchDomainStatus(
  GetOpenSearchDomainStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getOpenSearchDomainStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenSearchDomainStatusResult.fromMap(result);
}

pulumi.Output<GetOpenSearchDomainStatusResult> getOpenSearchDomainStatusOutput(
  GetOpenSearchDomainStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getOpenSearchDomainStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOpenSearchDomainStatusResult.fromMap);
}

/// Get a OrganizationsAccount
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_organizations_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationsAccountResult> getOrganizationsAccount(
  GetOrganizationsAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getOrganizationsAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationsAccountResult.fromMap(result);
}

pulumi.Output<GetOrganizationsAccountResult> getOrganizationsAccountOutput(
  GetOrganizationsAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getOrganizationsAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationsAccountResult.fromMap);
}

/// Get a OrganizationsOrganization
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_organizations_organization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationsOrganizationResult> getOrganizationsOrganization(
  GetOrganizationsOrganizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getOrganizationsOrganization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationsOrganizationResult.fromMap(result);
}

pulumi.Output<GetOrganizationsOrganizationResult> getOrganizationsOrganizationOutput(
  GetOrganizationsOrganizationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getOrganizationsOrganization',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationsOrganizationResult.fromMap);
}

/// Get a RdsDBCluster
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_rds_db_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRdsDbClusterResult> getRdsDbCluster(
  GetRdsDbClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsDbCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRdsDbClusterResult.fromMap(result);
}

pulumi.Output<GetRdsDbClusterResult> getRdsDbClusterOutput(
  GetRdsDbClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsDbCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRdsDbClusterResult.fromMap);
}

/// Get a RdsDBInstance
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_rds_db_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRdsDbInstanceResult> getRdsDbInstance(
  GetRdsDbInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsDbInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRdsDbInstanceResult.fromMap(result);
}

pulumi.Output<GetRdsDbInstanceResult> getRdsDbInstanceOutput(
  GetRdsDbInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsDbInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRdsDbInstanceResult.fromMap);
}

/// Get a RdsDBSnapshot
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_rds_db_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRdsDbSnapshotResult> getRdsDbSnapshot(
  GetRdsDbSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsDbSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRdsDbSnapshotResult.fromMap(result);
}

pulumi.Output<GetRdsDbSnapshotResult> getRdsDbSnapshotOutput(
  GetRdsDbSnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsDbSnapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRdsDbSnapshotResult.fromMap);
}

/// Get a RdsDBSnapshotAttributesResult
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_rds_db_snapshot_attributes_result_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRdsDbSnapshotAttributesResultResult> getRdsDbSnapshotAttributesResult(
  GetRdsDbSnapshotAttributesResultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsDbSnapshotAttributesResult',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRdsDbSnapshotAttributesResultResult.fromMap(result);
}

pulumi.Output<GetRdsDbSnapshotAttributesResultResult> getRdsDbSnapshotAttributesResultOutput(
  GetRdsDbSnapshotAttributesResultArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsDbSnapshotAttributesResult',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRdsDbSnapshotAttributesResultResult.fromMap);
}

/// Get a RdsEventSubscription
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_rds_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRdsEventSubscriptionResult> getRdsEventSubscription(
  GetRdsEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRdsEventSubscriptionResult.fromMap(result);
}

pulumi.Output<GetRdsEventSubscriptionResult> getRdsEventSubscriptionOutput(
  GetRdsEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRdsEventSubscriptionResult.fromMap);
}

/// Get a RdsExportTask
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_rds_export_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRdsExportTaskResult> getRdsExportTask(
  GetRdsExportTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsExportTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRdsExportTaskResult.fromMap(result);
}

pulumi.Output<GetRdsExportTaskResult> getRdsExportTaskOutput(
  GetRdsExportTaskArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRdsExportTask',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRdsExportTaskResult.fromMap);
}

/// Get a RedshiftCluster
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_redshift_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRedshiftClusterResult> getRedshiftCluster(
  GetRedshiftClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRedshiftCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRedshiftClusterResult.fromMap(result);
}

pulumi.Output<GetRedshiftClusterResult> getRedshiftClusterOutput(
  GetRedshiftClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRedshiftCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRedshiftClusterResult.fromMap);
}

/// Get a RedshiftClusterParameterGroup
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_redshift_cluster_parameter_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRedshiftClusterParameterGroupResult> getRedshiftClusterParameterGroup(
  GetRedshiftClusterParameterGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRedshiftClusterParameterGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRedshiftClusterParameterGroupResult.fromMap(result);
}

pulumi.Output<GetRedshiftClusterParameterGroupResult> getRedshiftClusterParameterGroupOutput(
  GetRedshiftClusterParameterGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRedshiftClusterParameterGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRedshiftClusterParameterGroupResult.fromMap);
}

/// Get a Route53DomainsDomainSummary
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_route53_domains_domain_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoute53DomainsDomainSummaryResult> getRoute53DomainsDomainSummary(
  GetRoute53DomainsDomainSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRoute53DomainsDomainSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoute53DomainsDomainSummaryResult.fromMap(result);
}

pulumi.Output<GetRoute53DomainsDomainSummaryResult> getRoute53DomainsDomainSummaryOutput(
  GetRoute53DomainsDomainSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRoute53DomainsDomainSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoute53DomainsDomainSummaryResult.fromMap);
}

/// Get a Route53HostedZone
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_route53_hosted_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoute53HostedZoneResult> getRoute53HostedZone(
  GetRoute53HostedZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRoute53HostedZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoute53HostedZoneResult.fromMap(result);
}

pulumi.Output<GetRoute53HostedZoneResult> getRoute53HostedZoneOutput(
  GetRoute53HostedZoneArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRoute53HostedZone',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoute53HostedZoneResult.fromMap);
}

/// Get a Route53ResourceRecordSet
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_route53_resource_record_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoute53ResourceRecordSetResult> getRoute53ResourceRecordSet(
  GetRoute53ResourceRecordSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getRoute53ResourceRecordSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoute53ResourceRecordSetResult.fromMap(result);
}

pulumi.Output<GetRoute53ResourceRecordSetResult> getRoute53ResourceRecordSetOutput(
  GetRoute53ResourceRecordSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getRoute53ResourceRecordSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoute53ResourceRecordSetResult.fromMap);
}

/// Get a S3AccessControlPolicy
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_s3_access_control_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetS3AccessControlPolicyResult> getS3AccessControlPolicy(
  GetS3AccessControlPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3AccessControlPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetS3AccessControlPolicyResult.fromMap(result);
}

pulumi.Output<GetS3AccessControlPolicyResult> getS3AccessControlPolicyOutput(
  GetS3AccessControlPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3AccessControlPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetS3AccessControlPolicyResult.fromMap);
}

/// Get a S3AccessPoint
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_s3_access_point_args_doc}
/// [options] Invoke options controlling this call.
Future<GetS3AccessPointResult> getS3AccessPoint(
  GetS3AccessPointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3AccessPoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetS3AccessPointResult.fromMap(result);
}

pulumi.Output<GetS3AccessPointResult> getS3AccessPointOutput(
  GetS3AccessPointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3AccessPoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetS3AccessPointResult.fromMap);
}

/// Get a S3Bucket
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_s3_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetS3BucketResult> getS3Bucket(
  GetS3BucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3Bucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetS3BucketResult.fromMap(result);
}

pulumi.Output<GetS3BucketResult> getS3BucketOutput(
  GetS3BucketArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3Bucket',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetS3BucketResult.fromMap);
}

/// Get a S3BucketPolicy
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_s3_bucket_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetS3BucketPolicyResult> getS3BucketPolicy(
  GetS3BucketPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3BucketPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetS3BucketPolicyResult.fromMap(result);
}

pulumi.Output<GetS3BucketPolicyResult> getS3BucketPolicyOutput(
  GetS3BucketPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3BucketPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetS3BucketPolicyResult.fromMap);
}

/// Get a S3ControlMultiRegionAccessPointPolicyDocument
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_s3_control_multi_region_access_point_policy_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetS3ControlMultiRegionAccessPointPolicyDocumentResult> getS3ControlMultiRegionAccessPointPolicyDocument(
  GetS3ControlMultiRegionAccessPointPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3ControlMultiRegionAccessPointPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetS3ControlMultiRegionAccessPointPolicyDocumentResult.fromMap(result);
}

pulumi.Output<GetS3ControlMultiRegionAccessPointPolicyDocumentResult> getS3ControlMultiRegionAccessPointPolicyDocumentOutput(
  GetS3ControlMultiRegionAccessPointPolicyDocumentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getS3ControlMultiRegionAccessPointPolicyDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetS3ControlMultiRegionAccessPointPolicyDocumentResult.fromMap);
}

/// Get a SageMakerApp
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_sage_maker_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSageMakerAppResult> getSageMakerApp(
  GetSageMakerAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSageMakerApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSageMakerAppResult.fromMap(result);
}

pulumi.Output<GetSageMakerAppResult> getSageMakerAppOutput(
  GetSageMakerAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSageMakerApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSageMakerAppResult.fromMap);
}

/// Get a SageMakerNotebookInstanceSummary
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_sage_maker_notebook_instance_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSageMakerNotebookInstanceSummaryResult> getSageMakerNotebookInstanceSummary(
  GetSageMakerNotebookInstanceSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSageMakerNotebookInstanceSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSageMakerNotebookInstanceSummaryResult.fromMap(result);
}

pulumi.Output<GetSageMakerNotebookInstanceSummaryResult> getSageMakerNotebookInstanceSummaryOutput(
  GetSageMakerNotebookInstanceSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSageMakerNotebookInstanceSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSageMakerNotebookInstanceSummaryResult.fromMap);
}

/// Get a SecretsManagerResourcePolicy
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_secrets_manager_resource_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretsManagerResourcePolicyResult> getSecretsManagerResourcePolicy(
  GetSecretsManagerResourcePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSecretsManagerResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretsManagerResourcePolicyResult.fromMap(result);
}

pulumi.Output<GetSecretsManagerResourcePolicyResult> getSecretsManagerResourcePolicyOutput(
  GetSecretsManagerResourcePolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSecretsManagerResourcePolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecretsManagerResourcePolicyResult.fromMap);
}

/// Get a SecretsManagerSecret
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_secrets_manager_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretsManagerSecretResult> getSecretsManagerSecret(
  GetSecretsManagerSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSecretsManagerSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretsManagerSecretResult.fromMap(result);
}

pulumi.Output<GetSecretsManagerSecretResult> getSecretsManagerSecretOutput(
  GetSecretsManagerSecretArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSecretsManagerSecret',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecretsManagerSecretResult.fromMap);
}

/// Get a SnsSubscription
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_sns_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnsSubscriptionResult> getSnsSubscription(
  GetSnsSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSnsSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnsSubscriptionResult.fromMap(result);
}

pulumi.Output<GetSnsSubscriptionResult> getSnsSubscriptionOutput(
  GetSnsSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSnsSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSnsSubscriptionResult.fromMap);
}

/// Get a SnsTopic
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_sns_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnsTopicResult> getSnsTopic(
  GetSnsTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSnsTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnsTopicResult.fromMap(result);
}

pulumi.Output<GetSnsTopicResult> getSnsTopicOutput(
  GetSnsTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSnsTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSnsTopicResult.fromMap);
}

/// Get a SqsQueue
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_sqs_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqsQueueResult> getSqsQueue(
  GetSqsQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSqsQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqsQueueResult.fromMap(result);
}

pulumi.Output<GetSqsQueueResult> getSqsQueueOutput(
  GetSqsQueueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSqsQueue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqsQueueResult.fromMap);
}

/// Get a SsmInstanceInformation
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ssm_instance_information_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSsmInstanceInformationResult> getSsmInstanceInformation(
  GetSsmInstanceInformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSsmInstanceInformation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSsmInstanceInformationResult.fromMap(result);
}

pulumi.Output<GetSsmInstanceInformationResult> getSsmInstanceInformationOutput(
  GetSsmInstanceInformationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSsmInstanceInformation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSsmInstanceInformationResult.fromMap);
}

/// Get a SsmParameter
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ssm_parameter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSsmParameterResult> getSsmParameter(
  GetSsmParameterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSsmParameter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSsmParameterResult.fromMap(result);
}

pulumi.Output<GetSsmParameterResult> getSsmParameterOutput(
  GetSsmParameterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSsmParameter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSsmParameterResult.fromMap);
}

/// Get a SsmResourceComplianceSummaryItem
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_ssm_resource_compliance_summary_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSsmResourceComplianceSummaryItemResult> getSsmResourceComplianceSummaryItem(
  GetSsmResourceComplianceSummaryItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getSsmResourceComplianceSummaryItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSsmResourceComplianceSummaryItemResult.fromMap(result);
}

pulumi.Output<GetSsmResourceComplianceSummaryItemResult> getSsmResourceComplianceSummaryItemOutput(
  GetSsmResourceComplianceSummaryItemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getSsmResourceComplianceSummaryItem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSsmResourceComplianceSummaryItemResult.fromMap);
}

/// Get a WafWebACLSummary
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_waf_web_acl_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafWebAclSummaryResult> getWafWebAclSummary(
  GetWafWebAclSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getWafWebAclSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafWebAclSummaryResult.fromMap(result);
}

pulumi.Output<GetWafWebAclSummaryResult> getWafWebAclSummaryOutput(
  GetWafWebAclSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getWafWebAclSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWafWebAclSummaryResult.fromMap);
}

/// Get a Wafv2LoggingConfiguration
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_awsconnector_get_wafv2_logging_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafv2LoggingConfigurationResult> getWafv2LoggingConfiguration(
  GetWafv2LoggingConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:awsconnector:getWafv2LoggingConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafv2LoggingConfigurationResult.fromMap(result);
}

pulumi.Output<GetWafv2LoggingConfigurationResult> getWafv2LoggingConfigurationOutput(
  GetWafv2LoggingConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:awsconnector:getWafv2LoggingConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWafv2LoggingConfigurationResult.fromMap);
}
