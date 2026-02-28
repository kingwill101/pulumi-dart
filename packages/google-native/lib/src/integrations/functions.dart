import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auth_config_args.dart';
import 'get_auth_config_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_sfdc_channel_args.dart';
import 'get_sfdc_channel_result.dart';
import 'get_sfdc_instance_args.dart';
import 'get_sfdc_instance_result.dart';
import 'get_templates_version_args.dart';
import 'get_templates_version_result.dart';
import 'get_test_case_args.dart';
import 'get_test_case_result.dart';
import 'get_version_args.dart';
import 'get_version_result.dart';

/// Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND exception will be thrown. Returns the decrypted auth config.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrations_v1alpha_get_auth_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthConfigResult> getAuthConfig(
  GetAuthConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getAuthConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthConfigResult.fromMap(result);
}

/// Get a certificates in the specified project.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrations_v1alpha_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception will be thrown.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrations_v1alpha_get_sfdc_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSfdcChannelResult> getSfdcChannel(
  GetSfdcChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getSfdcChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSfdcChannelResult.fromMap(result);
}

/// Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception will be thrown.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrations_v1alpha_get_sfdc_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSfdcInstanceResult> getSfdcInstance(
  GetSfdcInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getSfdcInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSfdcInstanceResult.fromMap(result);
}

/// Returns an IntegrationTemplateVersion in the specified project.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrations_v1alpha_get_templates_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplatesVersionResult> getTemplatesVersion(
  GetTemplatesVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getTemplatesVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplatesVersionResult.fromMap(result);
}

/// Get a test case
/// [args] Arguments passed to this invoke. {@macro pulumi_integrations_v1alpha_get_test_case_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestCaseResult> getTestCase(
  GetTestCaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getTestCase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestCaseResult.fromMap(result);
}

/// Get a integration in the specified project.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrations_v1alpha_get_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}
