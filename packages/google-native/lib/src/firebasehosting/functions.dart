import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_channel_args.dart';
import 'get_channel_result.dart';
import 'get_custom_domain_args.dart';
import 'get_custom_domain_result.dart';
import 'get_domain_args.dart';
import 'get_domain_result.dart';
import 'get_release_args.dart';
import 'get_release_result.dart';
import 'get_site_args.dart';
import 'get_site_result.dart';
import 'get_version_args.dart';
import 'get_version_result.dart';

/// Retrieves information for the specified channel of the specified site.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebasehosting_v1beta1_get_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelResult> getChannel(
  GetChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelResult.fromMap(result);
}

/// Gets the specified `CustomDomain`.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebasehosting_v1beta1_get_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomDomainResult> getCustomDomain(
  GetCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomDomainResult.fromMap(result);
}

/// Gets a domain mapping on the specified site.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebasehosting_v1beta1_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Gets the specified release for a site or channel. When used to get a release for a site, this can get releases for both the default `live` channel and any active preview channels for the specified site.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebasehosting_v1beta1_get_release_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReleaseResult> getRelease(
  GetReleaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getRelease',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseResult.fromMap(result);
}

/// Gets the specified Hosting Site.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebasehosting_v1beta1_get_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteResult> getSite(
  GetSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteResult.fromMap(result);
}

/// Get the specified version that has been created for the specified site. This can include versions that were created for the default `live` channel or for any active preview channels for the specified site.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebasehosting_v1beta1_get_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}
