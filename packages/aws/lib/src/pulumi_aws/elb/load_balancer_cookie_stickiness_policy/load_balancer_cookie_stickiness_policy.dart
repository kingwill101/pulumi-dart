import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_cookie_stickiness_policy_args.dart';

/// Provides a load balancer cookie stickiness policy, which allows an ELB to control the sticky session lifetime of the browser.
class LoadBalancerCookieStickinessPolicy extends pulumi.CustomResource {
  /// The time period after which
  /// the session cookie should be considered stale, expressed in seconds.
  late final pulumi.Output<int?> cookieExpirationPeriod;

  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  late final pulumi.Output<int> lbPort;

  /// The load balancer to which the policy
  /// should be attached.
  late final pulumi.Output<String> loadBalancer;

  /// The name of the stickiness policy.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LoadBalancerCookieStickinessPolicy(
    String name, {
    LoadBalancerCookieStickinessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/loadBalancerCookieStickinessPolicy:LoadBalancerCookieStickinessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cookieExpirationPeriod =
        registerOutput<int?>('cookieExpirationPeriod');
    this.lbPort = registerOutput<int>('lbPort');
    this.loadBalancer = registerOutput<String>('loadBalancer');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
