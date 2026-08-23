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
