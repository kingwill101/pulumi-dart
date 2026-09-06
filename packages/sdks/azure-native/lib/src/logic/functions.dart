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

pulumi.Output<GetIntegrationAccountResult> getIntegrationAccountOutput(
  GetIntegrationAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountResult.fromMap);
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

pulumi.Output<GetIntegrationAccountAgreementResult> getIntegrationAccountAgreementOutput(
  GetIntegrationAccountAgreementArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountAgreement',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountAgreementResult.fromMap);
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

pulumi.Output<GetIntegrationAccountAssemblyResult> getIntegrationAccountAssemblyOutput(
  GetIntegrationAccountAssemblyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountAssembly',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountAssemblyResult.fromMap);
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

pulumi.Output<GetIntegrationAccountBatchConfigurationResult> getIntegrationAccountBatchConfigurationOutput(
  GetIntegrationAccountBatchConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountBatchConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountBatchConfigurationResult.fromMap);
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

pulumi.Output<GetIntegrationAccountCertificateResult> getIntegrationAccountCertificateOutput(
  GetIntegrationAccountCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountCertificateResult.fromMap);
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

pulumi.Output<GetIntegrationAccountMapResult> getIntegrationAccountMapOutput(
  GetIntegrationAccountMapArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountMap',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountMapResult.fromMap);
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

pulumi.Output<GetIntegrationAccountPartnerResult> getIntegrationAccountPartnerOutput(
  GetIntegrationAccountPartnerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountPartner',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountPartnerResult.fromMap);
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

pulumi.Output<GetIntegrationAccountSchemaResult> getIntegrationAccountSchemaOutput(
  GetIntegrationAccountSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountSchemaResult.fromMap);
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

pulumi.Output<GetIntegrationAccountSessionResult> getIntegrationAccountSessionOutput(
  GetIntegrationAccountSessionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationAccountSession',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountSessionResult.fromMap);
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

pulumi.Output<GetIntegrationServiceEnvironmentResult> getIntegrationServiceEnvironmentOutput(
  GetIntegrationServiceEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationServiceEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationServiceEnvironmentResult.fromMap);
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

pulumi.Output<GetIntegrationServiceEnvironmentManagedApiResult> getIntegrationServiceEnvironmentManagedApiOutput(
  GetIntegrationServiceEnvironmentManagedApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getIntegrationServiceEnvironmentManagedApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationServiceEnvironmentManagedApiResult.fromMap);
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

pulumi.Output<GetRosettaNetProcessConfigurationResult> getRosettaNetProcessConfigurationOutput(
  GetRosettaNetProcessConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getRosettaNetProcessConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRosettaNetProcessConfigurationResult.fromMap);
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

pulumi.Output<GetWorkflowResult> getWorkflowOutput(
  GetWorkflowArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getWorkflow',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkflowResult.fromMap);
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

pulumi.Output<GetWorkflowAccessKeyResult> getWorkflowAccessKeyOutput(
  GetWorkflowAccessKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:getWorkflowAccessKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkflowAccessKeyResult.fromMap);
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

pulumi.Output<ListIntegrationAccountAgreementContentCallbackUrlResult> listIntegrationAccountAgreementContentCallbackUrlOutput(
  ListIntegrationAccountAgreementContentCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountAgreementContentCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIntegrationAccountAgreementContentCallbackUrlResult.fromMap);
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

pulumi.Output<ListIntegrationAccountAssemblyContentCallbackUrlResult> listIntegrationAccountAssemblyContentCallbackUrlOutput(
  ListIntegrationAccountAssemblyContentCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountAssemblyContentCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIntegrationAccountAssemblyContentCallbackUrlResult.fromMap);
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

pulumi.Output<ListIntegrationAccountCallbackUrlResult> listIntegrationAccountCallbackUrlOutput(
  ListIntegrationAccountCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIntegrationAccountCallbackUrlResult.fromMap);
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

pulumi.Output<ListIntegrationAccountKeyVaultKeysResult> listIntegrationAccountKeyVaultKeysOutput(
  ListIntegrationAccountKeyVaultKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountKeyVaultKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIntegrationAccountKeyVaultKeysResult.fromMap);
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

pulumi.Output<ListIntegrationAccountMapContentCallbackUrlResult> listIntegrationAccountMapContentCallbackUrlOutput(
  ListIntegrationAccountMapContentCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountMapContentCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIntegrationAccountMapContentCallbackUrlResult.fromMap);
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

pulumi.Output<ListIntegrationAccountPartnerContentCallbackUrlResult> listIntegrationAccountPartnerContentCallbackUrlOutput(
  ListIntegrationAccountPartnerContentCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountPartnerContentCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIntegrationAccountPartnerContentCallbackUrlResult.fromMap);
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

pulumi.Output<ListIntegrationAccountSchemaContentCallbackUrlResult> listIntegrationAccountSchemaContentCallbackUrlOutput(
  ListIntegrationAccountSchemaContentCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listIntegrationAccountSchemaContentCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIntegrationAccountSchemaContentCallbackUrlResult.fromMap);
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

pulumi.Output<ListWorkflowAccessKeySecretKeysResult> listWorkflowAccessKeySecretKeysOutput(
  ListWorkflowAccessKeySecretKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowAccessKeySecretKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowAccessKeySecretKeysResult.fromMap);
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

pulumi.Output<ListWorkflowCallbackUrlResult> listWorkflowCallbackUrlOutput(
  ListWorkflowCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowCallbackUrlResult.fromMap);
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

pulumi.Output<ListWorkflowRunActionExpressionTracesResult> listWorkflowRunActionExpressionTracesOutput(
  ListWorkflowRunActionExpressionTracesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowRunActionExpressionTraces',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowRunActionExpressionTracesResult.fromMap);
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

pulumi.Output<ListWorkflowRunActionRepetitionExpressionTracesResult> listWorkflowRunActionRepetitionExpressionTracesOutput(
  ListWorkflowRunActionRepetitionExpressionTracesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowRunActionRepetitionExpressionTraces',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowRunActionRepetitionExpressionTracesResult.fromMap);
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

pulumi.Output<ListWorkflowTriggerCallbackUrlResult> listWorkflowTriggerCallbackUrlOutput(
  ListWorkflowTriggerCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowTriggerCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowTriggerCallbackUrlResult.fromMap);
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

pulumi.Output<ListWorkflowVersionCallbackUrlResult> listWorkflowVersionCallbackUrlOutput(
  ListWorkflowVersionCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowVersionCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowVersionCallbackUrlResult.fromMap);
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

pulumi.Output<ListWorkflowVersionTriggerCallbackUrlResult> listWorkflowVersionTriggerCallbackUrlOutput(
  ListWorkflowVersionTriggerCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:logic:listWorkflowVersionTriggerCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowVersionTriggerCallbackUrlResult.fromMap);
}
