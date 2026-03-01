import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_integration_account_agreement_args.dart';
import 'get_integration_account_agreement_result.dart';
import 'get_integration_account_args.dart';
import 'get_integration_account_assembly_args.dart';
import 'get_integration_account_assembly_result.dart';
import 'get_integration_account_batch_configuration_args.dart';
import 'get_integration_account_batch_configuration_result.dart';
import 'get_integration_account_certificate_args.dart';
import 'get_integration_account_certificate_result.dart';
import 'get_integration_account_map_args.dart';
import 'get_integration_account_map_result.dart';
import 'get_integration_account_partner_args.dart';
import 'get_integration_account_partner_result.dart';
import 'get_integration_account_result.dart';
import 'get_integration_account_schema_args.dart';
import 'get_integration_account_schema_result.dart';
import 'get_integration_account_session_args.dart';
import 'get_integration_account_session_result.dart';
import 'get_integration_service_environment_args.dart';
import 'get_integration_service_environment_managed_api_args.dart';
import 'get_integration_service_environment_managed_api_result.dart';
import 'get_integration_service_environment_result.dart';
import 'get_rosetta_net_process_configuration_args.dart';
import 'get_rosetta_net_process_configuration_result.dart';
import 'get_workflow_access_key_args.dart';
import 'get_workflow_access_key_result.dart';
import 'get_workflow_args.dart';
import 'get_workflow_result.dart';
import 'list_integration_account_agreement_content_callback_url_args.dart';
import 'list_integration_account_agreement_content_callback_url_result.dart';
import 'list_integration_account_assembly_content_callback_url_args.dart';
import 'list_integration_account_assembly_content_callback_url_result.dart';
import 'list_integration_account_callback_url_args.dart';
import 'list_integration_account_callback_url_result.dart';
import 'list_integration_account_key_vault_keys_args.dart';
import 'list_integration_account_key_vault_keys_result.dart';
import 'list_integration_account_map_content_callback_url_args.dart';
import 'list_integration_account_map_content_callback_url_result.dart';
import 'list_integration_account_partner_content_callback_url_args.dart';
import 'list_integration_account_partner_content_callback_url_result.dart';
import 'list_integration_account_schema_content_callback_url_args.dart';
import 'list_integration_account_schema_content_callback_url_result.dart';
import 'list_workflow_access_key_secret_keys_args.dart';
import 'list_workflow_access_key_secret_keys_result.dart';
import 'list_workflow_callback_url_args.dart';
import 'list_workflow_callback_url_result.dart';
import 'list_workflow_run_action_expression_traces_args.dart';
import 'list_workflow_run_action_expression_traces_result.dart';
import 'list_workflow_run_action_repetition_expression_traces_args.dart';
import 'list_workflow_run_action_repetition_expression_traces_result.dart';
import 'list_workflow_trigger_callback_url_args.dart';
import 'list_workflow_trigger_callback_url_result.dart';
import 'list_workflow_version_callback_url_args.dart';
import 'list_workflow_version_callback_url_result.dart';
import 'list_workflow_version_trigger_callback_url_args.dart';
import 'list_workflow_version_trigger_callback_url_result.dart';

/// Gets an integration account.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountResult> getIntegrationAccount(
  GetIntegrationAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountResult.fromMap(result);
}

/// Gets an integration account agreement.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_agreement_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountAgreementResult> getIntegrationAccountAgreement(
  GetIntegrationAccountAgreementArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountAgreement',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountAgreementResult.fromMap(result);
}

/// Get an assembly for an integration account.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_assembly_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountAssemblyResult> getIntegrationAccountAssembly(
  GetIntegrationAccountAssemblyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountAssembly',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountAssemblyResult.fromMap(result);
}

/// Get a batch configuration for an integration account.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_batch_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountBatchConfigurationResult> getIntegrationAccountBatchConfiguration(
  GetIntegrationAccountBatchConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountBatchConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountBatchConfigurationResult.fromMap(result);
}

/// Gets an integration account certificate.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountCertificateResult> getIntegrationAccountCertificate(
  GetIntegrationAccountCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountCertificateResult.fromMap(result);
}

/// Gets an integration account map.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountMapResult> getIntegrationAccountMap(
  GetIntegrationAccountMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountMapResult.fromMap(result);
}

/// Gets an integration account partner.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_partner_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountPartnerResult> getIntegrationAccountPartner(
  GetIntegrationAccountPartnerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountPartner',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountPartnerResult.fromMap(result);
}

/// Gets an integration account schema.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountSchemaResult> getIntegrationAccountSchema(
  GetIntegrationAccountSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountSchemaResult.fromMap(result);
}

/// Gets an integration account session.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_account_session_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountSessionResult> getIntegrationAccountSession(
  GetIntegrationAccountSessionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountSessionResult.fromMap(result);
}

/// Gets an integration service environment.
///
/// Uses Azure REST API version 2019-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_service_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationServiceEnvironmentResult> getIntegrationServiceEnvironment(
  GetIntegrationServiceEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationServiceEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationServiceEnvironmentResult.fromMap(result);
}

/// Gets the integration service environment managed Api.
///
/// Uses Azure REST API version 2019-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_integration_service_environment_managed_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationServiceEnvironmentManagedApiResult> getIntegrationServiceEnvironmentManagedApi(
  GetIntegrationServiceEnvironmentManagedApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationServiceEnvironmentManagedApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationServiceEnvironmentManagedApiResult.fromMap(result);
}

