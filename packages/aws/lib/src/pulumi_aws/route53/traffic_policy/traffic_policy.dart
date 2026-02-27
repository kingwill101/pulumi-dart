import 'package:pulumi/pulumi.dart';
import 'traffic_policy_args.dart';

/// Manages a Route53 Traffic Policy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Traffic Policy using the `id` and `version`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/trafficPolicy:TrafficPolicy example 01a52019-d16f-422a-ae72-c306d2b6df7e/1
/// ```
class TrafficPolicy extends CustomResource {
  /// Amazon Resource Name (ARN) of the traffic policy.
  late final Output<String> arn;

  /// Comment for the traffic policy.
  late final Output<String?> comment;

  /// Policy document. This is a JSON formatted string. For more information about building Route53 traffic policy documents, see the [AWS Route53 Traffic Policy document format](https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html)
  ///
  /// The following arguments are optional:
  late final Output<String> document;

  /// Name of the traffic policy.
  late final Output<String> name;

  /// DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.
  late final Output<String> type;

  /// Version number of the traffic policy. This value is automatically incremented by AWS after each update of this resource.
  late final Output<int> version;

  TrafficPolicy(
    String name, {
    TrafficPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/trafficPolicy:TrafficPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.document = registerOutput<String>('document');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<int>('version');
  }
}
