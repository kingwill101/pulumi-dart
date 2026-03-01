// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_traffic_policy_traffic_policy_args_doc}
/// The set of arguments for TrafficPolicy.
/// {@endtemplate}
/// {@macro pulumi_route53_traffic_policy_traffic_policy_args_doc}
class TrafficPolicyArgs {
  /// Comment for the traffic policy.
  final pulumi.Input<String>? comment;
  /// Policy document. This is a JSON formatted string. For more information about building Route53 traffic policy documents, see the [AWS Route53 Traffic Policy document format](https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> document;
  /// Name of the traffic policy.
  final pulumi.Input<String>? name;

  /// Creates a new [TrafficPolicyArgs].
  /// [comment] Comment for the traffic policy.
  /// [document] Policy document. This is a JSON formatted string. For more information about building Route53 traffic policy documents, see the [AWS Route53 Traffic Policy document format](https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html)
  /// [name] Name of the traffic policy.
  TrafficPolicyArgs({
    pulumi.Output<String>? comment,
    required pulumi.Output<String> document,
    pulumi.Output<String>? name,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      document = pulumi.Input.asInput<String>(document),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'document': document,
      'name': ?name,
    };
  }

  factory TrafficPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyArgs(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      document: pulumi.Output.create<String>(map['document'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

