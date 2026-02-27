import 'package:pulumi/pulumi.dart' as pulumi;
import '../drt_access_role_arn_association_timeouts/drt_access_role_arn_association_timeouts.dart';
import 'drt_access_role_arn_association_args.dart';

/// Authorizes the Shield Response Team (SRT) using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks.
/// For more information see [Configure AWS SRT Support](https://docs.aws.amazon.com/waf/latest/developerguide/authorize-srt.html)
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield DRT access role ARN association using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:shield/drtAccessRoleArnAssociation:DrtAccessRoleArnAssociation example 123456789012
/// ```
class DrtAccessRoleArnAssociation extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the role the SRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the `AWSShieldDRTAccessPolicy` managed policy to this role.
  late final pulumi.Output<String> roleArn;
  late final pulumi.Output<DrtAccessRoleArnAssociationTimeouts?> timeouts;

  DrtAccessRoleArnAssociation(
    String name, {
    DrtAccessRoleArnAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/drtAccessRoleArnAssociation:DrtAccessRoleArnAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.roleArn = registerOutput<String>('roleArn');
    this.timeouts =
        registerOutput<DrtAccessRoleArnAssociationTimeouts?>('timeouts');
  }
}
