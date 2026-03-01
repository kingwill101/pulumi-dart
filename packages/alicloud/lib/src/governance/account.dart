import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_account_tag.dart';
import 'account_args.dart';

/// ## Import
///
/// Governance Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:governance/account:Account example <id>
/// ```
class Account extends pulumi.CustomResource {
  /// The ID of the enrolled account.
  /// - If you are creating a new resource account, this parameter is not required.
  /// - If you are enrolling a existing account to account factory, this parameter is required.
  late final pulumi.Output<int> accountId;
  /// Account name prefix.
  /// - This parameter is required if you are creating a new resource account.
  /// - If the registration application is applied to an existing account, this parameter does not need to be filled in.
  late final pulumi.Output<String?> accountNamePrefix;
  /// The tags of the account See `account_tags` below.
  late final pulumi.Output<List<AccountAccountTag>?> accountTags;
  /// The baseline ID.
  ///
  /// If it is left blank, the system default baseline is used by default.
  late final pulumi.Output<String> baselineId;
  /// The domain name is used to qualify the login name of RAM users and RAM roles.
  late final pulumi.Output<String?> defaultDomainName;
  /// The account display name.
  /// - This parameter is required if you are creating a new resource account.
  /// - If the registration application is applied to an existing account, this parameter does not need to be filled in.
  late final pulumi.Output<String?> displayName;
  /// The ID of the parent resource folder.
  ///
  /// If you want to create a new resource account and leave this parameter blank, the account is created in the Root folder by default.
  ///
  /// If the registration application is applied to an existing account, this parameter does not need to be filled in.
  late final pulumi.Output<String?> folderId;
  /// The ID of the billing account. If you leave this parameter empty, the current account is used as the billing account.
  late final pulumi.Output<int?> payerAccountId;
  /// Account registration status. Value:
  late final pulumi.Output<String> status;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_governance_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:governance/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<int>('accountId');
    this.accountNamePrefix = registerOutput<String?>('accountNamePrefix');
    this.accountTags = registerOutput<List<AccountAccountTag>?>('accountTags');
    this.baselineId = registerOutput<String>('baselineId');
    this.defaultDomainName = registerOutput<String?>('defaultDomainName');
    this.displayName = registerOutput<String?>('displayName');
    this.folderId = registerOutput<String?>('folderId');
    this.payerAccountId = registerOutput<int?>('payerAccountId');
    this.status = registerOutput<String>('status');
  }
}
