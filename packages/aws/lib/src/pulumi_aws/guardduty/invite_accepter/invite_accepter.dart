import 'package:pulumi/pulumi.dart' as pulumi;
import 'invite_accepter_args.dart';

/// Provides a resource to accept a pending GuardDuty invite on creation, ensure the detector has the correct primary account on read, and disassociate with the primary account upon removal.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.guardduty.InviteAccepter` using the member GuardDuty detector ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/inviteAccepter:InviteAccepter member 00b00fd5aecc0ab60a708659477e9617
/// ```
class InviteAccepter extends pulumi.CustomResource {
  /// The detector ID of the member GuardDuty account.
  late final pulumi.Output<String> detectorId;

  /// AWS account ID for primary account.
  late final pulumi.Output<String> masterAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  InviteAccepter(
    String name, {
    InviteAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/inviteAccepter:InviteAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.detectorId = registerOutput<String>('detectorId');
    this.masterAccountId = registerOutput<String>('masterAccountId');
    this.region = registerOutput<String>('region');
  }
}
