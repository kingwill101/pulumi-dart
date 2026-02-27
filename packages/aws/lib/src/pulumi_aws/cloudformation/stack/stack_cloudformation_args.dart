// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Stack.
class StackCloudformationArgs {
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

  StackCloudformationArgs({
    this.capabilities,
    this.disableRollback,
    this.iamRoleArn,
    this.name,
    this.notificationArns,
    this.onFailure,
    this.parameters,
    this.policyBody,
    this.policyUrl,
    this.region,
    this.tags,
    this.templateBody,
    this.templateUrl,
    this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capabilitiesValue = capabilities;
    if (capabilitiesValue != null) {
      map['capabilities'] = capabilitiesValue;
    }
    final disableRollbackValue = disableRollback;
    if (disableRollbackValue != null) {
      map['disableRollback'] = disableRollbackValue;
    }
    final iamRoleArnValue = iamRoleArn;
    if (iamRoleArnValue != null) {
      map['iamRoleArn'] = iamRoleArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationArnsValue = notificationArns;
    if (notificationArnsValue != null) {
      map['notificationArns'] = notificationArnsValue;
    }
    final onFailureValue = onFailure;
    if (onFailureValue != null) {
      map['onFailure'] = onFailureValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final policyBodyValue = policyBody;
    if (policyBodyValue != null) {
      map['policyBody'] = policyBodyValue;
    }
    final policyUrlValue = policyUrl;
    if (policyUrlValue != null) {
      map['policyUrl'] = policyUrlValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final templateBodyValue = templateBody;
    if (templateBodyValue != null) {
      map['templateBody'] = templateBodyValue;
    }
    final templateUrlValue = templateUrl;
    if (templateUrlValue != null) {
      map['templateUrl'] = templateUrlValue;
    }
    final timeoutInMinutesValue = timeoutInMinutes;
    if (timeoutInMinutesValue != null) {
      map['timeoutInMinutes'] = timeoutInMinutesValue;
    }
    return map;
  }

  factory StackCloudformationArgs.fromMap(Map<String, dynamic> map) {
    return StackCloudformationArgs(
      capabilities:
          pulumi.Input.asOptionalInput<List<String>>(map['capabilities']),
      disableRollback:
          pulumi.Input.asOptionalInput<bool>(map['disableRollback']),
      iamRoleArn: pulumi.Input.asOptionalInput<String>(map['iamRoleArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notificationArns:
          pulumi.Input.asOptionalInput<List<String>>(map['notificationArns']),
      onFailure: pulumi.Input.asOptionalInput<String>(map['onFailure']),
      parameters:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['parameters']),
      policyBody: pulumi.Input.asOptionalInput<String>(map['policyBody']),
      policyUrl: pulumi.Input.asOptionalInput<String>(map['policyUrl']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateBody: pulumi.Input.asOptionalInput<String>(map['templateBody']),
      templateUrl: pulumi.Input.asOptionalInput<String>(map['templateUrl']),
      timeoutInMinutes:
          pulumi.Input.asOptionalInput<int>(map['timeoutInMinutes']),
    );
  }
}
