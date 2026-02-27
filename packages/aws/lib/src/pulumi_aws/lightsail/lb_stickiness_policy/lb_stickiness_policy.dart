import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_stickiness_policy_args.dart';

/// Manages session stickiness for a Lightsail Load Balancer.
///
/// Use this resource to configure session stickiness to ensure that user sessions are consistently routed to the same backend instance. This helps maintain session state for applications that store session data locally on the server.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.LbStickinessPolicy` using the `lb_name` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbStickinessPolicy:LbStickinessPolicy example example-load-balancer
/// ```
class LbStickinessPolicy extends pulumi.CustomResource {
  /// Cookie duration in seconds. This determines the length of the session stickiness.
  late final pulumi.Output<int> cookieDuration;

  /// Whether to enable session stickiness for the load balancer.
  late final pulumi.Output<bool> enabled;

  /// Name of the load balancer to which you want to enable session stickiness.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LbStickinessPolicy(
    String name, {
    LbStickinessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbStickinessPolicy:LbStickinessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cookieDuration = registerOutput<int>('cookieDuration');
    this.enabled = registerOutput<bool>('enabled');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
