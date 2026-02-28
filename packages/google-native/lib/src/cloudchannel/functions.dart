import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_channel_partner_link_args.dart';
import 'get_channel_partner_link_result.dart';
import 'get_channel_partner_repricing_config_args.dart';
import 'get_channel_partner_repricing_config_result.dart';
import 'get_customer_args.dart';
import 'get_customer_repricing_config_args.dart';
import 'get_customer_repricing_config_result.dart';
import 'get_customer_result.dart';
import 'get_entitlement_args.dart';
import 'get_entitlement_result.dart';

/// Returns the requested ChannelPartnerLink resource. You must be a distributor to call this method. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: ChannelPartnerLink resource not found because of an invalid channel partner link name. Return value: The ChannelPartnerLink resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudchannel_v1_get_channel_partner_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelPartnerLinkResult> getChannelPartnerLink(
  GetChannelPartnerLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getChannelPartnerLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelPartnerLinkResult.fromMap(result);
}

/// Gets information about how a Distributor modifies their bill before sending it to a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * NOT_FOUND: The ChannelPartnerRepricingConfig was not found. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the ChannelPartnerRepricingConfig resource, otherwise returns an error.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudchannel_v1_get_channel_partner_repricing_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelPartnerRepricingConfigResult> getChannelPartnerRepricingConfig(
  GetChannelPartnerRepricingConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getChannelPartnerRepricingConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelPartnerRepricingConfigResult.fromMap(result);
}

/// Returns the requested Customer resource. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer resource doesn't exist. Usually the result of an invalid name parameter. Return value: The Customer resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudchannel_v1_get_customer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomerResult> getCustomer(
  GetCustomerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getCustomer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomerResult.fromMap(result);
}

/// Gets information about how a Reseller modifies their bill before sending it to a Customer. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * NOT_FOUND: The CustomerRepricingConfig was not found. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the CustomerRepricingConfig resource, otherwise returns an error.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudchannel_v1_get_customer_repricing_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomerRepricingConfigResult> getCustomerRepricingConfig(
  GetCustomerRepricingConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getCustomerRepricingConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomerRepricingConfigResult.fromMap(result);
}

/// Returns the requested Entitlement resource. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer entitlement was not found. Return value: The requested Entitlement resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudchannel_v1_get_entitlement_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntitlementResult> getEntitlement(
  GetEntitlementArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getEntitlement',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntitlementResult.fromMap(result);
}