/// Gets an integration account RosettaNetProcessConfiguration.
///
/// Uses Azure REST API version 2016-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_rosetta_net_process_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRosettaNetProcessConfigurationResult> getRosettaNetProcessConfiguration(
  GetRosettaNetProcessConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getRosettaNetProcessConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRosettaNetProcessConfigurationResult.fromMap(result);
}

/// Gets a workflow.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2015-02-01-preview, 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_workflow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowResult> getWorkflow(
  GetWorkflowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getWorkflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowResult.fromMap(result);
}

/// Gets a workflow access key.
///
/// Uses Azure REST API version 2015-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_get_workflow_access_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowAccessKeyResult> getWorkflowAccessKey(
  GetWorkflowAccessKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:getWorkflowAccessKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowAccessKeyResult.fromMap(result);
}

/// Get the content callback url.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_integration_account_agreement_content_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationAccountAgreementContentCallbackUrlResult> listIntegrationAccountAgreementContentCallbackUrl(
  ListIntegrationAccountAgreementContentCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountAgreementContentCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationAccountAgreementContentCallbackUrlResult.fromMap(result);
}

/// Get the content callback url for an integration account assembly.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_integration_account_assembly_content_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationAccountAssemblyContentCallbackUrlResult> listIntegrationAccountAssemblyContentCallbackUrl(
  ListIntegrationAccountAssemblyContentCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountAssemblyContentCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationAccountAssemblyContentCallbackUrlResult.fromMap(result);
}

/// Gets the integration account callback URL.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_integration_account_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationAccountCallbackUrlResult> listIntegrationAccountCallbackUrl(
  ListIntegrationAccountCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationAccountCallbackUrlResult.fromMap(result);
}

/// Gets the integration account's Key Vault keys.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_integration_account_key_vault_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationAccountKeyVaultKeysResult> listIntegrationAccountKeyVaultKeys(
  ListIntegrationAccountKeyVaultKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountKeyVaultKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationAccountKeyVaultKeysResult.fromMap(result);
}

/// Get the content callback url.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_integration_account_map_content_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationAccountMapContentCallbackUrlResult> listIntegrationAccountMapContentCallbackUrl(
  ListIntegrationAccountMapContentCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountMapContentCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationAccountMapContentCallbackUrlResult.fromMap(result);
}

/// Get the content callback url.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_integration_account_partner_content_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationAccountPartnerContentCallbackUrlResult> listIntegrationAccountPartnerContentCallbackUrl(
  ListIntegrationAccountPartnerContentCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountPartnerContentCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationAccountPartnerContentCallbackUrlResult.fromMap(result);
}

/// Get the content callback url.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_integration_account_schema_content_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationAccountSchemaContentCallbackUrlResult> listIntegrationAccountSchemaContentCallbackUrl(
  ListIntegrationAccountSchemaContentCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountSchemaContentCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationAccountSchemaContentCallbackUrlResult.fromMap(result);
}

/// Lists secret keys.
///
/// Uses Azure REST API version 2015-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_workflow_access_key_secret_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowAccessKeySecretKeysResult> listWorkflowAccessKeySecretKeys(
  ListWorkflowAccessKeySecretKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowAccessKeySecretKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowAccessKeySecretKeysResult.fromMap(result);
}

/// Get the workflow callback Url.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_workflow_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowCallbackUrlResult> listWorkflowCallbackUrl(
  ListWorkflowCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowCallbackUrlResult.fromMap(result);
}

/// Lists a workflow run expression trace.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_workflow_run_action_expression_traces_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowRunActionExpressionTracesResult> listWorkflowRunActionExpressionTraces(
  ListWorkflowRunActionExpressionTracesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowRunActionExpressionTraces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowRunActionExpressionTracesResult.fromMap(result);
}

/// Lists a workflow run expression trace.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_workflow_run_action_repetition_expression_traces_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowRunActionRepetitionExpressionTracesResult> listWorkflowRunActionRepetitionExpressionTraces(
  ListWorkflowRunActionRepetitionExpressionTracesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowRunActionRepetitionExpressionTraces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowRunActionRepetitionExpressionTracesResult.fromMap(result);
}

/// Get the callback URL for a workflow trigger.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_workflow_trigger_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowTriggerCallbackUrlResult> listWorkflowTriggerCallbackUrl(
  ListWorkflowTriggerCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowTriggerCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowTriggerCallbackUrlResult.fromMap(result);
}

/// Get the callback url for a trigger of a workflow version.
///
/// Uses Azure REST API version 2016-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_workflow_version_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowVersionCallbackUrlResult> listWorkflowVersionCallbackUrl(
  ListWorkflowVersionCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowVersionCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowVersionCallbackUrlResult.fromMap(result);
}

/// Get the callback url for a trigger of a workflow version.
///
/// Uses Azure REST API version 2019-05-01.
///
/// Other available API versions: 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_logic_list_workflow_version_trigger_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowVersionTriggerCallbackUrlResult> listWorkflowVersionTriggerCallbackUrl(
  ListWorkflowVersionTriggerCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowVersionTriggerCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowVersionTriggerCallbackUrlResult.fromMap(result);
}
