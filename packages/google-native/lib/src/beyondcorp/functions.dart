import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connection_args.dart';
import 'get_app_connection_beyondcorp_v1alpha_args.dart';
import 'get_app_connection_beyondcorp_v1alpha_result.dart';
import 'get_app_connection_iam_policy_args.dart';
import 'get_app_connection_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_app_connection_iam_policy_beyondcorp_v1alpha_result.dart';
import 'get_app_connection_iam_policy_result.dart';
import 'get_app_connection_result.dart';
import 'get_app_connector_args.dart';
import 'get_app_connector_beyondcorp_v1alpha_args.dart';
import 'get_app_connector_beyondcorp_v1alpha_result.dart';
import 'get_app_connector_iam_policy_args.dart';
import 'get_app_connector_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_app_connector_iam_policy_beyondcorp_v1alpha_result.dart';
import 'get_app_connector_iam_policy_result.dart';
import 'get_app_connector_result.dart';
import 'get_app_gateway_args.dart';
import 'get_app_gateway_beyondcorp_v1alpha_args.dart';
import 'get_app_gateway_beyondcorp_v1alpha_result.dart';
import 'get_app_gateway_iam_policy_args.dart';
import 'get_app_gateway_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_app_gateway_iam_policy_beyondcorp_v1alpha_result.dart';
import 'get_app_gateway_iam_policy_result.dart';
import 'get_app_gateway_result.dart';
import 'get_application_domain_iam_policy_args.dart';
import 'get_application_domain_iam_policy_result.dart';
import 'get_application_iam_policy_args.dart';
import 'get_application_iam_policy_result.dart';
import 'get_browser_dlp_rule_args.dart';
import 'get_browser_dlp_rule_result.dart';
import 'get_client_connector_service_iam_policy_args.dart';
import 'get_client_connector_service_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_client_connector_service_iam_policy_beyondcorp_v1alpha_result.dart';
import 'get_client_connector_service_iam_policy_result.dart';
import 'get_client_gateway_iam_policy_args.dart';
import 'get_client_gateway_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_client_gateway_iam_policy_beyondcorp_v1alpha_result.dart';
import 'get_client_gateway_iam_policy_result.dart';
import 'get_connection_args.dart';
import 'get_connection_iam_policy_args.dart';
import 'get_connection_iam_policy_result.dart';
import 'get_connection_result.dart';
import 'get_connector_args.dart';
import 'get_connector_iam_policy_args.dart';
import 'get_connector_iam_policy_result.dart';
import 'get_connector_result.dart';
import 'get_net_connection_iam_policy_args.dart';
import 'get_net_connection_iam_policy_result.dart';
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_args.dart';
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_beyondcorp_v1alpha_result.dart';
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_result.dart';
import 'get_organization_partner_tenant_iam_policy_args.dart';
import 'get_organization_partner_tenant_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_organization_partner_tenant_iam_policy_beyondcorp_v1alpha_result.dart';
import 'get_organization_partner_tenant_iam_policy_result.dart';
import 'get_organization_partner_tenant_proxy_config_iam_policy_args.dart';
import 'get_organization_partner_tenant_proxy_config_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_organization_partner_tenant_proxy_config_iam_policy_beyondcorp_v1alpha_result.dart';
import 'get_organization_partner_tenant_proxy_config_iam_policy_result.dart';
import 'get_partner_tenant_args.dart';
import 'get_partner_tenant_result.dart';
import 'get_proxy_config_args.dart';
import 'get_proxy_config_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';

/// Gets details of a single AppConnection.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_app_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectionResult> getAppConnection(
  GetAppConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_app_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectionIamPolicyResult> getAppConnectionIamPolicy(
  GetAppConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionIamPolicyResult.fromMap(result);
}

/// Gets details of a single AppConnector.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_app_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectorResult> getAppConnector(
  GetAppConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_app_connector_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectorIamPolicyResult> getAppConnectorIamPolicy(
  GetAppConnectorIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppConnectorIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorIamPolicyResult.fromMap(result);
}

