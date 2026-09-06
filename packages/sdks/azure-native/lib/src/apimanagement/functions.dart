import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_args.dart';
import 'get_api_diagnostic_args.dart';
import 'get_api_diagnostic_result.dart';
import 'get_api_gateway_args.dart';
import 'get_api_gateway_config_connection_args.dart';
import 'get_api_gateway_config_connection_result.dart';
import 'get_api_gateway_hostname_binding_args.dart';
import 'get_api_gateway_hostname_binding_result.dart';
import 'get_api_gateway_result.dart';
import 'get_api_issue_args.dart';
import 'get_api_issue_attachment_args.dart';
import 'get_api_issue_attachment_result.dart';
import 'get_api_issue_comment_args.dart';
import 'get_api_issue_comment_result.dart';
import 'get_api_issue_result.dart';
import 'get_api_management_service_args.dart';
import 'get_api_management_service_domain_ownership_identifier_result.dart';
import 'get_api_management_service_result.dart';
import 'get_api_management_service_sso_token_args.dart';
import 'get_api_management_service_sso_token_result.dart';
import 'get_api_operation_args.dart';
import 'get_api_operation_policy_args.dart';
import 'get_api_operation_policy_result.dart';
import 'get_api_operation_result.dart';
import 'get_api_policy_args.dart';
import 'get_api_policy_result.dart';
import 'get_api_release_args.dart';
import 'get_api_release_result.dart';
import 'get_api_result.dart';
import 'get_api_schema_args.dart';
import 'get_api_schema_result.dart';
import 'get_api_tag_description_args.dart';
import 'get_api_tag_description_result.dart';
import 'get_api_tool_args.dart';
import 'get_api_tool_result.dart';
import 'get_api_version_set_args.dart';
import 'get_api_version_set_result.dart';
import 'get_api_wiki_args.dart';
import 'get_api_wiki_result.dart';
import 'get_authorization_access_policy_args.dart';
import 'get_authorization_access_policy_result.dart';
import 'get_authorization_args.dart';
import 'get_authorization_login_link_post_args.dart';
import 'get_authorization_login_link_post_result.dart';
import 'get_authorization_provider_args.dart';
import 'get_authorization_provider_result.dart';
import 'get_authorization_result.dart';
import 'get_authorization_server_args.dart';
import 'get_authorization_server_result.dart';
import 'get_backend_args.dart';
import 'get_backend_result.dart';
import 'get_cache_args.dart';
import 'get_cache_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_client_application_args.dart';
import 'get_client_application_product_link_args.dart';
import 'get_client_application_product_link_result.dart';
import 'get_client_application_result.dart';
import 'get_content_item_args.dart';
import 'get_content_item_result.dart';
import 'get_content_type_args.dart';
import 'get_content_type_result.dart';
import 'get_diagnostic_args.dart';
import 'get_diagnostic_result.dart';
import 'get_documentation_args.dart';
import 'get_documentation_result.dart';
import 'get_email_template_args.dart';
import 'get_email_template_result.dart';
import 'get_gateway_args.dart';
import 'get_gateway_certificate_authority_args.dart';
import 'get_gateway_certificate_authority_result.dart';
import 'get_gateway_hostname_configuration_args.dart';
import 'get_gateway_hostname_configuration_result.dart';
import 'get_gateway_result.dart';
import 'get_global_schema_args.dart';
import 'get_global_schema_result.dart';
import 'get_graph_qlapi_resolver_args.dart';
import 'get_graph_qlapi_resolver_policy_args.dart';
import 'get_graph_qlapi_resolver_policy_result.dart';
import 'get_graph_qlapi_resolver_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_identity_provider_args.dart';
import 'get_identity_provider_result.dart';
import 'get_logger_args.dart';
import 'get_logger_result.dart';
import 'get_named_value_args.dart';
import 'get_named_value_result.dart';
import 'get_open_id_connect_provider_args.dart';
import 'get_open_id_connect_provider_result.dart';
import 'get_policy_args.dart';
import 'get_policy_fragment_args.dart';
import 'get_policy_fragment_result.dart';
import 'get_policy_restriction_args.dart';
import 'get_policy_restriction_result.dart';
import 'get_policy_result.dart';
import 'get_private_endpoint_connection_by_name_args.dart';
import 'get_private_endpoint_connection_by_name_result.dart';
import 'get_product_api_link_args.dart';
import 'get_product_api_link_result.dart';
import 'get_product_args.dart';
import 'get_product_group_link_args.dart';
import 'get_product_group_link_result.dart';
import 'get_product_policy_args.dart';
import 'get_product_policy_result.dart';
import 'get_product_result.dart';
import 'get_product_wiki_args.dart';
import 'get_product_wiki_result.dart';
import 'get_schema_args.dart';
import 'get_schema_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';
import 'get_tag_api_link_args.dart';
import 'get_tag_api_link_result.dart';
import 'get_tag_args.dart';
import 'get_tag_by_api_args.dart';
import 'get_tag_by_api_result.dart';
import 'get_tag_by_operation_args.dart';
import 'get_tag_by_operation_result.dart';
import 'get_tag_by_product_args.dart';
import 'get_tag_by_product_result.dart';
import 'get_tag_operation_link_args.dart';
import 'get_tag_operation_link_result.dart';
import 'get_tag_product_link_args.dart';
import 'get_tag_product_link_result.dart';
import 'get_tag_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'get_user_shared_access_token_args.dart';
import 'get_user_shared_access_token_result.dart';
import 'get_workspace_api_args.dart';
import 'get_workspace_api_diagnostic_args.dart';
import 'get_workspace_api_diagnostic_result.dart';
import 'get_workspace_api_operation_args.dart';
import 'get_workspace_api_operation_policy_args.dart';
import 'get_workspace_api_operation_policy_result.dart';
import 'get_workspace_api_operation_result.dart';
import 'get_workspace_api_policy_args.dart';
import 'get_workspace_api_policy_result.dart';
import 'get_workspace_api_release_args.dart';
import 'get_workspace_api_release_result.dart';
import 'get_workspace_api_result.dart';
import 'get_workspace_api_schema_args.dart';
import 'get_workspace_api_schema_result.dart';
import 'get_workspace_api_version_set_args.dart';
import 'get_workspace_api_version_set_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_backend_args.dart';
import 'get_workspace_backend_result.dart';
import 'get_workspace_certificate_args.dart';
import 'get_workspace_certificate_result.dart';
import 'get_workspace_diagnostic_args.dart';
import 'get_workspace_diagnostic_result.dart';
import 'get_workspace_global_schema_args.dart';
import 'get_workspace_global_schema_result.dart';
import 'get_workspace_group_args.dart';
import 'get_workspace_group_result.dart';
import 'get_workspace_logger_args.dart';
import 'get_workspace_logger_result.dart';
import 'get_workspace_named_value_args.dart';
import 'get_workspace_named_value_result.dart';
import 'get_workspace_policy_args.dart';
import 'get_workspace_policy_fragment_args.dart';
import 'get_workspace_policy_fragment_result.dart';
import 'get_workspace_policy_result.dart';
import 'get_workspace_product_api_link_args.dart';
import 'get_workspace_product_api_link_result.dart';
import 'get_workspace_product_args.dart';
import 'get_workspace_product_group_link_args.dart';
import 'get_workspace_product_group_link_result.dart';
import 'get_workspace_product_policy_args.dart';
import 'get_workspace_product_policy_result.dart';
import 'get_workspace_product_result.dart';
import 'get_workspace_result.dart';
import 'get_workspace_subscription_args.dart';
import 'get_workspace_subscription_result.dart';
import 'get_workspace_tag_api_link_args.dart';
import 'get_workspace_tag_api_link_result.dart';
import 'get_workspace_tag_args.dart';
import 'get_workspace_tag_operation_link_args.dart';
import 'get_workspace_tag_operation_link_result.dart';
import 'get_workspace_tag_product_link_args.dart';
import 'get_workspace_tag_product_link_result.dart';
import 'get_workspace_tag_result.dart';
import 'list_authorization_server_secrets_args.dart';
import 'list_authorization_server_secrets_result.dart';
import 'list_client_application_secrets_args.dart';
import 'list_client_application_secrets_result.dart';
import 'list_delegation_setting_secrets_args.dart';
import 'list_delegation_setting_secrets_result.dart';
import 'list_gateway_debug_credentials_args.dart';
import 'list_gateway_debug_credentials_result.dart';
import 'list_gateway_keys_args.dart';
import 'list_gateway_keys_result.dart';
import 'list_identity_provider_secrets_args.dart';
import 'list_identity_provider_secrets_result.dart';
import 'list_named_value_args.dart';
import 'list_named_value_result.dart';
import 'list_open_id_connect_provider_secrets_args.dart';
import 'list_open_id_connect_provider_secrets_result.dart';
import 'list_policy_fragment_references_args.dart';
import 'list_policy_fragment_references_result.dart';
import 'list_subscription_secrets_args.dart';
import 'list_subscription_secrets_result.dart';
import 'list_tenant_access_secrets_args.dart';
import 'list_tenant_access_secrets_result.dart';
import 'list_workspace_named_value_args.dart';
import 'list_workspace_named_value_result.dart';
import 'list_workspace_policy_fragment_references_args.dart';
import 'list_workspace_policy_fragment_references_result.dart';
import 'list_workspace_subscription_secrets_args.dart';
import 'list_workspace_subscription_secrets_result.dart';

