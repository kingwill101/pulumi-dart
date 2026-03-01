import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_alias_args.dart';

/// ## Import
///
/// RAM Account Alias can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/accountAlias:AccountAlias example <id>
/// ```
class AccountAlias extends pulumi.CustomResource {
  /// The alias of the account.
  /// It can be 3 to 32 characters in length and can contain lowercase letters, digits, and dashes (-).
  late final pulumi.Output<String> accountAlias;

  /// Creates a new [AccountAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountAlias]. {@macro pulumi_ram_account_alias_account_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountAlias(
    String name, {
    AccountAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/accountAlias:AccountAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountAlias = registerOutput<String>('accountAlias');
  }
}
