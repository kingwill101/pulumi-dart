import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_forwarding_ruleset_args.dart';
import 'get_dns_forwarding_ruleset_result.dart';
import 'get_dns_resolver_args.dart';
import 'get_dns_resolver_domain_list_args.dart';
import 'get_dns_resolver_domain_list_result.dart';
import 'get_dns_resolver_policy_args.dart';
import 'get_dns_resolver_policy_result.dart';
import 'get_dns_resolver_policy_virtual_network_link_args.dart';
import 'get_dns_resolver_policy_virtual_network_link_result.dart';
import 'get_dns_resolver_result.dart';
import 'get_dns_security_rule_args.dart';
import 'get_dns_security_rule_result.dart';
import 'get_forwarding_rule_args.dart';
import 'get_forwarding_rule_result.dart';
import 'get_inbound_endpoint_args.dart';
import 'get_inbound_endpoint_result.dart';
import 'get_outbound_endpoint_args.dart';
import 'get_outbound_endpoint_result.dart';
import 'get_private_resolver_virtual_network_link_args.dart';
import 'get_private_resolver_virtual_network_link_result.dart';
import 'list_dns_forwarding_ruleset_by_virtual_network_args.dart';
import 'list_dns_forwarding_ruleset_by_virtual_network_result.dart';
import 'list_dns_resolver_by_virtual_network_args.dart';
import 'list_dns_resolver_by_virtual_network_result.dart';
import 'list_dns_resolver_policy_by_virtual_network_args.dart';
import 'list_dns_resolver_policy_by_virtual_network_result.dart';

/// Gets a DNS forwarding ruleset properties.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_dns_forwarding_ruleset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsForwardingRulesetResult> getDnsForwardingRuleset(
  GetDnsForwardingRulesetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsForwardingRuleset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsForwardingRulesetResult.fromMap(result);
}

pulumi.Output<GetDnsForwardingRulesetResult> getDnsForwardingRulesetOutput(
  GetDnsForwardingRulesetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsForwardingRuleset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDnsForwardingRulesetResult.fromMap);
}

/// Gets properties of a DNS resolver.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_dns_resolver_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsResolverResult> getDnsResolver(
  GetDnsResolverArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsResolver',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsResolverResult.fromMap(result);
}

pulumi.Output<GetDnsResolverResult> getDnsResolverOutput(
  GetDnsResolverArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsResolver',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDnsResolverResult.fromMap);
}

/// Gets properties of a DNS resolver domain list.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_dns_resolver_domain_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsResolverDomainListResult> getDnsResolverDomainList(
  GetDnsResolverDomainListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsResolverDomainList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsResolverDomainListResult.fromMap(result);
}

pulumi.Output<GetDnsResolverDomainListResult> getDnsResolverDomainListOutput(
  GetDnsResolverDomainListArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsResolverDomainList',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDnsResolverDomainListResult.fromMap);
}

/// Gets properties of a DNS resolver policy.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_dns_resolver_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsResolverPolicyResult> getDnsResolverPolicy(
  GetDnsResolverPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsResolverPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsResolverPolicyResult.fromMap(result);
}

pulumi.Output<GetDnsResolverPolicyResult> getDnsResolverPolicyOutput(
  GetDnsResolverPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsResolverPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDnsResolverPolicyResult.fromMap);
}

/// Gets properties of a DNS resolver policy virtual network link.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_dns_resolver_policy_virtual_network_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsResolverPolicyVirtualNetworkLinkResult> getDnsResolverPolicyVirtualNetworkLink(
  GetDnsResolverPolicyVirtualNetworkLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsResolverPolicyVirtualNetworkLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsResolverPolicyVirtualNetworkLinkResult.fromMap(result);
}

pulumi.Output<GetDnsResolverPolicyVirtualNetworkLinkResult> getDnsResolverPolicyVirtualNetworkLinkOutput(
  GetDnsResolverPolicyVirtualNetworkLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsResolverPolicyVirtualNetworkLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDnsResolverPolicyVirtualNetworkLinkResult.fromMap);
}

/// Gets properties of a DNS security rule for a DNS resolver policy.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_dns_security_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsSecurityRuleResult> getDnsSecurityRule(
  GetDnsSecurityRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsSecurityRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsSecurityRuleResult.fromMap(result);
}

