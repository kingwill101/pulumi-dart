import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_mapping_args.dart';
import 'get_domain_mapping_result.dart';
import 'get_job_args.dart';
import 'get_job_iam_policy_args.dart';
import 'get_job_iam_policy_result.dart';
import 'get_job_iam_policy_run_v2_args.dart';
import 'get_job_iam_policy_run_v2_result.dart';
import 'get_job_result.dart';
import 'get_job_run_v2_args.dart';
import 'get_job_run_v2_result.dart';
import 'get_service_args.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';
import 'get_service_iam_policy_run_v2_args.dart';
import 'get_service_iam_policy_run_v2_result.dart';
import 'get_service_result.dart';
import 'get_service_run_v2_args.dart';
import 'get_service_run_v2_result.dart';

/// Get information about a domain mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_domain_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainMappingResult> getDomainMapping(
  GetDomainMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingResult.fromMap(result);
}

/// Get information about a job.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

/// Get the IAM Access Control policy currently in effect for the given job. This result does not include any inherited policies.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobIamPolicyResult> getJobIamPolicy(
  GetJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyResult.fromMap(result);
}

/// Gets information about a service.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Gets the IAM Access Control policy currently in effect for the given Cloud Run service. This result does not include any inherited policies.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}

/// Gets information about a Job.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v2_get_job_run_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobRunV2Result> getJobRunV2(
  GetJobRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobRunV2Result.fromMap(result);
}

/// Gets the IAM Access Control policy currently in effect for the given Job. This result does not include any inherited policies.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v2_get_job_iam_policy_run_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobIamPolicyRunV2Result> getJobIamPolicyRunV2(
  GetJobIamPolicyRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyRunV2Result.fromMap(result);
}

/// Gets information about a Service.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v2_get_service_run_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceRunV2Result> getServiceRunV2(
  GetServiceRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceRunV2Result.fromMap(result);
}

/// Gets the IAM Access Control policy currently in effect for the given Cloud Run Service. This result does not include any inherited policies.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v2_get_service_iam_policy_run_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyRunV2Result> getServiceIamPolicyRunV2(
  GetServiceIamPolicyRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyRunV2Result.fromMap(result);
}
