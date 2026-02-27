import 'package:pulumi/pulumi.dart';
import 'admin_account_args.dart';

/// Provides a resource to associate/disassociate an AWS Firewall Manager administrator account. This operation must be performed in the `us-east-1` region.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Firewall Manager administrator account association using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:fms/adminAccount:AdminAccount example 123456789012
/// ```
class AdminAccount extends CustomResource {
  /// The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. Defaults to the current account. Must be configured to perform drift detection.
  late final Output<String> accountId;

  AdminAccount(
    String name, {
    AdminAccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fms/adminAccount:AdminAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
  }
}
