// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudFormationStack resources.
class CloudFormationStackState {
  /// The ARN of the application from the Serverless Application Repository.
  final pulumi.Input<String>? applicationId;

  /// A list of capabilities. Valid values are `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_RESOURCE_POLICY`, or `CAPABILITY_AUTO_EXPAND`
  final pulumi.Input<List<String>>? capabilities;

  /// The name of the stack to create. The resource deployed in AWS will be prefixed with `serverlessrepo-`
  final pulumi.Input<String>? name;

  /// A map of outputs from the stack.
  final pulumi.Input<Map<String, String>>? outputs;

  /// A map of Parameter structures that specify input parameters for the stack.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The version of the application to deploy. If not supplied, deploys the latest version.
  final pulumi.Input<String>? semanticVersion;

  /// A list of tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CloudFormationStackState].
  /// [applicationId] The ARN of the application from the Serverless Application Repository.
  /// [capabilities] A list of capabilities. Valid values are `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_RESOURCE_POLICY`, or `CAPABILITY_AUTO_EXPAND`
  /// [name] The name of the stack to create. The resource deployed in AWS will be prefixed with `serverlessrepo-`
  /// [outputs] A map of outputs from the stack.
  /// [parameters] A map of Parameter structures that specify input parameters for the stack.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [semanticVersion] The version of the application to deploy. If not supplied, deploys the latest version.
  /// [tags] A list of tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CloudFormationStackState({
    this.applicationId,
    this.capabilities,
    this.name,
    this.outputs,
    this.parameters,
    this.region,
    this.semanticVersion,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'capabilities': ?capabilities,
      'name': ?name,
      'outputs': ?outputs,
      'parameters': ?parameters,
      'region': ?region,
      'semanticVersion': ?semanticVersion,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CloudFormationStackState.fromMap(Map<String, dynamic> map) {
    return CloudFormationStackState(
      applicationId: (() {
        final guardedValue = map['applicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      capabilities: (() {
        final guardedValue = map['capabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputs: (() {
        final guardedValue = map['outputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      semanticVersion: (() {
        final guardedValue = map['semanticVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
