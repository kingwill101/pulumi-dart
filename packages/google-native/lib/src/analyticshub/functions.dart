import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_exchange_analyticshub_v1beta1_args.dart';
import 'get_data_exchange_analyticshub_v1beta1_result.dart';
import 'get_data_exchange_args.dart';
import 'get_data_exchange_iam_policy_analyticshub_v1beta1_args.dart';
import 'get_data_exchange_iam_policy_analyticshub_v1beta1_result.dart';
import 'get_data_exchange_iam_policy_args.dart';
import 'get_data_exchange_iam_policy_result.dart';
import 'get_data_exchange_listing_iam_policy_analyticshub_v1beta1_args.dart';
import 'get_data_exchange_listing_iam_policy_analyticshub_v1beta1_result.dart';
import 'get_data_exchange_listing_iam_policy_args.dart';
import 'get_data_exchange_listing_iam_policy_result.dart';
import 'get_data_exchange_result.dart';
import 'get_listing_analyticshub_v1beta1_args.dart';
import 'get_listing_analyticshub_v1beta1_result.dart';
import 'get_listing_args.dart';
import 'get_listing_result.dart';
import 'get_subscription_iam_policy_args.dart';
import 'get_subscription_iam_policy_result.dart';

/// Gets the details of a data exchange.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1_get_data_exchange_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataExchangeResult> getDataExchange(
  GetDataExchangeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getDataExchange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeResult.fromMap(result);
}

/// Gets the IAM policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1_get_data_exchange_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataExchangeIamPolicyResult> getDataExchangeIamPolicy(
  GetDataExchangeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getDataExchangeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeIamPolicyResult.fromMap(result);
}

/// Gets the IAM policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1_get_data_exchange_listing_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataExchangeListingIamPolicyResult> getDataExchangeListingIamPolicy(
  GetDataExchangeListingIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getDataExchangeListingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeListingIamPolicyResult.fromMap(result);
}

/// Gets the details of a listing.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1_get_listing_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListingResult> getListing(
  GetListingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getListing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListingResult.fromMap(result);
}

/// Gets the IAM policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1_get_subscription_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionIamPolicyResult> getSubscriptionIamPolicy(
  GetSubscriptionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getSubscriptionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyResult.fromMap(result);
}

/// Gets the details of a data exchange.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1beta1_get_data_exchange_analyticshub_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataExchangeAnalyticshubV1beta1Result>
    getDataExchangeAnalyticshubV1beta1(
  GetDataExchangeAnalyticshubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getDataExchange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeAnalyticshubV1beta1Result.fromMap(result);
}

/// Gets the IAM policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1beta1_get_data_exchange_iam_policy_analyticshub_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataExchangeIamPolicyAnalyticshubV1beta1Result>
    getDataExchangeIamPolicyAnalyticshubV1beta1(
  GetDataExchangeIamPolicyAnalyticshubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getDataExchangeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeIamPolicyAnalyticshubV1beta1Result.fromMap(result);
}

/// Gets the IAM policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1beta1_get_data_exchange_listing_iam_policy_analyticshub_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataExchangeListingIamPolicyAnalyticshubV1beta1Result>
    getDataExchangeListingIamPolicyAnalyticshubV1beta1(
  GetDataExchangeListingIamPolicyAnalyticshubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getDataExchangeListingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeListingIamPolicyAnalyticshubV1beta1Result.fromMap(
      result);
}

/// Gets the details of a listing.
/// [args] Arguments passed to this invoke. {@macro pulumi_analyticshub_v1beta1_get_listing_analyticshub_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListingAnalyticshubV1beta1Result> getListingAnalyticshubV1beta1(
  GetListingAnalyticshubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getListing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListingAnalyticshubV1beta1Result.fromMap(result);
}
