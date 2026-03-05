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
    this.comment,
    required this.document,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'document': document,
      'name': ?name,
    };
  }

  factory TrafficPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      document: pulumi.Input.fromValue(map['document'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

