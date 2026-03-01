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
  TrafficPolicyState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? document,
    pulumi.Output<String>? name,
    pulumi.Output<String>? type,
    pulumi.Output<int>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      document = pulumi.Input.asOptionalInput<String>(document),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asOptionalInput<String>(type),
      version = pulumi.Input.asOptionalInput<int>(version);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      document: map['document'] == null ? null : pulumi.Output.create<String>(map['document'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

