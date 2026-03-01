// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Stack resources.
class StackState {
  /// A list of capabilities.
  /// Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, or `CAPABILITY_AUTO_EXPAND`
  final pulumi.Input<List<String>>? capabilities;
  /// Set to true to disable rollback of the stack if stack creation failed.
  /// Conflicts with `on_failure`.
  final pulumi.Input<bool>? disableRollback;
  /// The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
  final pulumi.Input<String>? iamRoleArn;
  /// Stack name.
  final pulumi.Input<String>? name;
  /// A list of SNS topic ARNs to publish stack related events.
  final pulumi.Input<List<String>>? notificationArns;
  /// Action to be taken if stack creation fails. This must be
  /// one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`. Conflicts with `disable_rollback`.
  final pulumi.Input<String>? onFailure;
  /// A map of outputs from the stack.
  final pulumi.Input<Map<String, String>>? outputs;
  /// A map of Parameter structures that specify input parameters for the stack.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Structure containing the stack policy body.
  /// Conflicts w/ `policy_url`.
  final pulumi.Input<String>? policyBody;
  /// Location of a file containing the stack policy.
  /// Conflicts w/ `policy_body`.
  final pulumi.Input<String>? policyUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of resource tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Structure containing the template body (max size: 51,200 bytes).
  final pulumi.Input<String>? templateBody;
  /// Location of a file containing the template body (max size: 460,800 bytes).
  final pulumi.Input<String>? templateUrl;
  /// The amount of time that can pass before the stack status becomes `CREATE_FAILED`.
  final pulumi.Input<int>? timeoutInMinutes;

  /// Creates a new [StackState].
  /// [capabilities] A list of capabilities.
  /// [disableRollback] Set to true to disable rollback of the stack if stack creation failed.
  /// [iamRoleArn] The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
  /// [name] Stack name.
  /// [notificationArns] A list of SNS topic ARNs to publish stack related events.
  /// [onFailure] Action to be taken if stack creation fails. This must be
  /// [outputs] A map of outputs from the stack.
  /// [parameters] A map of Parameter structures that specify input parameters for the stack.
  /// [policyBody] Structure containing the stack policy body.
  /// [policyUrl] Location of a file containing the stack policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of resource tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [templateBody] Structure containing the template body (max size: 51,200 bytes).
  /// [templateUrl] Location of a file containing the template body (max size: 460,800 bytes).
  /// [timeoutInMinutes] The amount of time that can pass before the stack status becomes `CREATE_FAILED`.
  StackState({
    pulumi.Output<List<String>>? capabilities,
    pulumi.Output<bool>? disableRollback,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? notificationArns,
    pulumi.Output<String>? onFailure,
    pulumi.Output<Map<String, String>>? outputs,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? policyBody,
    pulumi.Output<String>? policyUrl,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? templateBody,
    pulumi.Output<String>? templateUrl,
    pulumi.Output<int>? timeoutInMinutes,
  }) :
      capabilities = pulumi.Input.asOptionalInput<List<String>>(capabilities),
      disableRollback = pulumi.Input.asOptionalInput<bool>(disableRollback),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationArns = pulumi.Input.asOptionalInput<List<String>>(notificationArns),
      onFailure = pulumi.Input.asOptionalInput<String>(onFailure),
      outputs = pulumi.Input.asOptionalInput<Map<String, String>>(outputs),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      policyBody = pulumi.Input.asOptionalInput<String>(policyBody),
      policyUrl = pulumi.Input.asOptionalInput<String>(policyUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      templateUrl = pulumi.Input.asOptionalInput<String>(templateUrl),
      timeoutInMinutes = pulumi.Input.asOptionalInput<int>(timeoutInMinutes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'disableRollback': ?disableRollback,
      'iamRoleArn': ?iamRoleArn,
      'name': ?name,
      'notificationArns': ?notificationArns,
      'onFailure': ?onFailure,
      'outputs': ?outputs,
      'parameters': ?parameters,
      'policyBody': ?policyBody,
      'policyUrl': ?policyUrl,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'templateBody': ?templateBody,
      'templateUrl': ?templateUrl,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory StackState.fromMap(Map<String, dynamic> map) {
    return StackState(
      capabilities: map['capabilities'] == null ? null : pulumi.Output.create<List<String>>((map['capabilities'] as List).cast<String>()),
      disableRollback: map['disableRollback'] == null ? null : pulumi.Output.create<bool>(map['disableRollback'] as bool),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationArns: map['notificationArns'] == null ? null : pulumi.Output.create<List<String>>((map['notificationArns'] as List).cast<String>()),
      onFailure: map['onFailure'] == null ? null : pulumi.Output.create<String>(map['onFailure'] as String),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['outputs'] as Map).cast<String, String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      policyBody: map['policyBody'] == null ? null : pulumi.Output.create<String>(map['policyBody'] as String),
      policyUrl: map['policyUrl'] == null ? null : pulumi.Output.create<String>(map['policyUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      templateBody: map['templateBody'] == null ? null : pulumi.Output.create<String>(map['templateBody'] as String),
      templateUrl: map['templateUrl'] == null ? null : pulumi.Output.create<String>(map['templateUrl'] as String),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['timeoutInMinutes'] as int),
    );
  }
}