/// Gets the details of the API specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}

pulumi.Output<GetApiResult> getApiOutput(
  GetApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiResult.fromMap);
}

/// Gets the details of the Diagnostic for an API specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_diagnostic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiDiagnosticResult> getApiDiagnostic(
  GetApiDiagnosticArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiDiagnostic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiDiagnosticResult.fromMap(result);
}

pulumi.Output<GetApiDiagnosticResult> getApiDiagnosticOutput(
  GetApiDiagnosticArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiDiagnostic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiDiagnosticResult.fromMap);
}

/// Gets an API Management gateway resource description.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiGatewayResult> getApiGateway(
  GetApiGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiGatewayResult.fromMap(result);
}

pulumi.Output<GetApiGatewayResult> getApiGatewayOutput(
  GetApiGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiGatewayResult.fromMap);
}

/// Gets an API Management gateway config connection resource description.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_gateway_config_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiGatewayConfigConnectionResult> getApiGatewayConfigConnection(
  GetApiGatewayConfigConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiGatewayConfigConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiGatewayConfigConnectionResult.fromMap(result);
}

pulumi.Output<GetApiGatewayConfigConnectionResult> getApiGatewayConfigConnectionOutput(
  GetApiGatewayConfigConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiGatewayConfigConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiGatewayConfigConnectionResult.fromMap);
}

/// Gets an API Management gateway hostname binding resource description.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_gateway_hostname_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiGatewayHostnameBindingResult> getApiGatewayHostnameBinding(
  GetApiGatewayHostnameBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiGatewayHostnameBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiGatewayHostnameBindingResult.fromMap(result);
}

pulumi.Output<GetApiGatewayHostnameBindingResult> getApiGatewayHostnameBindingOutput(
  GetApiGatewayHostnameBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiGatewayHostnameBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiGatewayHostnameBindingResult.fromMap);
}

/// Gets the details of the Issue for an API specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_issue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiIssueResult> getApiIssue(
  GetApiIssueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiIssue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIssueResult.fromMap(result);
}

pulumi.Output<GetApiIssueResult> getApiIssueOutput(
  GetApiIssueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiIssue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiIssueResult.fromMap);
}

/// Gets the details of the issue Attachment for an API specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_issue_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiIssueAttachmentResult> getApiIssueAttachment(
  GetApiIssueAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiIssueAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIssueAttachmentResult.fromMap(result);
}

pulumi.Output<GetApiIssueAttachmentResult> getApiIssueAttachmentOutput(
  GetApiIssueAttachmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiIssueAttachment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiIssueAttachmentResult.fromMap);
}

/// Gets the details of the issue Comment for an API specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_issue_comment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiIssueCommentResult> getApiIssueComment(
  GetApiIssueCommentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiIssueComment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIssueCommentResult.fromMap(result);
}

pulumi.Output<GetApiIssueCommentResult> getApiIssueCommentOutput(
  GetApiIssueCommentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiIssueComment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiIssueCommentResult.fromMap);
}

