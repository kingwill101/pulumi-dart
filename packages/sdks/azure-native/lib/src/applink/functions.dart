import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_link_args.dart';
import 'get_app_link_member_args.dart';
import 'get_app_link_member_result.dart';
import 'get_app_link_result.dart';

/// Get an AppLink.
///
/// Uses Azure REST API version 2025-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_applink_get_app_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppLinkResult> getAppLink(
  GetAppLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applink:getAppLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppLinkResult.fromMap(result);
}

pulumi.Output<GetAppLinkResult> getAppLinkOutput(
  GetAppLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:applink:getAppLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppLinkResult.fromMap);
}

/// Get an AppLinkMember.
///
/// Uses Azure REST API version 2025-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_applink_get_app_link_member_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppLinkMemberResult> getAppLinkMember(
  GetAppLinkMemberArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applink:getAppLinkMember',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppLinkMemberResult.fromMap(result);
}

pulumi.Output<GetAppLinkMemberResult> getAppLinkMemberOutput(
  GetAppLinkMemberArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:applink:getAppLinkMember',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppLinkMemberResult.fromMap);
}
