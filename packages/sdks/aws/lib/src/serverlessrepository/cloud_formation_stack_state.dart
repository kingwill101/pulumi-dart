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
    pulumi.Output<String>? applicationId,
    pulumi.Output<List<String>>? capabilities,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? outputs,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? semanticVersion,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      capabilities = pulumi.Input.asOptionalInput<List<String>>(capabilities),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputs = pulumi.Input.asOptionalInput<Map<String, String>>(outputs),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      semanticVersion = pulumi.Input.asOptionalInput<String>(semanticVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      capabilities: map['capabilities'] == null ? null : pulumi.Output.create<List<String>>((map['capabilities'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['outputs'] as Map).cast<String, String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      semanticVersion: map['semanticVersion'] == null ? null : pulumi.Output.create<String>(map['semanticVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