/// Gets an API Management service resource description.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_management_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiManagementServiceResult> getApiManagementService(
  GetApiManagementServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiManagementService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiManagementServiceResult.fromMap(result);
}

pulumi.Output<GetApiManagementServiceResult> getApiManagementServiceOutput(
  GetApiManagementServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiManagementService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiManagementServiceResult.fromMap);
}

/// Get the custom domain ownership identifier for an API Management service.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetApiManagementServiceDomainOwnershipIdentifierResult> getApiManagementServiceDomainOwnershipIdentifier(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiManagementServiceDomainOwnershipIdentifier',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiManagementServiceDomainOwnershipIdentifierResult.fromMap(result);
}

pulumi.Output<GetApiManagementServiceDomainOwnershipIdentifierResult> getApiManagementServiceDomainOwnershipIdentifierOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiManagementServiceDomainOwnershipIdentifier',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetApiManagementServiceDomainOwnershipIdentifierResult.fromMap);
}

/// Gets the Single-Sign-On token for the API Management Service which is valid for 5 Minutes.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_management_service_sso_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiManagementServiceSsoTokenResult> getApiManagementServiceSsoToken(
  GetApiManagementServiceSsoTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiManagementServiceSsoToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiManagementServiceSsoTokenResult.fromMap(result);
}

pulumi.Output<GetApiManagementServiceSsoTokenResult> getApiManagementServiceSsoTokenOutput(
  GetApiManagementServiceSsoTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiManagementServiceSsoToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiManagementServiceSsoTokenResult.fromMap);
}

/// Gets the details of the API Operation specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiOperationResult> getApiOperation(
  GetApiOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiOperationResult.fromMap(result);
}

pulumi.Output<GetApiOperationResult> getApiOperationOutput(
  GetApiOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiOperationResult.fromMap);
}

/// Get the policy configuration at the API Operation level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_operation_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiOperationPolicyResult> getApiOperationPolicy(
  GetApiOperationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiOperationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiOperationPolicyResult.fromMap(result);
}

pulumi.Output<GetApiOperationPolicyResult> getApiOperationPolicyOutput(
  GetApiOperationPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiOperationPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiOperationPolicyResult.fromMap);
}

/// Get the policy configuration at the API level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiPolicyResult> getApiPolicy(
  GetApiPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiPolicyResult.fromMap(result);
}

pulumi.Output<GetApiPolicyResult> getApiPolicyOutput(
  GetApiPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiPolicyResult.fromMap);
}

/// Returns the details of an API release.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_release_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiReleaseResult> getApiRelease(
  GetApiReleaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiRelease',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiReleaseResult.fromMap(result);
}

pulumi.Output<GetApiReleaseResult> getApiReleaseOutput(
  GetApiReleaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiRelease',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiReleaseResult.fromMap);
}

/// Get the schema configuration at the API level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiSchemaResult> getApiSchema(
  GetApiSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiSchemaResult.fromMap(result);
}

pulumi.Output<GetApiSchemaResult> getApiSchemaOutput(
  GetApiSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiSchemaResult.fromMap);
}

/// Get Tag description in scope of API
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_tag_description_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiTagDescriptionResult> getApiTagDescription(
  GetApiTagDescriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiTagDescription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiTagDescriptionResult.fromMap(result);
}

pulumi.Output<GetApiTagDescriptionResult> getApiTagDescriptionOutput(
  GetApiTagDescriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiTagDescription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiTagDescriptionResult.fromMap);
}

/// Gets the details of the API Tool specified by its identifier.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_tool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiToolResult> getApiTool(
  GetApiToolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiTool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiToolResult.fromMap(result);
}

pulumi.Output<GetApiToolResult> getApiToolOutput(
  GetApiToolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiTool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiToolResult.fromMap);
}

/// Gets the details of the Api Version Set specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_version_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiVersionSetResult> getApiVersionSet(
  GetApiVersionSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiVersionSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiVersionSetResult.fromMap(result);
}

pulumi.Output<GetApiVersionSetResult> getApiVersionSetOutput(
  GetApiVersionSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiVersionSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiVersionSetResult.fromMap);
}

/// Gets the details of the Wiki for an API specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_wiki_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiWikiResult> getApiWiki(
  GetApiWikiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiWiki',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiWikiResult.fromMap(result);
}

pulumi.Output<GetApiWikiResult> getApiWikiOutput(
  GetApiWikiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getApiWiki',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiWikiResult.fromMap);
}

/// Gets the details of the authorization specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_authorization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationResult> getAuthorization(
  GetAuthorizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationResult.fromMap(result);
}

pulumi.Output<GetAuthorizationResult> getAuthorizationOutput(
  GetAuthorizationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorization',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationResult.fromMap);
}

/// Gets the details of the authorization access policy specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_authorization_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationAccessPolicyResult> getAuthorizationAccessPolicy(
  GetAuthorizationAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorizationAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationAccessPolicyResult.fromMap(result);
}

pulumi.Output<GetAuthorizationAccessPolicyResult> getAuthorizationAccessPolicyOutput(
  GetAuthorizationAccessPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorizationAccessPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationAccessPolicyResult.fromMap);
}

/// Gets authorization login links.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_authorization_login_link_post_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationLoginLinkPostResult> getAuthorizationLoginLinkPost(
  GetAuthorizationLoginLinkPostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorizationLoginLinkPost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationLoginLinkPostResult.fromMap(result);
}

pulumi.Output<GetAuthorizationLoginLinkPostResult> getAuthorizationLoginLinkPostOutput(
  GetAuthorizationLoginLinkPostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorizationLoginLinkPost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationLoginLinkPostResult.fromMap);
}

/// Gets the details of the authorization provider specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_authorization_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationProviderResult> getAuthorizationProvider(
  GetAuthorizationProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorizationProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationProviderResult.fromMap(result);
}

pulumi.Output<GetAuthorizationProviderResult> getAuthorizationProviderOutput(
  GetAuthorizationProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorizationProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationProviderResult.fromMap);
}

/// Gets the details of the authorization server specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_authorization_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationServerResult> getAuthorizationServer(
  GetAuthorizationServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorizationServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationServerResult.fromMap(result);
}

pulumi.Output<GetAuthorizationServerResult> getAuthorizationServerOutput(
  GetAuthorizationServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getAuthorizationServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationServerResult.fromMap);
}

