import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_securityhub_args.dart';

/// Provides a Security Hub member resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub members using their account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/member:Member example 123456789012
/// ```
class MemberSecurityhub extends pulumi.CustomResource {
  /// The ID of the member AWS account.
  late final pulumi.Output<String> accountId;

  /// The email of the member AWS account.
  late final pulumi.Output<String?> email;

  /// Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  late final pulumi.Output<bool?> invite;

  /// The ID of the master Security Hub AWS account.
  late final pulumi.Output<String> masterId;

  /// The status of the member account relationship.
  late final pulumi.Output<String> memberStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  MemberSecurityhub(
    String name, {
    MemberSecurityhubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/member:Member',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.email = registerOutput<String?>('email');
    this.invite = registerOutput<bool?>('invite');
    this.masterId = registerOutput<String>('masterId');
    this.memberStatus = registerOutput<String>('memberStatus');
    this.region = registerOutput<String>('region');
  }
}
