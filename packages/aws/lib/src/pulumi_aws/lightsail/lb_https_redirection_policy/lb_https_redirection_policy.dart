import 'package:pulumi/pulumi.dart' as pulumi;
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
class LbHttpsRedirectionPolicy extends pulumi.CustomResource {
  /// Whether to enable HTTP to HTTPS redirection. `true` to activate HTTP to HTTPS redirection or `false` to deactivate HTTP to HTTPS redirection.
  late final pulumi.Output<bool> enabled;

  /// Name of the load balancer to which you want to enable HTTP to HTTPS redirection.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LbHttpsRedirectionPolicy(
    String name, {
    LbHttpsRedirectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbHttpsRedirectionPolicy:LbHttpsRedirectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
