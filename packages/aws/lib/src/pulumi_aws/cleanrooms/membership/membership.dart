import 'package:pulumi/pulumi.dart';
import '../membership_default_result_configuration/membership_default_result_configuration.dart';
import '../membership_payment_configuration/membership_payment_configuration.dart';
import 'membership_args.dart';

/// Provides a AWS Clean Rooms membership. Memberships are used to join a Clean Rooms collaboration by the invited member.
///
/// ## Example Usage
///
/// ### Membership with tags
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.cleanrooms.Membership` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cleanrooms/membership:Membership membership 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class Membership extends CustomResource {
  /// The ARN of the membership.
  late final Output<String> arn;

  /// The ARN of the joined collaboration.
  late final Output<String> collaborationArn;

  /// The account ID of the collaboration's creator.
  late final Output<String> collaborationCreatorAccountId;

  /// The display name of the collaboration's creator.
  late final Output<String> collaborationCreatorDisplayName;

  /// The ID of the collaboration to which the member was invited.
  late final Output<String> collaborationId;

  /// The name of the joined collaboration.
  late final Output<String> collaborationName;

  /// The date and time the membership was created.
  late final Output<String> createTime;

  /// The default configuration for a query result.
  late final Output<MembershipDefaultResultConfiguration?>
      defaultResultConfiguration;

  /// The list of abilities for the invited member.
  late final Output<List<String>> memberAbilities;
  late final Output<MembershipPaymentConfiguration?> paymentConfiguration;

  /// An indicator as to whether query logging has been enabled or disabled for the membership.
  late final Output<String> queryLogStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of the membership.
  late final Output<String> status;

  /// Key value pairs which tag the membership.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The date and time the membership was last updated.
  late final Output<String> updateTime;

  Membership(
    String name, {
    MembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cleanrooms/membership:Membership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.collaborationArn = registerOutput<String>('collaborationArn');
    this.collaborationCreatorAccountId =
        registerOutput<String>('collaborationCreatorAccountId');
    this.collaborationCreatorDisplayName =
        registerOutput<String>('collaborationCreatorDisplayName');
    this.collaborationId = registerOutput<String>('collaborationId');
    this.collaborationName = registerOutput<String>('collaborationName');
    this.createTime = registerOutput<String>('createTime');
    this.defaultResultConfiguration =
        registerOutput<MembershipDefaultResultConfiguration?>(
            'defaultResultConfiguration');
    this.memberAbilities = registerOutput<List<String>>('memberAbilities');
    this.paymentConfiguration =
        registerOutput<MembershipPaymentConfiguration?>('paymentConfiguration');
    this.queryLogStatus = registerOutput<String>('queryLogStatus');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
