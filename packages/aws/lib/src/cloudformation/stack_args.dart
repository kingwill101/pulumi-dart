// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudformation_stack_stack_args_doc}
/// The set of arguments for Stack.
/// {@endtemplate}
/// {@macro pulumi_cloudformation_stack_stack_args_doc}
class StackArgs {
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
  /// Structure containing the template body (max size: 51,200 bytes).
  final pulumi.Input<String>? templateBody;
  /// Location of a file containing the template body (max size: 460,800 bytes).
  final pulumi.Input<String>? templateUrl;
  /// The amount of time that can pass before the stack status becomes `CREATE_FAILED`.
  final pulumi.Input<int>? timeoutInMinutes;

  /// Creates a new [StackArgs].
  /// [capabilities] A list of capabilities.
  /// [disableRollback] Set to true to disable rollback of the stack if stack creation failed.
  /// [iamRoleArn] The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
  /// [name] Stack name.
  /// [notificationArns] A list of SNS topic ARNs to publish stack related events.
  /// [onFailure] Action to be taken if stack creation fails. This must be
  /// [parameters] A map of Parameter structures that specify input parameters for the stack.
  /// [policyBody] Structure containing the stack policy body.
  /// [policyUrl] Location of a file containing the stack policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of resource tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [templateBody] Structure containing the template body (max size: 51,200 bytes).
  /// [templateUrl] Location of a file containing the template body (max size: 460,800 bytes).
  /// [timeoutInMinutes] The amount of time that can pass before the stack status becomes `CREATE_FAILED`.
  StackArgs({
    List<String>? capabilities,
    bool? disableRollback,
    String? iamRoleArn,
    String? name,
    List<String>? notificationArns,
    String? onFailure,
    Map<String, String>? parameters,
    String? policyBody,
    String? policyUrl,
    String? region,
    Map<String, String>? tags,
    String? templateBody,
    String? templateUrl,
    int? timeoutInMinutes,
  }) :
      capabilities = pulumi.Input.asOptionalInput<List<String>>(capabilities),
      disableRollback = pulumi.Input.asOptionalInput<bool>(disableRollback),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationArns = pulumi.Input.asOptionalInput<List<String>>(notificationArns),
      onFailure = pulumi.Input.asOptionalInput<String>(onFailure),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      policyBody = pulumi.Input.asOptionalInput<String>(policyBody),
      policyUrl = pulumi.Input.asOptionalInput<String>(policyUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
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
      'parameters': ?parameters,
      'policyBody': ?policyBody,
      'policyUrl': ?policyUrl,
      'region': ?region,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'templateUrl': ?templateUrl,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory StackArgs.fromMap(Map<String, dynamic> map) {
    return StackArgs(
      capabilities: map['capabilities'] == null ? null : (map['capabilities'] as List).cast<String>(),
      disableRollback: map['disableRollback'] == null ? null : map['disableRollback'] as bool,
      iamRoleArn: map['iamRoleArn'] == null ? null : map['iamRoleArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notificationArns: map['notificationArns'] == null ? null : (map['notificationArns'] as List).cast<String>(),
      onFailure: map['onFailure'] == null ? null : map['onFailure'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      policyBody: map['policyBody'] == null ? null : map['policyBody'] as String,
      policyUrl: map['policyUrl'] == null ? null : map['policyUrl'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      templateBody: map['templateBody'] == null ? null : map['templateBody'] as String,
      templateUrl: map['templateUrl'] == null ? null : map['templateUrl'] as String,
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : map['timeoutInMinutes'] as int,
    );
  }
}

