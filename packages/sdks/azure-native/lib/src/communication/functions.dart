import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_communication_service_args.dart';
import 'get_communication_service_result.dart';
import 'get_domain_args.dart';
import 'get_domain_result.dart';
import 'get_email_service_args.dart';
import 'get_email_service_result.dart';
import 'get_sender_username_args.dart';
import 'get_sender_username_result.dart';
import 'get_smtp_username_args.dart';
import 'get_smtp_username_result.dart';
import 'get_suppression_list_address_args.dart';
import 'get_suppression_list_address_result.dart';
import 'get_suppression_list_args.dart';
import 'get_suppression_list_result.dart';
import 'list_communication_service_keys_args.dart';
import 'list_communication_service_keys_result.dart';

/// Get the CommunicationService and its properties.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_communication_get_communication_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommunicationServiceResult> getCommunicationService(
  GetCommunicationServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:communication:getCommunicationService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommunicationServiceResult.fromMap(result);
}

/// Get the Domains resource and its properties.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_communication_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:communication:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Get the EmailService and its properties.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_communication_get_email_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEmailServiceResult> getEmailService(
  GetEmailServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:communication:getEmailService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmailServiceResult.fromMap(result);
}

/// Get a valid sender username for a domains resource.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_communication_get_sender_username_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSenderUsernameResult> getSenderUsername(
  GetSenderUsernameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:communication:getSenderUsername',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSenderUsernameResult.fromMap(result);
}

/// Get a SmtpUsernameResource.
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_communication_get_smtp_username_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSmtpUsernameResult> getSmtpUsername(
  GetSmtpUsernameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:communication:getSmtpUsername',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSmtpUsernameResult.fromMap(result);
}

/// Get a SuppressionList resource.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2024-09-01-preview, 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_communication_get_suppression_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSuppressionListResult> getSuppressionList(
  GetSuppressionListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:communication:getSuppressionList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSuppressionListResult.fromMap(result);
}

/// Get a SuppressionListAddress.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2024-09-01-preview, 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_communication_get_suppression_list_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSuppressionListAddressResult> getSuppressionListAddress(
  GetSuppressionListAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:communication:getSuppressionListAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSuppressionListAddressResult.fromMap(result);
}

/// Get the access keys of the CommunicationService resource.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_communication_list_communication_service_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCommunicationServiceKeysResult> listCommunicationServiceKeys(
  ListCommunicationServiceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:communication:listCommunicationServiceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCommunicationServiceKeysResult.fromMap(result);
}