/// Gets the details of the backend specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_backend_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendResult> getBackend(
  GetBackendArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getBackend',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendResult.fromMap(result);
}

pulumi.Output<GetBackendResult> getBackendOutput(
  GetBackendArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getBackend',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackendResult.fromMap);
}

/// Gets the details of the Cache specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_cache_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCacheResult> getCache(
  GetCacheArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getCache',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCacheResult.fromMap(result);
}

pulumi.Output<GetCacheResult> getCacheOutput(
  GetCacheArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getCache',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCacheResult.fromMap);
}

/// Gets the details of the certificate specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

pulumi.Output<GetCertificateResult> getCertificateOutput(
  GetCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateResult.fromMap);
}

/// Gets the details of the client application specified by its identifier.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_client_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientApplicationResult> getClientApplication(
  GetClientApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getClientApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientApplicationResult.fromMap(result);
}

pulumi.Output<GetClientApplicationResult> getClientApplicationOutput(
  GetClientApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getClientApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientApplicationResult.fromMap);
}

/// Gets the product link for the client application.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_client_application_product_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientApplicationProductLinkResult> getClientApplicationProductLink(
  GetClientApplicationProductLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getClientApplicationProductLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientApplicationProductLinkResult.fromMap(result);
}

pulumi.Output<GetClientApplicationProductLinkResult> getClientApplicationProductLinkOutput(
  GetClientApplicationProductLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getClientApplicationProductLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientApplicationProductLinkResult.fromMap);
}

/// Returns the developer portal's content item specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_content_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContentItemResult> getContentItem(
  GetContentItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getContentItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContentItemResult.fromMap(result);
}

pulumi.Output<GetContentItemResult> getContentItemOutput(
  GetContentItemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getContentItem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContentItemResult.fromMap);
}

/// Gets the details of the developer portal's content type. Content types describe content items' properties, validation rules, and constraints.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_content_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContentTypeResult> getContentType(
  GetContentTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getContentType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContentTypeResult.fromMap(result);
}

pulumi.Output<GetContentTypeResult> getContentTypeOutput(
  GetContentTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getContentType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContentTypeResult.fromMap);
}

/// Gets the details of the Diagnostic specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_diagnostic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiagnosticResult> getDiagnostic(
  GetDiagnosticArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getDiagnostic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiagnosticResult.fromMap(result);
}

pulumi.Output<GetDiagnosticResult> getDiagnosticOutput(
  GetDiagnosticArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getDiagnostic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiagnosticResult.fromMap);
}

/// Gets the details of the Documentation specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_documentation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentationResult> getDocumentation(
  GetDocumentationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getDocumentation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentationResult.fromMap(result);
}

pulumi.Output<GetDocumentationResult> getDocumentationOutput(
  GetDocumentationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getDocumentation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentationResult.fromMap);
}

/// Gets the details of the email template specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_email_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEmailTemplateResult> getEmailTemplate(
  GetEmailTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getEmailTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmailTemplateResult.fromMap(result);
}

pulumi.Output<GetEmailTemplateResult> getEmailTemplateOutput(
  GetEmailTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getEmailTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEmailTemplateResult.fromMap);
}

/// Gets the details of the Gateway specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

pulumi.Output<GetGatewayResult> getGatewayOutput(
  GetGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayResult.fromMap);
}

/// Get assigned Gateway Certificate Authority details.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_gateway_certificate_authority_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayCertificateAuthorityResult> getGatewayCertificateAuthority(
  GetGatewayCertificateAuthorityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getGatewayCertificateAuthority',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayCertificateAuthorityResult.fromMap(result);
}

pulumi.Output<GetGatewayCertificateAuthorityResult> getGatewayCertificateAuthorityOutput(
  GetGatewayCertificateAuthorityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getGatewayCertificateAuthority',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayCertificateAuthorityResult.fromMap);
}

/// Get details of a hostname configuration
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_gateway_hostname_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayHostnameConfigurationResult> getGatewayHostnameConfiguration(
  GetGatewayHostnameConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getGatewayHostnameConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayHostnameConfigurationResult.fromMap(result);
}

pulumi.Output<GetGatewayHostnameConfigurationResult> getGatewayHostnameConfigurationOutput(
  GetGatewayHostnameConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getGatewayHostnameConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayHostnameConfigurationResult.fromMap);
}

/// Gets the details of the Schema specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_global_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalSchemaResult> getGlobalSchema(
  GetGlobalSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getGlobalSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalSchemaResult.fromMap(result);
}

pulumi.Output<GetGlobalSchemaResult> getGlobalSchemaOutput(
  GetGlobalSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getGlobalSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGlobalSchemaResult.fromMap);
}

/// Gets the details of the GraphQL API Resolver specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_graph_qlapi_resolver_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGraphQLApiResolverResult> getGraphQLApiResolver(
  GetGraphQLApiResolverArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getGraphQLApiResolver',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGraphQLApiResolverResult.fromMap(result);
}

pulumi.Output<GetGraphQLApiResolverResult> getGraphQLApiResolverOutput(
  GetGraphQLApiResolverArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getGraphQLApiResolver',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGraphQLApiResolverResult.fromMap);
}

/// Get the policy configuration at the GraphQL API Resolver level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_graph_qlapi_resolver_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGraphQLApiResolverPolicyResult> getGraphQLApiResolverPolicy(
  GetGraphQLApiResolverPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getGraphQLApiResolverPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGraphQLApiResolverPolicyResult.fromMap(result);
}

pulumi.Output<GetGraphQLApiResolverPolicyResult> getGraphQLApiResolverPolicyOutput(
  GetGraphQLApiResolverPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getGraphQLApiResolverPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGraphQLApiResolverPolicyResult.fromMap);
}

/// Gets the details of the group specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

pulumi.Output<GetGroupResult> getGroupOutput(
  GetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupResult.fromMap);
}

/// Gets the configuration details of the identity Provider configured in specified service instance.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_identity_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIdentityProviderResult> getIdentityProvider(
  GetIdentityProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getIdentityProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIdentityProviderResult.fromMap(result);
}

