import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_federated_identity_credential_args.dart';
import 'get_federated_identity_credential_result.dart';
import 'get_user_assigned_identity_args.dart';
import 'get_user_assigned_identity_result.dart';

/// Gets the federated identity credential.
///
/// Uses Azure REST API version 2023-01-31.
///
/// Other available API versions: 2022-01-31-preview, 2023-07-31-preview, 2024-11-30, 2025-01-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managedidentity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentity_get_federated_identity_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFederatedIdentityCredentialResult> getFederatedIdentityCredential(
  GetFederatedIdentityCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managedidentity:getFederatedIdentityCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederatedIdentityCredentialResult.fromMap(result);
}

/// Gets the identity.
///
/// Uses Azure REST API version 2023-01-31.
///
/// Other available API versions: 2022-01-31-preview, 2023-07-31-preview, 2024-11-30, 2025-01-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managedidentity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentity_get_user_assigned_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserAssignedIdentityResult> getUserAssignedIdentity(
  GetUserAssignedIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managedidentity:getUserAssignedIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserAssignedIdentityResult.fromMap(result);
}
