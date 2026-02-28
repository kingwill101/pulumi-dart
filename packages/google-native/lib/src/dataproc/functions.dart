import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaling_policy_args.dart';
import 'get_autoscaling_policy_dataproc_v1beta2_args.dart';
import 'get_autoscaling_policy_dataproc_v1beta2_result.dart';
import 'get_autoscaling_policy_iam_policy_args.dart';
import 'get_autoscaling_policy_iam_policy_dataproc_v1beta2_args.dart';
import 'get_autoscaling_policy_iam_policy_dataproc_v1beta2_result.dart';
import 'get_autoscaling_policy_iam_policy_result.dart';
import 'get_autoscaling_policy_result.dart';
import 'get_batch_args.dart';
import 'get_batch_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_dataproc_v1beta2_args.dart';
import 'get_cluster_dataproc_v1beta2_result.dart';
import 'get_cluster_result.dart';
import 'get_job_args.dart';
import 'get_job_dataproc_v1beta2_args.dart';
import 'get_job_dataproc_v1beta2_result.dart';
import 'get_job_result.dart';
import 'get_node_group_args.dart';
import 'get_node_group_result.dart';
import 'get_region_autoscaling_policy_iam_policy_args.dart';
import 'get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_autoscaling_policy_iam_policy_result.dart';
import 'get_region_cluster_iam_policy_args.dart';
import 'get_region_cluster_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_cluster_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_cluster_iam_policy_result.dart';
import 'get_region_job_iam_policy_args.dart';
import 'get_region_job_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_job_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_job_iam_policy_result.dart';
import 'get_region_operation_iam_policy_args.dart';
import 'get_region_operation_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_operation_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_operation_iam_policy_result.dart';
import 'get_region_workflow_template_iam_policy_args.dart';
import 'get_region_workflow_template_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_workflow_template_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_workflow_template_iam_policy_result.dart';
import 'get_session_args.dart';
import 'get_session_result.dart';
import 'get_session_template_args.dart';
import 'get_session_template_result.dart';
import 'get_workflow_template_args.dart';
import 'get_workflow_template_dataproc_v1beta2_args.dart';
import 'get_workflow_template_dataproc_v1beta2_result.dart';
import 'get_workflow_template_iam_policy_args.dart';
import 'get_workflow_template_iam_policy_dataproc_v1beta2_args.dart';
import 'get_workflow_template_iam_policy_dataproc_v1beta2_result.dart';
import 'get_workflow_template_iam_policy_result.dart';
import 'get_workflow_template_result.dart';

/// Retrieves autoscaling policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_autoscaling_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyResult> getAutoscalingPolicy(
  GetAutoscalingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getAutoscalingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_autoscaling_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyIamPolicyResult> getAutoscalingPolicyIamPolicy(
  GetAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyResult.fromMap(result);
}

/// Gets the batch workload resource representation.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_batch_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchResult> getBatch(
  GetBatchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getBatch',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchResult.fromMap(result);
}

/// Gets the resource representation for a cluster in a project.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Gets the resource representation for a job in a project.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

/// Gets the resource representation for a node group in a cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_node_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupResult> getNodeGroup(
  GetNodeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_autoscaling_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionAutoscalingPolicyIamPolicyResult>
    getRegionAutoscalingPolicyIamPolicy(
  GetRegionAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalingPolicyIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionClusterIamPolicyResult> getRegionClusterIamPolicy(
  GetRegionClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionClusterIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionJobIamPolicyResult> getRegionJobIamPolicy(
  GetRegionJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionJobIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_operation_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionOperationIamPolicyResult> getRegionOperationIamPolicy(
  GetRegionOperationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionOperationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionOperationIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_workflow_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionWorkflowTemplateIamPolicyResult>
    getRegionWorkflowTemplateIamPolicy(
  GetRegionWorkflowTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionWorkflowTemplateIamPolicyResult.fromMap(result);
}

/// Gets the resource representation for an interactive session.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_session_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionResult> getSession(
  GetSessionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionResult.fromMap(result);
}

/// Gets the resource representation for a session template.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_session_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionTemplateResult> getSessionTemplate(
  GetSessionTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getSessionTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionTemplateResult.fromMap(result);
}

/// Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_workflow_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowTemplateResult> getWorkflowTemplate(
  GetWorkflowTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getWorkflowTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_workflow_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowTemplateIamPolicyResult> getWorkflowTemplateIamPolicy(
  GetWorkflowTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateIamPolicyResult.fromMap(result);
}

/// Retrieves autoscaling policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_autoscaling_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyDataprocV1beta2Result>
    getAutoscalingPolicyDataprocV1beta2(
  GetAutoscalingPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyDataprocV1beta2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyIamPolicyDataprocV1beta2Result>
    getAutoscalingPolicyIamPolicyDataprocV1beta2(
  GetAutoscalingPolicyIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyDataprocV1beta2Result.fromMap(result);
}

/// Gets the resource representation for a cluster in a project.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_cluster_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterDataprocV1beta2Result> getClusterDataprocV1beta2(
  GetClusterDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterDataprocV1beta2Result.fromMap(result);
}

/// Gets the resource representation for a job in a project.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_job_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobDataprocV1beta2Result> getJobDataprocV1beta2(
  GetJobDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobDataprocV1beta2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Result>
    getRegionAutoscalingPolicyIamPolicyDataprocV1beta2(
  GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Result.fromMap(
      result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_cluster_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionClusterIamPolicyDataprocV1beta2Result>
    getRegionClusterIamPolicyDataprocV1beta2(
  GetRegionClusterIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionClusterIamPolicyDataprocV1beta2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_job_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionJobIamPolicyDataprocV1beta2Result>
    getRegionJobIamPolicyDataprocV1beta2(
  GetRegionJobIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionJobIamPolicyDataprocV1beta2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_operation_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionOperationIamPolicyDataprocV1beta2Result>
    getRegionOperationIamPolicyDataprocV1beta2(
  GetRegionOperationIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionOperationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionOperationIamPolicyDataprocV1beta2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Result>
    getRegionWorkflowTemplateIamPolicyDataprocV1beta2(
  GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Result.fromMap(
      result);
}

/// Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_workflow_template_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowTemplateDataprocV1beta2Result>
    getWorkflowTemplateDataprocV1beta2(
  GetWorkflowTemplateDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateDataprocV1beta2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowTemplateIamPolicyDataprocV1beta2Result>
    getWorkflowTemplateIamPolicyDataprocV1beta2(
  GetWorkflowTemplateIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateIamPolicyDataprocV1beta2Result.fromMap(result);
}
