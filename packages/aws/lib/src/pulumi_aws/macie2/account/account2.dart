import 'package:pulumi/pulumi.dart';
import 'account_args2.dart';

/// Provides a resource to manage an [AWS Macie Account](https://docs.aws.amazon.com/macie/latest/APIReference/macie.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.Account` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/account:Account example abcd1
/// ```
class Account2 extends CustomResource {
  /// The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created.
  late final Output<String> createdAt;

  /// Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values are `FIFTEEN_MINUTES`, `ONE_HOUR` or `SIX_HOURS`.
  late final Output<String> findingPublishingFrequency;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the service-linked role that allows Macie to monitor and analyze data in AWS resources for the account.
  late final Output<String> serviceRole;

  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  late final Output<String> status;

  /// The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the Macie account.
  late final Output<String> updatedAt;

  Account2(
    String name, {
    AccountArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie2/account:Account',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.findingPublishingFrequency =
        registerOutput<String>('findingPublishingFrequency');
    this.region = registerOutput<String>('region');
    this.serviceRole = registerOutput<String>('serviceRole');
    this.status = registerOutput<String>('status');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