pulumi.Output<GetIdentityProviderResult> getIdentityProviderOutput(
  GetIdentityProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getIdentityProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIdentityProviderResult.fromMap);
}

/// Gets the details of the logger specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_logger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoggerResult> getLogger(
  GetLoggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getLogger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoggerResult.fromMap(result);
}

pulumi.Output<GetLoggerResult> getLoggerOutput(
  GetLoggerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getLogger',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoggerResult.fromMap);
}

/// Gets the details of the named value specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_named_value_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamedValueResult> getNamedValue(
  GetNamedValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getNamedValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamedValueResult.fromMap(result);
}

pulumi.Output<GetNamedValueResult> getNamedValueOutput(
  GetNamedValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getNamedValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamedValueResult.fromMap);
}

/// Gets specific OpenID Connect Provider without secrets.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_open_id_connect_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenIdConnectProviderResult> getOpenIdConnectProvider(
  GetOpenIdConnectProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getOpenIdConnectProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenIdConnectProviderResult.fromMap(result);
}

pulumi.Output<GetOpenIdConnectProviderResult> getOpenIdConnectProviderOutput(
  GetOpenIdConnectProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getOpenIdConnectProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOpenIdConnectProviderResult.fromMap);
}

/// Get the Global policy definition of the Api Management service.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

pulumi.Output<GetPolicyResult> getPolicyOutput(
  GetPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyResult.fromMap);
}

/// Gets a policy fragment.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_policy_fragment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyFragmentResult> getPolicyFragment(
  GetPolicyFragmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getPolicyFragment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyFragmentResult.fromMap(result);
}

pulumi.Output<GetPolicyFragmentResult> getPolicyFragmentOutput(
  GetPolicyFragmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getPolicyFragment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyFragmentResult.fromMap);
}

/// Get the policy restriction of the Api Management service.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_policy_restriction_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyRestrictionResult> getPolicyRestriction(
  GetPolicyRestrictionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getPolicyRestriction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyRestrictionResult.fromMap(result);
}

pulumi.Output<GetPolicyRestrictionResult> getPolicyRestrictionOutput(
  GetPolicyRestrictionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getPolicyRestriction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyRestrictionResult.fromMap);
}

/// Gets the details of the Private Endpoint Connection specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_private_endpoint_connection_by_name_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionByNameResult> getPrivateEndpointConnectionByName(
  GetPrivateEndpointConnectionByNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getPrivateEndpointConnectionByName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionByNameResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionByNameResult> getPrivateEndpointConnectionByNameOutput(
  GetPrivateEndpointConnectionByNameArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getPrivateEndpointConnectionByName',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionByNameResult.fromMap);
}

/// Gets the details of the product specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

pulumi.Output<GetProductResult> getProductOutput(
  GetProductArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductResult.fromMap);
}

/// Gets the API link for the product.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_product_api_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductApiLinkResult> getProductApiLink(
  GetProductApiLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getProductApiLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductApiLinkResult.fromMap(result);
}

pulumi.Output<GetProductApiLinkResult> getProductApiLinkOutput(
  GetProductApiLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getProductApiLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductApiLinkResult.fromMap);
}

/// Gets the group link for the product.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_product_group_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductGroupLinkResult> getProductGroupLink(
  GetProductGroupLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getProductGroupLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductGroupLinkResult.fromMap(result);
}

pulumi.Output<GetProductGroupLinkResult> getProductGroupLinkOutput(
  GetProductGroupLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getProductGroupLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductGroupLinkResult.fromMap);
}

/// Get the policy configuration at the Product level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_product_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductPolicyResult> getProductPolicy(
  GetProductPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getProductPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductPolicyResult.fromMap(result);
}

pulumi.Output<GetProductPolicyResult> getProductPolicyOutput(
  GetProductPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getProductPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductPolicyResult.fromMap);
}

/// Gets the details of the Wiki for a Product specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_product_wiki_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductWikiResult> getProductWiki(
  GetProductWikiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getProductWiki',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductWikiResult.fromMap(result);
}

pulumi.Output<GetProductWikiResult> getProductWikiOutput(
  GetProductWikiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getProductWiki',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductWikiResult.fromMap);
}

/// Gets the details of the Schema specified by its identifier.
///
/// Uses Azure REST API version 2021-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaResult> getSchema(
  GetSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaResult.fromMap(result);
}

pulumi.Output<GetSchemaResult> getSchemaOutput(
  GetSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSchemaResult.fromMap);
}

/// Gets the specified Subscription entity.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

pulumi.Output<GetSubscriptionResult> getSubscriptionOutput(
  GetSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionResult.fromMap);
}

/// Gets the details of the tag specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_tag_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagResult> getTag(
  GetTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagResult.fromMap(result);
}

pulumi.Output<GetTagResult> getTagOutput(
  GetTagArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getTag',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagResult.fromMap);
}

/// Gets the API link for the tag.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_tag_api_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagApiLinkResult> getTagApiLink(
  GetTagApiLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagApiLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagApiLinkResult.fromMap(result);
}

pulumi.Output<GetTagApiLinkResult> getTagApiLinkOutput(
  GetTagApiLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagApiLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagApiLinkResult.fromMap);
}

/// Get tag associated with the API.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_tag_by_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagByApiResult> getTagByApi(
  GetTagByApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagByApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagByApiResult.fromMap(result);
}

pulumi.Output<GetTagByApiResult> getTagByApiOutput(
  GetTagByApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagByApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagByApiResult.fromMap);
}

/// Get tag associated with the Operation.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_tag_by_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagByOperationResult> getTagByOperation(
  GetTagByOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagByOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagByOperationResult.fromMap(result);
}

pulumi.Output<GetTagByOperationResult> getTagByOperationOutput(
  GetTagByOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagByOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagByOperationResult.fromMap);
}

/// Get tag associated with the Product.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_tag_by_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagByProductResult> getTagByProduct(
  GetTagByProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagByProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagByProductResult.fromMap(result);
}

pulumi.Output<GetTagByProductResult> getTagByProductOutput(
  GetTagByProductArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagByProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagByProductResult.fromMap);
}

/// Gets the operation link for the tag.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_tag_operation_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagOperationLinkResult> getTagOperationLink(
  GetTagOperationLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagOperationLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagOperationLinkResult.fromMap(result);
}

