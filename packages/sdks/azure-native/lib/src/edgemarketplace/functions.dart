import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_offer_access_token_args.dart';
import 'get_offer_access_token_result.dart';

/// get access token.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2023-08-01-preview, 2024-10-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edgemarketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_edgemarketplace_get_offer_access_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOfferAccessTokenResult> getOfferAccessToken(
  GetOfferAccessTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:edgemarketplace:getOfferAccessToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOfferAccessTokenResult.fromMap(result);
}
