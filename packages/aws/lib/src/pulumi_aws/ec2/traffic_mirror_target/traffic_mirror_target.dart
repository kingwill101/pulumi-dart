import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_target_args.dart';

/// Provides a Traffic mirror target.
/// Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring
///
/// ## Example Usage
///
/// To create a basic traffic mirror session
///
///
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror targets using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorTarget:TrafficMirrorTarget target tmt-0c13a005422b86606
/// ```
class TrafficMirrorTarget extends pulumi.CustomResource {
  /// The ARN of the traffic mirror target.
  late final pulumi.Output<String> arn;

  /// A description of the traffic mirror session.
  late final pulumi.Output<String?> description;

  /// The VPC Endpoint Id of the Gateway Load Balancer that is associated with the target.
  late final pulumi.Output<String?> gatewayLoadBalancerEndpointId;

  /// The network interface ID that is associated with the target.
  late final pulumi.Output<String?> networkInterfaceId;

  /// The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  late final pulumi.Output<String?> networkLoadBalancerArn;

  /// The ID of the AWS account that owns the traffic mirror target.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** Either `network_interface_id` or `network_load_balancer_arn` should be specified and both should not be specified together
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  TrafficMirrorTarget(
    String name, {
    TrafficMirrorTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorTarget:TrafficMirrorTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.gatewayLoadBalancerEndpointId =
        registerOutput<String?>('gatewayLoadBalancerEndpointId');
    this.networkInterfaceId = registerOutput<String?>('networkInterfaceId');
    this.networkLoadBalancerArn =
        registerOutput<String?>('networkLoadBalancerArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