pulumi.Output<GetTagOperationLinkResult> getTagOperationLinkOutput(
  GetTagOperationLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagOperationLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagOperationLinkResult.fromMap);
}

/// Gets the product link for the tag.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_tag_product_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagProductLinkResult> getTagProductLink(
  GetTagProductLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagProductLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagProductLinkResult.fromMap(result);
}

pulumi.Output<GetTagProductLinkResult> getTagProductLinkOutput(
  GetTagProductLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getTagProductLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagProductLinkResult.fromMap);
}

/// Gets the details of the user specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

pulumi.Output<GetUserResult> getUserOutput(
  GetUserArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getUser',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserResult.fromMap);
}

/// Gets the Shared Access Authorization Token for the User.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_user_shared_access_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserSharedAccessTokenResult> getUserSharedAccessToken(
  GetUserSharedAccessTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getUserSharedAccessToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserSharedAccessTokenResult.fromMap(result);
}

pulumi.Output<GetUserSharedAccessTokenResult> getUserSharedAccessTokenOutput(
  GetUserSharedAccessTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getUserSharedAccessToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserSharedAccessTokenResult.fromMap);
}

/// Gets the details of the workspace specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}

pulumi.Output<GetWorkspaceResult> getWorkspaceOutput(
  GetWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}

/// Gets the details of the API specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceApiResult> getWorkspaceApi(
  GetWorkspaceApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceApiResult.fromMap(result);
}

pulumi.Output<GetWorkspaceApiResult> getWorkspaceApiOutput(
  GetWorkspaceApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceApiResult.fromMap);
}

/// Gets the details of the Diagnostic for an API specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_api_diagnostic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceApiDiagnosticResult> getWorkspaceApiDiagnostic(
  GetWorkspaceApiDiagnosticArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiDiagnostic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceApiDiagnosticResult.fromMap(result);
}

pulumi.Output<GetWorkspaceApiDiagnosticResult> getWorkspaceApiDiagnosticOutput(
  GetWorkspaceApiDiagnosticArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiDiagnostic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceApiDiagnosticResult.fromMap);
}

/// Gets the details of the API Operation specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_api_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceApiOperationResult> getWorkspaceApiOperation(
  GetWorkspaceApiOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceApiOperationResult.fromMap(result);
}

pulumi.Output<GetWorkspaceApiOperationResult> getWorkspaceApiOperationOutput(
  GetWorkspaceApiOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceApiOperationResult.fromMap);
}

/// Get the policy configuration at the API Operation level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_api_operation_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceApiOperationPolicyResult> getWorkspaceApiOperationPolicy(
  GetWorkspaceApiOperationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiOperationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceApiOperationPolicyResult.fromMap(result);
}

pulumi.Output<GetWorkspaceApiOperationPolicyResult> getWorkspaceApiOperationPolicyOutput(
  GetWorkspaceApiOperationPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiOperationPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceApiOperationPolicyResult.fromMap);
}

/// Get the policy configuration at the API level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_api_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceApiPolicyResult> getWorkspaceApiPolicy(
  GetWorkspaceApiPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceApiPolicyResult.fromMap(result);
}

pulumi.Output<GetWorkspaceApiPolicyResult> getWorkspaceApiPolicyOutput(
  GetWorkspaceApiPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceApiPolicyResult.fromMap);
}

/// Returns the details of an API release.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_api_release_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceApiReleaseResult> getWorkspaceApiRelease(
  GetWorkspaceApiReleaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiRelease',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceApiReleaseResult.fromMap(result);
}

pulumi.Output<GetWorkspaceApiReleaseResult> getWorkspaceApiReleaseOutput(
  GetWorkspaceApiReleaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiRelease',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceApiReleaseResult.fromMap);
}

/// Get the schema configuration at the API level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_api_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceApiSchemaResult> getWorkspaceApiSchema(
  GetWorkspaceApiSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceApiSchemaResult.fromMap(result);
}

pulumi.Output<GetWorkspaceApiSchemaResult> getWorkspaceApiSchemaOutput(
  GetWorkspaceApiSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceApiSchemaResult.fromMap);
}

/// Gets the details of the Api Version Set specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_api_version_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceApiVersionSetResult> getWorkspaceApiVersionSet(
  GetWorkspaceApiVersionSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiVersionSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceApiVersionSetResult.fromMap(result);
}

pulumi.Output<GetWorkspaceApiVersionSetResult> getWorkspaceApiVersionSetOutput(
  GetWorkspaceApiVersionSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceApiVersionSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceApiVersionSetResult.fromMap);
}

/// Gets the details of the backend specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_backend_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceBackendResult> getWorkspaceBackend(
  GetWorkspaceBackendArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceBackend',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceBackendResult.fromMap(result);
}

pulumi.Output<GetWorkspaceBackendResult> getWorkspaceBackendOutput(
  GetWorkspaceBackendArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceBackend',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceBackendResult.fromMap);
}

/// Gets the details of the certificate specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceCertificateResult> getWorkspaceCertificate(
  GetWorkspaceCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceCertificateResult.fromMap(result);
}

pulumi.Output<GetWorkspaceCertificateResult> getWorkspaceCertificateOutput(
  GetWorkspaceCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceCertificateResult.fromMap);
}

/// Gets the details of the Diagnostic specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_diagnostic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceDiagnosticResult> getWorkspaceDiagnostic(
  GetWorkspaceDiagnosticArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceDiagnostic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceDiagnosticResult.fromMap(result);
}

pulumi.Output<GetWorkspaceDiagnosticResult> getWorkspaceDiagnosticOutput(
  GetWorkspaceDiagnosticArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceDiagnostic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceDiagnosticResult.fromMap);
}

/// Gets the details of the Schema specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_global_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceGlobalSchemaResult> getWorkspaceGlobalSchema(
  GetWorkspaceGlobalSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceGlobalSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceGlobalSchemaResult.fromMap(result);
}

pulumi.Output<GetWorkspaceGlobalSchemaResult> getWorkspaceGlobalSchemaOutput(
  GetWorkspaceGlobalSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceGlobalSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceGlobalSchemaResult.fromMap);
}

