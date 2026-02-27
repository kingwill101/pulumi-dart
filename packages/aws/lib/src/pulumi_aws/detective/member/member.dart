import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_args.dart';

/// Provides a resource to manage an [Amazon Detective Member](https://docs.aws.amazon.com/detective/latest/APIReference/API_CreateMembers.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.Member` using the ARN of the graph followed by the account ID of the member account. For example:
///
/// ```sh
/// $ pulumi import aws:detective/member:Member example arn:aws:detective:us-east-1:123456789101:graph:231684d34gh74g4bae1dbc7bd807d02d/123456789012
/// ```
class Member extends pulumi.CustomResource {
  /// AWS account ID for the account.
  late final pulumi.Output<String> accountId;

  /// AWS account ID for the administrator account.
  late final pulumi.Output<String> administratorId;

  /// If set to true, then the root user of the invited account will _not_ receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to `false`.
  late final pulumi.Output<bool?> disableEmailNotification;
  late final pulumi.Output<String> disabledReason;

  /// Email address for the account.
  late final pulumi.Output<String> emailAddress;

  /// ARN of the behavior graph to invite the member accounts to contribute their data to.
  late final pulumi.Output<String> graphArn;

  /// Date and time, in UTC and extended RFC 3339 format, when an Amazon Detective membership invitation was last sent to the account.
  late final pulumi.Output<String> invitedTime;

  /// A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation.
  late final pulumi.Output<String?> message;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Current membership status of the member account.
  late final pulumi.Output<String> status;

  /// Date and time, in UTC and extended RFC 3339 format, of the most recent change to the member account's status.
  late final pulumi.Output<String> updatedTime;

  /// Data volume in bytes per day for the member account.
  late final pulumi.Output<String> volumeUsageInBytes;

  Member(
    String name, {
    MemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:detective/member:Member',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.administratorId = registerOutput<String>('administratorId');
    this.disableEmailNotification =
        registerOutput<bool?>('disableEmailNotification');
    this.disabledReason = registerOutput<String>('disabledReason');
    this.emailAddress = registerOutput<String>('emailAddress');
    this.graphArn = registerOutput<String>('graphArn');
    this.invitedTime = registerOutput<String>('invitedTime');
    this.message = registerOutput<String?>('message');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.updatedTime = registerOutput<String>('updatedTime');
    this.volumeUsageInBytes = registerOutput<String>('volumeUsageInBytes');
  }
}
