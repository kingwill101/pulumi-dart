import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_args.dart';
import 'access_policy_entry.dart';

/// Key Vault Access Policy for managing policies on existing vaults.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:keyvault:AccessPolicy myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/accessPolicy/{policy.objectId}
/// ```
class AccessPolicy extends pulumi.CustomResource {
  /// The definition of the access policy.
  late final pulumi.Output<AccessPolicyEntry?> policy;
  /// Name of the resource group that contains the vault.
  late final pulumi.Output<String?> resourceGroupName;
  /// Name of the Key Vault.
  late final pulumi.Output<String?> vaultName;

  /// Creates a new [AccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicy]. {@macro pulumi_keyvault_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:keyvault:AccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<AccessPolicyEntry?>('policy');
    this.resourceGroupName = registerOutput<String?>('resourceGroupName');
    this.vaultName = registerOutput<String?>('vaultName');
  }
}
