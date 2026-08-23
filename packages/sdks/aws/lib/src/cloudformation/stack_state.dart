// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Stack resources.
class StackState {
  /// A list of capabilities.
  /// Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, or `CAPABILITY_AUTO_EXPAND`
  final pulumi.Input<List<String>>? capabilities;
  /// Set to true to disable rollback of the stack if stack creation failed.
  /// Conflicts with `onFailure`.
  final pulumi.Input<bool>? disableRollback;
  /// The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
  final pulumi.Input<String>? iamRoleArn;
  /// Stack name.
  final pulumi.Input<String>? name;
  /// A list of SNS topic ARNs to publish stack related events.
  final pulumi.Input<List<String>>? notificationArns;
  /// Action to be taken if stack creation fails. This must be
  /// one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`. Conflicts with `disableRollback`.
  final pulumi.Input<String>? onFailure;
  /// A map of outputs from the stack.
  final pulumi.Input<Map<String, String>>? outputs;
  /// A map of Parameter structures that specify input parameters for the stack.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Structure containing the stack policy body.
  /// Conflicts w/ `policyUrl`.
  final pulumi.Input<String>? policyBody;
  /// Location of a file containing the stack policy.
  /// Conflicts w/ `policyBody`.
  final pulumi.Input<String>? policyUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of resource tags to associate with this stack. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [tags] Map of resource tags to associate with this stack. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [templateBody] Structure containing the template body (max size: 51,200 bytes).
  /// [templateUrl] Location of a file containing the template body (max size: 460,800 bytes).
  /// [timeoutInMinutes] The amount of time that can pass before the stack status becomes `CREATE_FAILED`.
  const StackState({
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
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disableRollback: (() { final guardedValue = map['disableRollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationArns: (() { final guardedValue = map['notificationArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      onFailure: (() { final guardedValue = map['onFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      policyBody: (() { final guardedValue = map['policyBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyUrl: (() { final guardedValue = map['policyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateBody: (() { final guardedValue = map['templateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateUrl: (() { final guardedValue = map['templateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutInMinutes: (() { final guardedValue = map['timeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
