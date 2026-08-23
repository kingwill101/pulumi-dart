// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_set_auto_deployment.dart';
import 'stack_set_managed_execution.dart';
import 'stack_set_operation_preferences.dart';

/// Input properties used for looking up and filtering StackSet resources.
class StackSetState {
  /// Amazon Resource Number (ARN) of the IAM Role in the administrator account. This must be defined when using the `SELF_MANAGED` permission model.
  final pulumi.Input<String>? administrationRoleArn;
  /// Amazon Resource Name (ARN) of the StackSet.
  final pulumi.Input<String>? arn;
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
  /// Key-value map of input parameters for the StackSet template. All template parameters, including those with a `Default`, must be configured or ignored with `lifecycle` configuration block `ignoreChanges` argument. All `NoEcho` template parameters must be ignored with the `lifecycle` configuration block `ignoreChanges` argument.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Describes how the IAM roles required for your StackSet are created. Valid values: `SELF_MANAGED` (default), `SERVICE_MANAGED`.
  final pulumi.Input<String>? permissionModel;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Unique identifier of the StackSet.
  final pulumi.Input<String>? stackSetId;
  /// Key-value map of tags to associate with this StackSet and the Stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the Stacks. A maximum number of 50 tags can be specified. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// String containing the CloudFormation template body. Maximum size: 51,200 bytes. Conflicts with `templateUrl`.
  final pulumi.Input<String>? templateBody;
  /// String containing the location of a file containing the CloudFormation template body. The URL must point to a template that is located in an Amazon S3 bucket. Maximum location file size: 460,800 bytes. Conflicts with `templateBody`.
  final pulumi.Input<String>? templateUrl;

  /// Creates a new [StackSetState].
  /// [administrationRoleArn] Amazon Resource Number (ARN) of the IAM Role in the administrator account. This must be defined when using the `SELF_MANAGED` permission model.
  /// [arn] Amazon Resource Name (ARN) of the StackSet.
  /// [autoDeployment] Configuration block containing the auto-deployment model for your StackSet. This can only be defined when using the `SERVICE_MANAGED` permission model.
  /// [callAs] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  /// [capabilities] A list of capabilities. Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_AUTO_EXPAND`.
  /// [description] Description of the StackSet.
  /// [executionRoleName] Name of the IAM Role in all target accounts for StackSet operations. Defaults to `AWSCloudFormationStackSetExecutionRole` when using the `SELF_MANAGED` permission model. This should not be defined when using the `SERVICE_MANAGED` permission model.
  /// [managedExecution] Configuration block to allow StackSets to perform non-conflicting operations concurrently and queues conflicting operations.
  /// [name] Name of the StackSet. The name must be unique in the region where you create your StackSet. The name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.
  /// [operationPreferences] Preferences for how AWS CloudFormation performs a stack set update.
  /// [parameters] Key-value map of input parameters for the StackSet template. All template parameters, including those with a `Default`, must be configured or ignored with `lifecycle` configuration block `ignoreChanges` argument. All `NoEcho` template parameters must be ignored with the `lifecycle` configuration block `ignoreChanges` argument.
  /// [permissionModel] Describes how the IAM roles required for your StackSet are created. Valid values: `SELF_MANAGED` (default), `SERVICE_MANAGED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stackSetId] Unique identifier of the StackSet.
  /// [tags] Key-value map of tags to associate with this StackSet and the Stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the Stacks. A maximum number of 50 tags can be specified. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [templateBody] String containing the CloudFormation template body. Maximum size: 51,200 bytes. Conflicts with `templateUrl`.
  /// [templateUrl] String containing the location of a file containing the CloudFormation template body. The URL must point to a template that is located in an Amazon S3 bucket. Maximum location file size: 460,800 bytes. Conflicts with `templateBody`.
  const StackSetState({
    this.administrationRoleArn,
    this.arn,
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
    this.stackSetId,
    this.tags,
    this.tagsAll,
    this.templateBody,
    this.templateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrationRoleArn': ?administrationRoleArn,
      'arn': ?arn,
      'autoDeployment': ?pulumi.Input.mapOptionalInputValue<StackSetAutoDeployment, Map<String, dynamic>>(autoDeployment, (value) => value.toMap()),
      'callAs': ?callAs,
      'capabilities': ?capabilities,
      'description': ?description,
      'executionRoleName': ?executionRoleName,
      'managedExecution': ?pulumi.Input.mapOptionalInputValue<StackSetManagedExecution, Map<String, dynamic>>(managedExecution, (value) => value.toMap()),
      'name': ?name,
      'operationPreferences': ?pulumi.Input.mapOptionalInputValue<StackSetOperationPreferences, Map<String, dynamic>>(operationPreferences, (value) => value.toMap()),
      'parameters': ?parameters,
      'permissionModel': ?permissionModel,
      'region': ?region,
      'stackSetId': ?stackSetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'templateBody': ?templateBody,
      'templateUrl': ?templateUrl,
    };
  }

  factory StackSetState.fromMap(Map<String, dynamic> map) {
    return StackSetState(
      administrationRoleArn: (() { final guardedValue = map['administrationRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoDeployment: (() { final guardedValue = map['autoDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackSetAutoDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      callAs: (() { final guardedValue = map['callAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleName: (() { final guardedValue = map['executionRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedExecution: (() { final guardedValue = map['managedExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackSetManagedExecution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationPreferences: (() { final guardedValue = map['operationPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackSetOperationPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      permissionModel: (() { final guardedValue = map['permissionModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackSetId: (() { final guardedValue = map['stackSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateBody: (() { final guardedValue = map['templateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateUrl: (() { final guardedValue = map['templateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
