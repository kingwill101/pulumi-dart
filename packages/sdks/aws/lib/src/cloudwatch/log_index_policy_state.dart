// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogIndexPolicy resources.
class LogIndexPolicyState {
  /// Log group name to set the policy for.
  final pulumi.Input<String>? logGroupName;
  /// JSON policy document. This is a JSON formatted string.
  final pulumi.Input<String>? policyDocument;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogIndexPolicyState].
  /// [logGroupName] Log group name to set the policy for.
  /// [policyDocument] JSON policy document. This is a JSON formatted string.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogIndexPolicyState({
    pulumi.Output<String>? logGroupName,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<String>? region,
  }) :
      logGroupName = pulumi.Input.asOptionalInput<String>(logGroupName),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': ?logGroupName,
      'policyDocument': ?policyDocument,
      'region': ?region,
    };
  }

  factory LogIndexPolicyState.fromMap(Map<String, dynamic> map) {
    return LogIndexPolicyState(
      logGroupName: map['logGroupName'] == null ? null : pulumi.Output.create<String>(map['logGroupName'] as String),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