/// Gets the details of the group specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceGroupResult> getWorkspaceGroup(
  GetWorkspaceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceGroupResult.fromMap(result);
}

pulumi.Output<GetWorkspaceGroupResult> getWorkspaceGroupOutput(
  GetWorkspaceGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceGroupResult.fromMap);
}

/// Gets the details of the logger specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_logger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceLoggerResult> getWorkspaceLogger(
  GetWorkspaceLoggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceLogger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceLoggerResult.fromMap(result);
}

pulumi.Output<GetWorkspaceLoggerResult> getWorkspaceLoggerOutput(
  GetWorkspaceLoggerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceLogger',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceLoggerResult.fromMap);
}

/// Gets the details of the named value specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_named_value_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceNamedValueResult> getWorkspaceNamedValue(
  GetWorkspaceNamedValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceNamedValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceNamedValueResult.fromMap(result);
}

pulumi.Output<GetWorkspaceNamedValueResult> getWorkspaceNamedValueOutput(
  GetWorkspaceNamedValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceNamedValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceNamedValueResult.fromMap);
}

/// Get the policy configuration at the API level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspacePolicyResult> getWorkspacePolicy(
  GetWorkspacePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspacePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspacePolicyResult.fromMap(result);
}

pulumi.Output<GetWorkspacePolicyResult> getWorkspacePolicyOutput(
  GetWorkspacePolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspacePolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspacePolicyResult.fromMap);
}

/// Gets a policy fragment.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_policy_fragment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspacePolicyFragmentResult> getWorkspacePolicyFragment(
  GetWorkspacePolicyFragmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspacePolicyFragment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspacePolicyFragmentResult.fromMap(result);
}

pulumi.Output<GetWorkspacePolicyFragmentResult> getWorkspacePolicyFragmentOutput(
  GetWorkspacePolicyFragmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspacePolicyFragment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspacePolicyFragmentResult.fromMap);
}

/// Gets the details of the product specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceProductResult> getWorkspaceProduct(
  GetWorkspaceProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceProductResult.fromMap(result);
}

pulumi.Output<GetWorkspaceProductResult> getWorkspaceProductOutput(
  GetWorkspaceProductArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceProductResult.fromMap);
}

/// Gets the API link for the product.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_product_api_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceProductApiLinkResult> getWorkspaceProductApiLink(
  GetWorkspaceProductApiLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceProductApiLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceProductApiLinkResult.fromMap(result);
}

pulumi.Output<GetWorkspaceProductApiLinkResult> getWorkspaceProductApiLinkOutput(
  GetWorkspaceProductApiLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceProductApiLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceProductApiLinkResult.fromMap);
}

/// Gets the group link for the product.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_product_group_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceProductGroupLinkResult> getWorkspaceProductGroupLink(
  GetWorkspaceProductGroupLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceProductGroupLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceProductGroupLinkResult.fromMap(result);
}

pulumi.Output<GetWorkspaceProductGroupLinkResult> getWorkspaceProductGroupLinkOutput(
  GetWorkspaceProductGroupLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceProductGroupLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceProductGroupLinkResult.fromMap);
}

/// Get the policy configuration at the Product level.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_product_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceProductPolicyResult> getWorkspaceProductPolicy(
  GetWorkspaceProductPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceProductPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceProductPolicyResult.fromMap(result);
}

pulumi.Output<GetWorkspaceProductPolicyResult> getWorkspaceProductPolicyOutput(
  GetWorkspaceProductPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceProductPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceProductPolicyResult.fromMap);
}

/// Gets the specified Subscription entity.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceSubscriptionResult> getWorkspaceSubscription(
  GetWorkspaceSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceSubscriptionResult.fromMap(result);
}

pulumi.Output<GetWorkspaceSubscriptionResult> getWorkspaceSubscriptionOutput(
  GetWorkspaceSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceSubscriptionResult.fromMap);
}

/// Gets the details of the tag specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_tag_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceTagResult> getWorkspaceTag(
  GetWorkspaceTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceTagResult.fromMap(result);
}

pulumi.Output<GetWorkspaceTagResult> getWorkspaceTagOutput(
  GetWorkspaceTagArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceTag',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceTagResult.fromMap);
}

/// Gets the API link for the tag.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_tag_api_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceTagApiLinkResult> getWorkspaceTagApiLink(
  GetWorkspaceTagApiLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceTagApiLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceTagApiLinkResult.fromMap(result);
}

pulumi.Output<GetWorkspaceTagApiLinkResult> getWorkspaceTagApiLinkOutput(
  GetWorkspaceTagApiLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceTagApiLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceTagApiLinkResult.fromMap);
}

/// Gets the operation link for the tag.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_tag_operation_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceTagOperationLinkResult> getWorkspaceTagOperationLink(
  GetWorkspaceTagOperationLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceTagOperationLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceTagOperationLinkResult.fromMap(result);
}

pulumi.Output<GetWorkspaceTagOperationLinkResult> getWorkspaceTagOperationLinkOutput(
  GetWorkspaceTagOperationLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceTagOperationLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceTagOperationLinkResult.fromMap);
}

/// Gets the product link for the tag.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_tag_product_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceTagProductLinkResult> getWorkspaceTagProductLink(
  GetWorkspaceTagProductLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceTagProductLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceTagProductLinkResult.fromMap(result);
}

pulumi.Output<GetWorkspaceTagProductLinkResult> getWorkspaceTagProductLinkOutput(
  GetWorkspaceTagProductLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:getWorkspaceTagProductLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceTagProductLinkResult.fromMap);
}

/// Gets the client secret details of the authorization server.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_authorization_server_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAuthorizationServerSecretsResult> listAuthorizationServerSecrets(
  ListAuthorizationServerSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listAuthorizationServerSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAuthorizationServerSecretsResult.fromMap(result);
}

pulumi.Output<ListAuthorizationServerSecretsResult> listAuthorizationServerSecretsOutput(
  ListAuthorizationServerSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listAuthorizationServerSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAuthorizationServerSecretsResult.fromMap);
}

