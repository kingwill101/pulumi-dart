import 'package:pulumi/pulumi.dart';
import 'member_args4.dart';

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
class Member4 extends CustomResource {
  /// The ID of the member AWS account.
  late final Output<String> accountId;

  /// The email of the member AWS account.
  late final Output<String?> email;

  /// Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  late final Output<bool?> invite;

  /// The ID of the master Security Hub AWS account.
  late final Output<String> masterId;

  /// The status of the member account relationship.
  late final Output<String> memberStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Member4(
    String name, {
    MemberArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/member:Member',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.email = registerOutput<String?>('email');
    this.invite = registerOutput<bool?>('invite');
    this.masterId = registerOutput<String>('masterId');
    this.memberStatus = registerOutput<String>('memberStatus');
    this.region = registerOutput<String>('region');
  }
}
