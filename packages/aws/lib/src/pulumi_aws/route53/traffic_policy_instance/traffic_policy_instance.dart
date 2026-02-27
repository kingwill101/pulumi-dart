import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_instance_args.dart';

/// Provides a Route53 traffic policy instance resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 traffic policy instance using its id. For example:
///
/// ```sh
/// $ pulumi import aws:route53/trafficPolicyInstance:TrafficPolicyInstance test df579d9a-6396-410e-ac22-e7ad60cf9e7e
/// ```
class TrafficPolicyInstance extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the traffic policy instance.
  late final pulumi.Output<String> arn;

  /// ID of the hosted zone that you want Amazon Route 53 to create resource record sets in by using the configuration in a traffic policy.
  late final pulumi.Output<String> hostedZoneId;

  /// Domain name for which Amazon Route 53 responds to DNS queries by using the resource record sets that Route 53 creates for this traffic policy instance.
  late final pulumi.Output<String> name;

  /// ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.
  late final pulumi.Output<String> trafficPolicyId;

  /// Version of the traffic policy
  late final pulumi.Output<int> trafficPolicyVersion;

  /// TTL that you want Amazon Route 53 to assign to all the resource record sets that it creates in the specified hosted zone.
  late final pulumi.Output<int> ttl;

  TrafficPolicyInstance(
    String name, {
    TrafficPolicyInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/trafficPolicyInstance:TrafficPolicyInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.name = registerOutput<String>('name');
    this.trafficPolicyId = registerOutput<String>('trafficPolicyId');
    this.trafficPolicyVersion = registerOutput<int>('trafficPolicyVersion');
    this.ttl = registerOutput<int>('ttl');
  }
}
