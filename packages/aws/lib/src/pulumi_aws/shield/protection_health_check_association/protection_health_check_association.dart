import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_health_check_association_args.dart';

/// Creates an association between a Route53 Health Check and a Shield Advanced protected resource.
/// This association uses the health of your applications to improve responsiveness and accuracy in attack detection and mitigation.
///
/// Blog post: [AWS Shield Advanced now supports Health Based Detection](https://aws.amazon.com/about-aws/whats-new/2020/02/aws-shield-advanced-now-supports-health-based-detection/)
///
/// ## Example Usage
///
/// ### Create an association between a protected EIP and a Route53 Health Check
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield protection health check association resources using the `shield_protection_id` and `health_check_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:shield/protectionHealthCheckAssociation:ProtectionHealthCheckAssociation example ff9592dc-22f3-4e88-afa1-7b29fde9669a+arn:aws:route53:::healthcheck/3742b175-edb9-46bc-9359-f53e3b794b1b
/// ```
class ProtectionHealthCheckAssociation extends pulumi.CustomResource {
  /// The ARN (Amazon Resource Name) of the Route53 Health Check resource which will be associated to the protected resource.
  late final pulumi.Output<String> healthCheckArn;

  /// The ID of the protected resource.
  late final pulumi.Output<String> shieldProtectionId;

  ProtectionHealthCheckAssociation(
    String name, {
    ProtectionHealthCheckAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/protectionHealthCheckAssociation:ProtectionHealthCheckAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.healthCheckArn = registerOutput<String>('healthCheckArn');
    this.shieldProtectionId = registerOutput<String>('shieldProtectionId');
  }
}