/// Retrived client application secrets.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_client_application_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListClientApplicationSecretsResult> listClientApplicationSecrets(
  ListClientApplicationSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listClientApplicationSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListClientApplicationSecretsResult.fromMap(result);
}

pulumi.Output<ListClientApplicationSecretsResult> listClientApplicationSecretsOutput(
  ListClientApplicationSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listClientApplicationSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListClientApplicationSecretsResult.fromMap);
}

/// Gets the secret validation key of the DelegationSettings.
///
/// Uses Azure REST API version 2021-08-01.
///
/// Other available API versions: 2021-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_delegation_setting_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDelegationSettingSecretsResult> listDelegationSettingSecrets(
  ListDelegationSettingSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listDelegationSettingSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDelegationSettingSecretsResult.fromMap(result);
}

pulumi.Output<ListDelegationSettingSecretsResult> listDelegationSettingSecretsOutput(
  ListDelegationSettingSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listDelegationSettingSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDelegationSettingSecretsResult.fromMap);
}

/// Create new debug credentials for gateway.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_gateway_debug_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGatewayDebugCredentialsResult> listGatewayDebugCredentials(
  ListGatewayDebugCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listGatewayDebugCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGatewayDebugCredentialsResult.fromMap(result);
}

pulumi.Output<ListGatewayDebugCredentialsResult> listGatewayDebugCredentialsOutput(
  ListGatewayDebugCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listGatewayDebugCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListGatewayDebugCredentialsResult.fromMap);
}

/// Retrieves gateway keys.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_gateway_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGatewayKeysResult> listGatewayKeys(
  ListGatewayKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listGatewayKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGatewayKeysResult.fromMap(result);
}

pulumi.Output<ListGatewayKeysResult> listGatewayKeysOutput(
  ListGatewayKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listGatewayKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListGatewayKeysResult.fromMap);
}

/// Gets the client secret details of the Identity Provider.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_identity_provider_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIdentityProviderSecretsResult> listIdentityProviderSecrets(
  ListIdentityProviderSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listIdentityProviderSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIdentityProviderSecretsResult.fromMap(result);
}

pulumi.Output<ListIdentityProviderSecretsResult> listIdentityProviderSecretsOutput(
  ListIdentityProviderSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listIdentityProviderSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIdentityProviderSecretsResult.fromMap);
}

/// Gets the secret of the named value specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_named_value_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNamedValueResult> listNamedValue(
  ListNamedValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listNamedValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNamedValueResult.fromMap(result);
}

pulumi.Output<ListNamedValueResult> listNamedValueOutput(
  ListNamedValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listNamedValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNamedValueResult.fromMap);
}

/// Gets the client secret details of the OpenID Connect Provider.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_open_id_connect_provider_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListOpenIdConnectProviderSecretsResult> listOpenIdConnectProviderSecrets(
  ListOpenIdConnectProviderSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listOpenIdConnectProviderSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListOpenIdConnectProviderSecretsResult.fromMap(result);
}

pulumi.Output<ListOpenIdConnectProviderSecretsResult> listOpenIdConnectProviderSecretsOutput(
  ListOpenIdConnectProviderSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listOpenIdConnectProviderSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListOpenIdConnectProviderSecretsResult.fromMap);
}

/// Lists policy resources that reference the policy fragment.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_policy_fragment_references_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPolicyFragmentReferencesResult> listPolicyFragmentReferences(
  ListPolicyFragmentReferencesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listPolicyFragmentReferences',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPolicyFragmentReferencesResult.fromMap(result);
}

pulumi.Output<ListPolicyFragmentReferencesResult> listPolicyFragmentReferencesOutput(
  ListPolicyFragmentReferencesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listPolicyFragmentReferences',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListPolicyFragmentReferencesResult.fromMap);
}

/// Gets the specified Subscription keys.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_subscription_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSubscriptionSecretsResult> listSubscriptionSecrets(
  ListSubscriptionSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listSubscriptionSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSubscriptionSecretsResult.fromMap(result);
}

pulumi.Output<ListSubscriptionSecretsResult> listSubscriptionSecretsOutput(
  ListSubscriptionSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listSubscriptionSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSubscriptionSecretsResult.fromMap);
}

/// Get tenant access information details.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_tenant_access_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListTenantAccessSecretsResult> listTenantAccessSecrets(
  ListTenantAccessSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listTenantAccessSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListTenantAccessSecretsResult.fromMap(result);
}

pulumi.Output<ListTenantAccessSecretsResult> listTenantAccessSecretsOutput(
  ListTenantAccessSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listTenantAccessSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListTenantAccessSecretsResult.fromMap);
}

/// Gets the secret of the named value specified by its identifier.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_workspace_named_value_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceNamedValueResult> listWorkspaceNamedValue(
  ListWorkspaceNamedValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listWorkspaceNamedValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceNamedValueResult.fromMap(result);
}

pulumi.Output<ListWorkspaceNamedValueResult> listWorkspaceNamedValueOutput(
  ListWorkspaceNamedValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listWorkspaceNamedValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceNamedValueResult.fromMap);
}

/// Lists policy resources that reference the policy fragment.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_workspace_policy_fragment_references_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspacePolicyFragmentReferencesResult> listWorkspacePolicyFragmentReferences(
  ListWorkspacePolicyFragmentReferencesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listWorkspacePolicyFragmentReferences',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspacePolicyFragmentReferencesResult.fromMap(result);
}

pulumi.Output<ListWorkspacePolicyFragmentReferencesResult> listWorkspacePolicyFragmentReferencesOutput(
  ListWorkspacePolicyFragmentReferencesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listWorkspacePolicyFragmentReferences',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspacePolicyFragmentReferencesResult.fromMap);
}

/// Gets the specified Subscription keys.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_list_workspace_subscription_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceSubscriptionSecretsResult> listWorkspaceSubscriptionSecrets(
  ListWorkspaceSubscriptionSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apimanagement:listWorkspaceSubscriptionSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceSubscriptionSecretsResult.fromMap(result);
}

pulumi.Output<ListWorkspaceSubscriptionSecretsResult> listWorkspaceSubscriptionSecretsOutput(
  ListWorkspaceSubscriptionSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:apimanagement:listWorkspaceSubscriptionSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceSubscriptionSecretsResult.fromMap);
}
