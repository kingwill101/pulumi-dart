import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_args.dart';

/// Manages a Lightsail load balancer resource.
///
/// Use this resource to distribute incoming traffic across multiple Lightsail instances to improve application availability and performance.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.Lb` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lb:Lb example example-load-balancer
/// ```
class Lb extends pulumi.CustomResource {
  /// ARN of the Lightsail load balancer.
  late final pulumi.Output<String> arn;

  /// Timestamp when the load balancer was created.
  late final pulumi.Output<String> createdAt;

  /// DNS name of the load balancer.
  late final pulumi.Output<String> dnsName;

  /// Health check path of the load balancer. Default value `/`.
  late final pulumi.Output<String?> healthCheckPath;

  /// Instance port the load balancer will connect to.
  late final pulumi.Output<int> instancePort;

  /// IP address type of the load balancer. Valid values: `dualstack`, `ipv4`. Default value `dualstack`.
  late final pulumi.Output<String?> ipAddressType;

  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Protocol of the load balancer.
  late final pulumi.Output<String> protocol;

  /// Public ports of the load balancer.
  late final pulumi.Output<List<int>> publicPorts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Support code for the load balancer. Include this code in your email to support when you have questions about a load balancer in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  late final pulumi.Output<String> supportCode;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Lb(
    String name, {
    LbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lb:Lb',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.dnsName = registerOutput<String>('dnsName');
    this.healthCheckPath = registerOutput<String?>('healthCheckPath');
    this.instancePort = registerOutput<int>('instancePort');
    this.ipAddressType = registerOutput<String?>('ipAddressType');
    this.name = registerOutput<String>('name');
    this.protocol = registerOutput<String>('protocol');
    this.publicPorts = registerOutput<List<int>>('publicPorts');
    this.region = registerOutput<String>('region');
    this.supportCode = registerOutput<String>('supportCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
