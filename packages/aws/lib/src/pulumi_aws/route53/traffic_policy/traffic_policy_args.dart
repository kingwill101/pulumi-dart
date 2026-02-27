// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TrafficPolicy.
class TrafficPolicyArgs {
  /// Comment for the traffic policy.
  final pulumi.Input<String>? comment;

  /// Policy document. This is a JSON formatted string. For more information about building Route53 traffic policy documents, see the [AWS Route53 Traffic Policy document format](https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> document;

  /// Name of the traffic policy.
  final pulumi.Input<String>? name;

  TrafficPolicyArgs({
    this.comment,
    required this.document,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['document'] = document;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory TrafficPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyArgs(
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      document: pulumi.Input.asInput<String>(map['document']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
