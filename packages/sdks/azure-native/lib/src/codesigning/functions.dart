import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_profile_args.dart';
import 'get_certificate_profile_result.dart';
import 'get_code_signing_account_args.dart';
import 'get_code_signing_account_result.dart';

/// Get details of a certificate profile.
///
/// Uses Azure REST API version 2024-09-30-preview.
///
/// Other available API versions: 2024-02-05-preview, 2025-10-13, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native codesigning [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_codesigning_get_certificate_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateProfileResult> getCertificateProfile(
  GetCertificateProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:codesigning:getCertificateProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateProfileResult.fromMap(result);
}

/// Get an artifact Signing Account.
///
/// Uses Azure REST API version 2024-09-30-preview.
///
/// Other available API versions: 2024-02-05-preview, 2025-10-13, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native codesigning [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_codesigning_get_code_signing_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCodeSigningAccountResult> getCodeSigningAccount(
  GetCodeSigningAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:codesigning:getCodeSigningAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCodeSigningAccountResult.fromMap(result);
}
