import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_registration_args.dart';

/// Resource for managing AWS Audit Manager Account Registration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Deregister On Destroy
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Account Registration resources using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/accountRegistration:AccountRegistration example us-east-1
/// ```
class AccountRegistration extends pulumi.CustomResource {
  /// Identifier for the delegated administrator account.
  late final pulumi.Output<String?> delegatedAdminAccount;

  /// Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  late final pulumi.Output<bool?> deregisterOnDestroy;

  /// KMS key identifier.
  late final pulumi.Output<String?> kmsKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of the account registration request.
  late final pulumi.Output<String> status;

  AccountRegistration(
    String name, {
    AccountRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/accountRegistration:AccountRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.delegatedAdminAccount =
        registerOutput<String?>('delegatedAdminAccount');
    this.deregisterOnDestroy = registerOutput<bool?>('deregisterOnDestroy');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