pulumi.Output<GetDnsSecurityRuleResult> getDnsSecurityRuleOutput(
  GetDnsSecurityRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getDnsSecurityRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDnsSecurityRuleResult.fromMap);
}

/// Gets properties of a forwarding rule in a DNS forwarding ruleset.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_forwarding_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetForwardingRuleResult> getForwardingRule(
  GetForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult.fromMap(result);
}

pulumi.Output<GetForwardingRuleResult> getForwardingRuleOutput(
  GetForwardingRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getForwardingRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetForwardingRuleResult.fromMap);
}

/// Gets properties of an inbound endpoint for a DNS resolver.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_inbound_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInboundEndpointResult> getInboundEndpoint(
  GetInboundEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getInboundEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundEndpointResult.fromMap(result);
}

pulumi.Output<GetInboundEndpointResult> getInboundEndpointOutput(
  GetInboundEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getInboundEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInboundEndpointResult.fromMap);
}

/// Gets properties of an outbound endpoint for a DNS resolver.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_outbound_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutboundEndpointResult> getOutboundEndpoint(
  GetOutboundEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getOutboundEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutboundEndpointResult.fromMap(result);
}

pulumi.Output<GetOutboundEndpointResult> getOutboundEndpointOutput(
  GetOutboundEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getOutboundEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOutboundEndpointResult.fromMap);
}

/// Gets properties of a virtual network link to a DNS forwarding ruleset.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_get_private_resolver_virtual_network_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateResolverVirtualNetworkLinkResult> getPrivateResolverVirtualNetworkLink(
  GetPrivateResolverVirtualNetworkLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:getPrivateResolverVirtualNetworkLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateResolverVirtualNetworkLinkResult.fromMap(result);
}

pulumi.Output<GetPrivateResolverVirtualNetworkLinkResult> getPrivateResolverVirtualNetworkLinkOutput(
  GetPrivateResolverVirtualNetworkLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:getPrivateResolverVirtualNetworkLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateResolverVirtualNetworkLinkResult.fromMap);
}

/// Lists DNS forwarding ruleset resource IDs attached to a virtual network.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_list_dns_forwarding_ruleset_by_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDnsForwardingRulesetByVirtualNetworkResult> listDnsForwardingRulesetByVirtualNetwork(
  ListDnsForwardingRulesetByVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:listDnsForwardingRulesetByVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDnsForwardingRulesetByVirtualNetworkResult.fromMap(result);
}

pulumi.Output<ListDnsForwardingRulesetByVirtualNetworkResult> listDnsForwardingRulesetByVirtualNetworkOutput(
  ListDnsForwardingRulesetByVirtualNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:listDnsForwardingRulesetByVirtualNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDnsForwardingRulesetByVirtualNetworkResult.fromMap);
}

/// Lists DNS resolver resource IDs linked to a virtual network.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_list_dns_resolver_by_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDnsResolverByVirtualNetworkResult> listDnsResolverByVirtualNetwork(
  ListDnsResolverByVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:listDnsResolverByVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDnsResolverByVirtualNetworkResult.fromMap(result);
}

pulumi.Output<ListDnsResolverByVirtualNetworkResult> listDnsResolverByVirtualNetworkOutput(
  ListDnsResolverByVirtualNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:listDnsResolverByVirtualNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDnsResolverByVirtualNetworkResult.fromMap);
}

/// Lists DNS resolver policy resource IDs linked to a virtual network.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dnsresolver_list_dns_resolver_policy_by_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDnsResolverPolicyByVirtualNetworkResult> listDnsResolverPolicyByVirtualNetwork(
  ListDnsResolverPolicyByVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dnsresolver:listDnsResolverPolicyByVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDnsResolverPolicyByVirtualNetworkResult.fromMap(result);
}

pulumi.Output<ListDnsResolverPolicyByVirtualNetworkResult> listDnsResolverPolicyByVirtualNetworkOutput(
  ListDnsResolverPolicyByVirtualNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dnsresolver:listDnsResolverPolicyByVirtualNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDnsResolverPolicyByVirtualNetworkResult.fromMap);
}
