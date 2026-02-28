import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_appengine_v1beta_args.dart';
import 'get_app_appengine_v1beta_result.dart';
import 'get_app_args.dart';
import 'get_app_result.dart';
import 'get_authorized_certificate_appengine_v1alpha_args.dart';
import 'get_authorized_certificate_appengine_v1alpha_result.dart';
import 'get_authorized_certificate_appengine_v1beta_args.dart';
import 'get_authorized_certificate_appengine_v1beta_result.dart';
import 'get_authorized_certificate_args.dart';
import 'get_authorized_certificate_result.dart';
import 'get_domain_mapping_appengine_v1alpha_args.dart';
import 'get_domain_mapping_appengine_v1alpha_result.dart';
import 'get_domain_mapping_appengine_v1beta_args.dart';
import 'get_domain_mapping_appengine_v1beta_result.dart';
import 'get_domain_mapping_args.dart';
import 'get_domain_mapping_result.dart';
import 'get_ingress_rule_appengine_v1beta_args.dart';
import 'get_ingress_rule_appengine_v1beta_result.dart';
import 'get_ingress_rule_args.dart';
import 'get_ingress_rule_result.dart';
import 'get_version_appengine_v1beta_args.dart';
import 'get_version_appengine_v1beta_result.dart';
import 'get_version_args.dart';
import 'get_version_result.dart';

/// Gets information about an application.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppResult> getApp(
  GetAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppResult.fromMap(result);
}

/// Gets the specified SSL certificate.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_authorized_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedCertificateResult> getAuthorizedCertificate(
  GetAuthorizedCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getAuthorizedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateResult.fromMap(result);
}

/// Gets the specified domain mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_domain_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainMappingResult> getDomainMapping(
  GetDomainMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingResult.fromMap(result);
}

/// Gets the specified firewall rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_ingress_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIngressRuleResult> getIngressRule(
  GetIngressRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getIngressRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIngressRuleResult.fromMap(result);
}

/// Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}

/// Gets the specified SSL certificate.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1alpha_get_authorized_certificate_appengine_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedCertificateAppengineV1alphaResult>
    getAuthorizedCertificateAppengineV1alpha(
  GetAuthorizedCertificateAppengineV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getAuthorizedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateAppengineV1alphaResult.fromMap(result);
}

/// Gets the specified domain mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1alpha_get_domain_mapping_appengine_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainMappingAppengineV1alphaResult> getDomainMappingAppengineV1alpha(
  GetDomainMappingAppengineV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingAppengineV1alphaResult.fromMap(result);
}

/// Gets information about an application.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_app_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppAppengineV1betaResult> getAppAppengineV1beta(
  GetAppAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppAppengineV1betaResult.fromMap(result);
}

/// Gets the specified SSL certificate.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_authorized_certificate_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedCertificateAppengineV1betaResult>
    getAuthorizedCertificateAppengineV1beta(
  GetAuthorizedCertificateAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getAuthorizedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateAppengineV1betaResult.fromMap(result);
}

/// Gets the specified domain mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_domain_mapping_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainMappingAppengineV1betaResult> getDomainMappingAppengineV1beta(
  GetDomainMappingAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingAppengineV1betaResult.fromMap(result);
}

/// Gets the specified firewall rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_ingress_rule_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIngressRuleAppengineV1betaResult> getIngressRuleAppengineV1beta(
  GetIngressRuleAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getIngressRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIngressRuleAppengineV1betaResult.fromMap(result);
}

/// Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_version_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionAppengineV1betaResult> getVersionAppengineV1beta(
  GetVersionAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionAppengineV1betaResult.fromMap(result);
}
