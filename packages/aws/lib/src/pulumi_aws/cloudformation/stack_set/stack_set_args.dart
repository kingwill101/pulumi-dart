// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stack_set_auto_deployment/stack_set_auto_deployment.dart';
import '../stack_set_managed_execution/stack_set_managed_execution.dart';
import '../stack_set_operation_preferences/stack_set_operation_preferences.dart';

/// The set of arguments for StackSet.
class StackSetArgs {
  /// Amazon Resource Number (ARN) of the IAM Role in the administrator account. This must be defined when using the `SELF_MANAGED` permission model.
  final pulumi.Input<String>? administrationRoleArn;

  /// Configuration block containing the auto-deployment model for your StackSet. This can only be defined when using the `SERVICE_MANAGED` permission model.
  final pulumi.Input<StackSetAutoDeployment>? autoDeployment;

  /// Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  final pulumi.Input<String>? callAs;

  /// A list of capabilities. Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_AUTO_EXPAND`.
  final pulumi.Input<List<String>>? capabilities;

  /// Description of the StackSet.
  final pulumi.Input<String>? description;

  /// Name of the IAM Role in all target accounts for StackSet operations. Defaults to `AWSCloudFormationStackSetExecutionRole` when using the `SELF_MANAGED` permission model. This should not be defined when using the `SERVICE_MANAGED` permission model.
  final pulumi.Input<String>? executionRoleName;

  /// Configuration block to allow StackSets to perform non-conflicting operations concurrently and queues conflicting operations.
  final pulumi.Input<StackSetManagedExecution>? managedExecution;

  /// Name of the StackSet. The name must be unique in the region where you create your StackSet. The name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.
  final pulumi.Input<String>? name;

  /// Preferences for how AWS CloudFormation performs a stack set update.
  final pulumi.Input<StackSetOperationPreferences>? operationPreferences;

  /// Key-value map of input parameters for the StackSet template. All template parameters, including those with a `Default`, must be configured or ignored with `lifecycle` configuration block `ignore_changes` argument. All `NoEcho` template parameters must be ignored with the `lifecycle` configuration block `ignore_changes` argument.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Describes how the IAM roles required for your StackSet are created. Valid values: `SELF_MANAGED` (default), `SERVICE_MANAGED`.
  final pulumi.Input<String>? permissionModel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of tags to associate with this StackSet and the Stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the Stacks. A maximum number of 50 tags can be specified. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// String containing the CloudFormation template body. Maximum size: 51,200 bytes. Conflicts with `template_url`.
  final pulumi.Input<String>? templateBody;

  /// String containing the location of a file containing the CloudFormation template body. The URL must point to a template that is located in an Amazon S3 bucket. Maximum location file size: 460,800 bytes. Conflicts with `template_body`.
  final pulumi.Input<String>? templateUrl;

  StackSetArgs({
    this.administrationRoleArn,
    this.autoDeployment,
    this.callAs,
    this.capabilities,
    this.description,
    this.executionRoleName,
    this.managedExecution,
    this.name,
    this.operationPreferences,
    this.parameters,
    this.permissionModel,
    this.region,
    this.tags,
    this.templateBody,
    this.templateUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final administrationRoleArnValue = administrationRoleArn;
    if (administrationRoleArnValue != null) {
      map['administrationRoleArn'] = administrationRoleArnValue;
    }
    final autoDeploymentValue = autoDeployment;
    if (autoDeploymentValue != null) {
      map['autoDeployment'] = pulumi.Input.mapOptionalInputValue<
          StackSetAutoDeployment,
          Map<String, dynamic>>(autoDeploymentValue, (value) => value.toMap());
    }
    final callAsValue = callAs;
    if (callAsValue != null) {
      map['callAs'] = callAsValue;
    }
    final capabilitiesValue = capabilities;
    if (capabilitiesValue != null) {
      map['capabilities'] = capabilitiesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final executionRoleNameValue = executionRoleName;
    if (executionRoleNameValue != null) {
      map['executionRoleName'] = executionRoleNameValue;
    }
    final managedExecutionValue = managedExecution;
    if (managedExecutionValue != null) {
      map['managedExecution'] = pulumi.Input.mapOptionalInputValue<
              StackSetManagedExecution, Map<String, dynamic>>(
          managedExecutionValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final operationPreferencesValue = operationPreferences;
    if (operationPreferencesValue != null) {
      map['operationPreferences'] = pulumi.Input.mapOptionalInputValue<
              StackSetOperationPreferences, Map<String, dynamic>>(
          operationPreferencesValue, (value) => value.toMap());
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final permissionModelValue = permissionModel;
    if (permissionModelValue != null) {
      map['permissionModel'] = permissionModelValue;
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
    return map;
  }

  factory StackSetArgs.fromMap(Map<String, dynamic> map) {
    return StackSetArgs(
      administrationRoleArn:
          pulumi.Input.asOptionalInput<String>(map['administrationRoleArn']),
      autoDeployment: pulumi.Input.asOptionalInput<StackSetAutoDeployment>(
          map['autoDeployment']),
      callAs: pulumi.Input.asOptionalInput<String>(map['callAs']),
      capabilities:
          pulumi.Input.asOptionalInput<List<String>>(map['capabilities']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      executionRoleName:
          pulumi.Input.asOptionalInput<String>(map['executionRoleName']),
      managedExecution: pulumi.Input.asOptionalInput<StackSetManagedExecution>(
          map['managedExecution']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      operationPreferences:
          pulumi.Input.asOptionalInput<StackSetOperationPreferences>(
              map['operationPreferences']),
      parameters:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['parameters']),
      permissionModel:
          pulumi.Input.asOptionalInput<String>(map['permissionModel']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateBody: pulumi.Input.asOptionalInput<String>(map['templateBody']),
      templateUrl: pulumi.Input.asOptionalInput<String>(map['templateUrl']),
    );
  }
}
