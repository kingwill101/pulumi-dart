import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scan_config_args.dart';
import 'get_scan_config_result.dart';
import 'get_scan_config_websecurityscanner_v1alpha_args.dart';
import 'get_scan_config_websecurityscanner_v1alpha_result.dart';
import 'get_scan_config_websecurityscanner_v1beta_args.dart';
import 'get_scan_config_websecurityscanner_v1beta_result.dart';

/// Gets a ScanConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_websecurityscanner_v1_get_scan_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScanConfigResult> getScanConfig(
  GetScanConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1:getScanConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScanConfigResult.fromMap(result);
}

/// Gets a ScanConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_websecurityscanner_v1alpha_get_scan_config_websecurityscanner_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScanConfigWebsecurityscannerV1alphaResult>
    getScanConfigWebsecurityscannerV1alpha(
  GetScanConfigWebsecurityscannerV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1alpha:getScanConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScanConfigWebsecurityscannerV1alphaResult.fromMap(result);
}

/// Gets a ScanConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_websecurityscanner_v1beta_get_scan_config_websecurityscanner_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScanConfigWebsecurityscannerV1betaResult>
    getScanConfigWebsecurityscannerV1beta(
  GetScanConfigWebsecurityscannerV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1beta:getScanConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScanConfigWebsecurityscannerV1betaResult.fromMap(result);
}
