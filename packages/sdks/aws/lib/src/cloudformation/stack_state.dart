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
    this.capabilities,
    this.disableRollback,
    this.iamRoleArn,
    this.name,
    this.notificationArns,
    this.onFailure,
    this.outputs,
    this.parameters,
    this.policyBody,
    this.policyUrl,
    this.region,
    this.tags,
    this.tagsAll,
    this.templateBody,
    this.templateUrl,
    this.timeoutInMinutes,
  });

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
      capabilities: map['capabilities'] == null ? null : (((map['capabilities'] as List).cast<String>()).input()).input(),
      disableRollback: map['disableRollback'] == null ? null : ((map['disableRollback'] as bool).input()).input(),
      iamRoleArn: map['iamRoleArn'] == null ? null : ((map['iamRoleArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      notificationArns: map['notificationArns'] == null ? null : (((map['notificationArns'] as List).cast<String>()).input()).input(),
      onFailure: map['onFailure'] == null ? null : ((map['onFailure'] as String).input()).input(),
      outputs: map['outputs'] == null ? null : (((map['outputs'] as Map).cast<String, String>()).input()).input(),
      parameters: map['parameters'] == null ? null : (((map['parameters'] as Map).cast<String, String>()).input()).input(),
      policyBody: map['policyBody'] == null ? null : ((map['policyBody'] as String).input()).input(),
      policyUrl: map['policyUrl'] == null ? null : ((map['policyUrl'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      templateBody: map['templateBody'] == null ? null : ((map['templateBody'] as String).input()).input(),
      templateUrl: map['templateUrl'] == null ? null : ((map['templateUrl'] as String).input()).input(),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : ((map['timeoutInMinutes'] as int).input()).input(),
    );
  }
}

