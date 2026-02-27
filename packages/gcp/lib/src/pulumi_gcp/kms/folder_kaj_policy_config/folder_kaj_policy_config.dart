import 'package:pulumi/pulumi.dart' as pulumi;
import '../folder_kaj_policy_config_default_key_access_justification_policy/folder_kaj_policy_config_default_key_access_justification_policy.dart';
import 'folder_kaj_policy_config_args.dart';

/// ## Example Usage
///
/// ### Kms Folder Kaj Policy Config Basic
///
///
///
///
/// ## Import
///
/// FolderKajPolicyConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/kajPolicyConfig`
///
/// * `{{folder}}`
///
/// When using the `pulumi import` command, FolderKajPolicyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig default folders/{{folder}}/kajPolicyConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig default {{folder}}
/// ```
class FolderKajPolicyConfig extends pulumi.CustomResource {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this folder. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  late final pulumi
      .Output<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?>
      defaultKeyAccessJustificationPolicy;

  /// The numeric folder number for which to retrieve config.
  late final pulumi.Output<String> folder;

  FolderKajPolicyConfig(
    String name, {
    FolderKajPolicyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultKeyAccessJustificationPolicy = registerOutput<
            FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?>(
        'defaultKeyAccessJustificationPolicy');
    this.folder = registerOutput<String>('folder');
  }
}
