import 'package:pulumi/pulumi.dart';
import '../vault_notification/vault_notification.dart';
import 'vault_args2.dart';

/// Provides a Glacier Vault Resource. You can refer to the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-vaults.html) for a full explanation of the Glacier Vault functionality
///
/// > **NOTE:** When removing a Glacier Vault, the Vault must be empty.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glacier Vaults using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glacier/vault:Vault archive my_archive
/// ```
class Vault2 extends CustomResource {
  /// The policy document. This is a JSON formatted string.
  /// The heredoc syntax or `file` function is helpful here. Use the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html) for more information on Glacier Vault Policy
  late final Output<String?> accessPolicy;

  /// The ARN of the vault.
  late final Output<String> arn;

  /// The URI of the vault that was created.
  late final Output<String> location;

  /// The name of the Vault. Names can be between 1 and 255 characters long and the valid characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).
  late final Output<String> name;

  /// The notifications for the Vault. Fields documented below.
  late final Output<VaultNotification?> notification;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Vault2(
    String name, {
    VaultArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glacier/vault:Vault',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicy = registerOutput<String?>('accessPolicy');
    this.arn = registerOutput<String>('arn');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notification = registerOutput<VaultNotification?>('notification');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
