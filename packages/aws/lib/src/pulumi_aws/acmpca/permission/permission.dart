import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_args.dart';

/// Provides a resource to manage an AWS Certificate Manager Private Certificate Authorities Permission.
/// Currently, this is only required in order to allow the ACM service to automatically renew certificates issued by a PCA.
class Permission extends pulumi.CustomResource {
  /// Actions that the specified AWS service principal can use. These include `IssueCertificate`, `GetCertificate`, and `ListPermissions`. Note that in order for ACM to automatically rotate certificates issued by a PCA, it must be granted permission on all 3 actions, as per the example above.
  late final pulumi.Output<List<String>> actions;

  /// ARN of the CA that grants the permissions.
  late final pulumi.Output<String> certificateAuthorityArn;

  /// IAM policy that is associated with the permission.
  late final pulumi.Output<String> policy;

  /// AWS service or identity that receives the permission. At this time, the only valid principal is `acm.amazonaws.com`.
  late final pulumi.Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the calling account
  late final pulumi.Output<String> sourceAccount;

  Permission(
    String name, {
    PermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/permission:Permission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<String>>('actions');
    this.certificateAuthorityArn =
        registerOutput<String>('certificateAuthorityArn');
    this.policy = registerOutput<String>('policy');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.sourceAccount = registerOutput<String>('sourceAccount');
  }
}
