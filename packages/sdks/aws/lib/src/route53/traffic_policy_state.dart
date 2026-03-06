// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficPolicy resources.
class TrafficPolicyState {
  /// Amazon Resource Name (ARN) of the traffic policy.
  final pulumi.Input<String>? arn;
  /// Comment for the traffic policy.
  final pulumi.Input<String>? comment;
  /// Policy document. This is a JSON formatted string. For more information about building Route53 traffic policy documents, see the [AWS Route53 Traffic Policy document format](https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? document;
  /// Name of the traffic policy.
  final pulumi.Input<String>? name;
  /// DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.
  final pulumi.Input<String>? type;
  /// Version number of the traffic policy. This value is automatically incremented by AWS after each update of this resource.
  final pulumi.Input<int>? version;

  /// Creates a new [TrafficPolicyState].
  /// [arn] Amazon Resource Name (ARN) of the traffic policy.
  /// [comment] Comment for the traffic policy.
  /// [document] Policy document. This is a JSON formatted string. For more information about building Route53 traffic policy documents, see the [AWS Route53 Traffic Policy document format](https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html)
  /// [name] Name of the traffic policy.
  /// [type] DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.
  /// [version] Version number of the traffic policy. This value is automatically incremented by AWS after each update of this resource.
  const TrafficPolicyState({
    this.arn,
    this.comment,
    this.document,
    this.name,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'document': ?document,
      'name': ?name,
      'type': ?type,
      'version': ?version,
    };
  }

  factory TrafficPolicyState.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      document: (() { final guardedValue = map['document']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