/// Gets details of a single AppGateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_app_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGatewayResult> getAppGateway(
  GetAppGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_app_gateway_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGatewayIamPolicyResult> getAppGatewayIamPolicy(
  GetAppGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_client_connector_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientConnectorServiceIamPolicyResult>
    getClientConnectorServiceIamPolicy(
  GetClientConnectorServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getClientConnectorServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientConnectorServiceIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_client_gateway_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientGatewayIamPolicyResult> getClientGatewayIamPolicy(
  GetClientGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getClientGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientGatewayIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_organization_partner_tenant_browser_dlp_rule_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyResult>
    getOrganizationPartnerTenantBrowserDlpRuleIamPolicy(
  GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getOrganizationPartnerTenantBrowserDlpRuleIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyResult.fromMap(
      result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_organization_partner_tenant_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPartnerTenantIamPolicyResult>
    getOrganizationPartnerTenantIamPolicy(
  GetOrganizationPartnerTenantIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getOrganizationPartnerTenantIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1_get_organization_partner_tenant_proxy_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPartnerTenantProxyConfigIamPolicyResult>
    getOrganizationPartnerTenantProxyConfigIamPolicy(
  GetOrganizationPartnerTenantProxyConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getOrganizationPartnerTenantProxyConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantProxyConfigIamPolicyResult.fromMap(result);
}

/// Gets details of a single AppConnection.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_app_connection_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectionBeyondcorpV1alphaResult>
    getAppConnectionBeyondcorpV1alpha(
  GetAppConnectionBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionBeyondcorpV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_app_connection_iam_policy_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectionIamPolicyBeyondcorpV1alphaResult>
    getAppConnectionIamPolicyBeyondcorpV1alpha(
  GetAppConnectionIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionIamPolicyBeyondcorpV1alphaResult.fromMap(result);
}

/// Gets details of a single AppConnector.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_app_connector_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectorBeyondcorpV1alphaResult> getAppConnectorBeyondcorpV1alpha(
  GetAppConnectorBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorBeyondcorpV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_app_connector_iam_policy_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectorIamPolicyBeyondcorpV1alphaResult>
    getAppConnectorIamPolicyBeyondcorpV1alpha(
  GetAppConnectorIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnectorIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorIamPolicyBeyondcorpV1alphaResult.fromMap(result);
}

/// Gets details of a single AppGateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_app_gateway_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGatewayBeyondcorpV1alphaResult> getAppGatewayBeyondcorpV1alpha(
  GetAppGatewayBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayBeyondcorpV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_app_gateway_iam_policy_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGatewayIamPolicyBeyondcorpV1alphaResult>
    getAppGatewayIamPolicyBeyondcorpV1alpha(
  GetAppGatewayIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayIamPolicyBeyondcorpV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_application_domain_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationDomainIamPolicyResult> getApplicationDomainIamPolicy(
  GetApplicationDomainIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getApplicationDomainIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationDomainIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_application_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationIamPolicyResult> getApplicationIamPolicy(
  GetApplicationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getApplicationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationIamPolicyResult.fromMap(result);
}

/// Gets details of a single BrowserDlpRule.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_browser_dlp_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrowserDlpRuleResult> getBrowserDlpRule(
  GetBrowserDlpRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getBrowserDlpRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrowserDlpRuleResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_client_connector_service_iam_policy_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientConnectorServiceIamPolicyBeyondcorpV1alphaResult>
    getClientConnectorServiceIamPolicyBeyondcorpV1alpha(
  GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getClientConnectorServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientConnectorServiceIamPolicyBeyondcorpV1alphaResult.fromMap(
      result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_client_gateway_iam_policy_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientGatewayIamPolicyBeyondcorpV1alphaResult>
    getClientGatewayIamPolicyBeyondcorpV1alpha(
  GetClientGatewayIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getClientGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientGatewayIamPolicyBeyondcorpV1alphaResult.fromMap(result);
}

/// Gets details of a single Connection.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionIamPolicyResult> getConnectionIamPolicy(
  GetConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult.fromMap(result);
}

/// Gets details of a single Connector.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_connector_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorIamPolicyResult> getConnectorIamPolicy(
  GetConnectorIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getConnectorIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_net_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetConnectionIamPolicyResult> getNetConnectionIamPolicy(
  GetNetConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getNetConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetConnectionIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_organization_partner_tenant_browser_dlp_rule_iam_policy_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaResult>
    getOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alpha(
  GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaArgs
      args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantBrowserDlpRuleIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaResult
      .fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_organization_partner_tenant_iam_policy_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaResult>
    getOrganizationPartnerTenantIamPolicyBeyondcorpV1alpha(
  GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaResult.fromMap(
      result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_organization_partner_tenant_proxy_config_iam_policy_beyondcorp_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaResult>
    getOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alpha(
  GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantProxyConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaResult
      .fromMap(result);
}

/// Gets details of a single PartnerTenant.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_partner_tenant_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerTenantResult> getPartnerTenant(
  GetPartnerTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getPartnerTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerTenantResult.fromMap(result);
}

/// Gets details of a single ProxyConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_proxy_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProxyConfigResult> getProxyConfig(
  GetProxyConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getProxyConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProxyConfigResult.fromMap(result);
}

/// Gets details of a single Subscription.
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_v1alpha_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}
