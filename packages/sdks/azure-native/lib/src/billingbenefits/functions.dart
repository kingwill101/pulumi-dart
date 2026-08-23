import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conditional_credit_args.dart';
import 'get_conditional_credit_result.dart';
import 'get_credit_args.dart';
import 'get_credit_result.dart';
import 'get_discount_args.dart';
import 'get_discount_result.dart';
import 'get_free_service_args.dart';
import 'get_free_service_result.dart';
import 'get_macc_args.dart';
import 'get_macc_result.dart';
import 'get_source_args.dart';
import 'get_source_result.dart';

/// Get a conditional credit.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingbenefits_get_conditional_credit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConditionalCreditResult> getConditionalCredit(
  GetConditionalCreditArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billingbenefits:getConditionalCredit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConditionalCreditResult.fromMap(result);
}

/// Get a credit.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingbenefits_get_credit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCreditResult> getCredit(
  GetCreditArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billingbenefits:getCredit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCreditResult.fromMap(result);
}

/// Get discount at resource group level
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-12-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingbenefits_get_discount_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscountResult> getDiscount(
  GetDiscountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billingbenefits:getDiscount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscountResult.fromMap(result);
}

/// This operation retrieves properties for free services.
///
/// Uses Azure REST API version 2025-12-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingbenefits_get_free_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFreeServiceResult> getFreeService(
  GetFreeServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billingbenefits:getFreeService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFreeServiceResult.fromMap(result);
}

/// Get a MACC.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingbenefits_get_macc_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMaccResult> getMacc(
  GetMaccArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billingbenefits:getMacc',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMaccResult.fromMap(result);
}

/// Get a credit source.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingbenefits_get_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceResult> getSource(
  GetSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billingbenefits:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceResult.fromMap(result);
}
