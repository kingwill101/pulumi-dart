import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_account_bucket_args.dart';
import 'get_billing_account_bucket_link_args.dart';
import 'get_billing_account_bucket_link_result.dart';
import 'get_billing_account_bucket_result.dart';
import 'get_billing_account_bucket_view_args.dart';
import 'get_billing_account_bucket_view_result.dart';
import 'get_billing_account_exclusion_args.dart';
import 'get_billing_account_exclusion_result.dart';
import 'get_billing_account_sink_args.dart';
import 'get_billing_account_sink_result.dart';
import 'get_bucket_args.dart';
import 'get_bucket_result.dart';
import 'get_bucket_view_args.dart';
import 'get_bucket_view_result.dart';
import 'get_exclusion_args.dart';
import 'get_exclusion_result.dart';
import 'get_folder_bucket_args.dart';
import 'get_folder_bucket_link_args.dart';
import 'get_folder_bucket_link_result.dart';
import 'get_folder_bucket_result.dart';
import 'get_folder_bucket_view_args.dart';
import 'get_folder_bucket_view_result.dart';
import 'get_folder_exclusion_args.dart';
import 'get_folder_exclusion_result.dart';
import 'get_folder_sink_args.dart';
import 'get_folder_sink_result.dart';
import 'get_link_args.dart';
import 'get_link_result.dart';
import 'get_metric_args.dart';
import 'get_metric_result.dart';
import 'get_organization_bucket_args.dart';
import 'get_organization_bucket_link_args.dart';
import 'get_organization_bucket_link_result.dart';
import 'get_organization_bucket_result.dart';
import 'get_organization_bucket_view_args.dart';
import 'get_organization_bucket_view_result.dart';
import 'get_organization_exclusion_args.dart';
import 'get_organization_exclusion_result.dart';
import 'get_organization_sink_args.dart';
import 'get_organization_sink_result.dart';
import 'get_sink_args.dart';
import 'get_sink_result.dart';

/// Gets a log bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_billing_account_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingAccountBucketResult> getBillingAccountBucket(
  GetBillingAccountBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountBucketResult.fromMap(result);
}

/// Gets a link.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_billing_account_bucket_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingAccountBucketLinkResult> getBillingAccountBucketLink(
  GetBillingAccountBucketLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountBucketLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountBucketLinkResult.fromMap(result);
}

/// Gets a view on a log bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_billing_account_bucket_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingAccountBucketViewResult> getBillingAccountBucketView(
  GetBillingAccountBucketViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountBucketView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountBucketViewResult.fromMap(result);
}

/// Gets the description of an exclusion in the _Default sink.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_billing_account_exclusion_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingAccountExclusionResult> getBillingAccountExclusion(
  GetBillingAccountExclusionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountExclusion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountExclusionResult.fromMap(result);
}

/// Gets a sink.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_billing_account_sink_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingAccountSinkResult> getBillingAccountSink(
  GetBillingAccountSinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountSink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountSinkResult.fromMap(result);
}

/// Gets a log bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketResult> getBucket(
  GetBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketResult.fromMap(result);
}

/// Gets a view on a log bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_bucket_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketViewResult> getBucketView(
  GetBucketViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBucketView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketViewResult.fromMap(result);
}

/// Gets the description of an exclusion in the _Default sink.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_exclusion_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExclusionResult> getExclusion(
  GetExclusionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getExclusion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExclusionResult.fromMap(result);
}

/// Gets a log bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_folder_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderBucketResult> getFolderBucket(
  GetFolderBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketResult.fromMap(result);
}

/// Gets a link.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_folder_bucket_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderBucketLinkResult> getFolderBucketLink(
  GetFolderBucketLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucketLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketLinkResult.fromMap(result);
}

/// Gets a view on a log bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_folder_bucket_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderBucketViewResult> getFolderBucketView(
  GetFolderBucketViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucketView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketViewResult.fromMap(result);
}

/// Gets the description of an exclusion in the _Default sink.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_folder_exclusion_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderExclusionResult> getFolderExclusion(
  GetFolderExclusionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderExclusion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderExclusionResult.fromMap(result);
}

/// Gets a sink.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_folder_sink_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderSinkResult> getFolderSink(
  GetFolderSinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderSink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderSinkResult.fromMap(result);
}

/// Gets a link.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkResult> getLink(
  GetLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkResult.fromMap(result);
}

/// Gets a logs-based metric.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_metric_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetricResult> getMetric(
  GetMetricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getMetric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetricResult.fromMap(result);
}

/// Gets a log bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_organization_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationBucketResult> getOrganizationBucket(
  GetOrganizationBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBucketResult.fromMap(result);
}

/// Gets a link.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_organization_bucket_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationBucketLinkResult> getOrganizationBucketLink(
  GetOrganizationBucketLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationBucketLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBucketLinkResult.fromMap(result);
}

/// Gets a view on a log bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_organization_bucket_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationBucketViewResult> getOrganizationBucketView(
  GetOrganizationBucketViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationBucketView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBucketViewResult.fromMap(result);
}

/// Gets the description of an exclusion in the _Default sink.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_organization_exclusion_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationExclusionResult> getOrganizationExclusion(
  GetOrganizationExclusionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationExclusion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationExclusionResult.fromMap(result);
}

/// Gets a sink.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_organization_sink_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSinkResult> getOrganizationSink(
  GetOrganizationSinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationSink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSinkResult.fromMap(result);
}

/// Gets a sink.
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_v2_get_sink_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSinkResult> getSink(
  GetSinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getSink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSinkResult.fromMap(result);
}
