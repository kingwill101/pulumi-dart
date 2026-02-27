import 'package:pulumi/pulumi.dart';
import 'lb_https_redirection_policy_args.dart';

/// Manages HTTPS redirection for a Lightsail Load Balancer.
///
/// Use this resource to configure automatic redirection of HTTP traffic to HTTPS on a Lightsail Load Balancer. A valid certificate must be attached to the load balancer before enabling HTTPS redirection.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.LbHttpsRedirectionPolicy` using the `lb_name` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbHttpsRedirectionPolicy:LbHttpsRedirectionPolicy example example-load-balancer
/// ```
class LbHttpsRedirectionPolicy extends CustomResource {
  /// Whether to enable HTTP to HTTPS redirection. `true` to activate HTTP to HTTPS redirection or `false` to deactivate HTTP to HTTPS redirection.
  late final Output<bool> enabled;

  /// Name of the load balancer to which you want to enable HTTP to HTTPS redirection.
  ///
  /// The following arguments are optional:
  late final Output<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LbHttpsRedirectionPolicy(
    String name, {
    LbHttpsRedirectionPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbHttpsRedirectionPolicy:LbHttpsRedirectionPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
