import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// ## Import
///
/// Mongodb Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/account:Account example <instance_id>:<account_name>
/// ```
class Account extends pulumi.CustomResource {
  /// Set the comment information of the account.
  /// - Cannot start with http:// or https.
  /// - Start with Chinese and English letters.
  /// - Can contain Chinese characters, English characters, underscores (_), dashes (-), and numbers, and can be 2 to 256 characters in length.
  late final pulumi.Output<String?> accountDescription;
  /// Account Name
  late final pulumi.Output<String> accountName;
  /// Account Password
  late final pulumi.Output<String> accountPassword;
  /// The account Comment Information type. Value:
  late final pulumi.Output<String> characterType;
  /// Instance Id
  late final pulumi.Output<String> instanceId;
  /// Account Status
  late final pulumi.Output<String> status;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_mongodb_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountDescription = registerOutput<String?>('accountDescription');
    this.accountName = registerOutput<String>('accountName');
    this.accountPassword = registerOutput<String>('accountPassword');
    this.characterType = registerOutput<String>('characterType');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountDescription = registerOutput<String?>('accountDescription');
    this.accountName = registerOutput<String>('accountName');
    this.accountPassword = registerOutput<String>('accountPassword');
    this.characterType = registerOutput<String>('characterType');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String>('status');
  }
}
