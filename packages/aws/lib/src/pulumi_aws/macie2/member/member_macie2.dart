import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_macie2_args.dart';

/// Provides a resource to manage an [Amazon Macie Member](https://docs.aws.amazon.com/macie/latest/APIReference/members-id.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.Member` using the account ID of the member account. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/member:Member example 123456789012
/// ```
class MemberMacie2 extends pulumi.CustomResource {
  /// The AWS account ID for the account.
  late final pulumi.Output<String> accountId;

  /// The AWS account ID for the administrator account.
  late final pulumi.Output<String> administratorAccountId;

  /// The Amazon Resource Name (ARN) of the account.
  late final pulumi.Output<String> arn;

  /// The email address for the account.
  late final pulumi.Output<String> email;

  /// Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  late final pulumi.Output<bool?> invitationDisableEmailNotification;

  /// A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  late final pulumi.Output<String?> invitationMessage;

  /// Send an invitation to a member
  late final pulumi.Output<bool> invite;

  /// The date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.
  late final pulumi.Output<String> invitedAt;
  late final pulumi.Output<String> masterAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The current status of the relationship between the account and the administrator account.
  late final pulumi.Output<String> relationshipStatus;

  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  late final pulumi.Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the relationship between the account and the administrator account.
  late final pulumi.Output<String> updatedAt;

  MemberMacie2(
    String name, {
    MemberMacie2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/member:Member',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.administratorAccountId =
        registerOutput<String>('administratorAccountId');
    this.arn = registerOutput<String>('arn');
    this.email = registerOutput<String>('email');
    this.invitationDisableEmailNotification =
        registerOutput<bool?>('invitationDisableEmailNotification');
    this.invitationMessage = registerOutput<String?>('invitationMessage');
    this.invite = registerOutput<bool>('invite');
    this.invitedAt = registerOutput<String>('invitedAt');
    this.masterAccountId = registerOutput<String>('masterAccountId');
    this.region = registerOutput<String>('region');
    this.relationshipStatus = registerOutput<String>('relationshipStatus');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
