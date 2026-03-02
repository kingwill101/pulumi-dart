// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_model.dart';
import 'auto_deployment.dart';
import 'operation_preferences.dart';
import 'parameter.dart';
import 'stack_instances.dart';
import 'tag.dart';

/// Definition of awsCloudFormationStackSet
class AwsCloudFormationStackSetProperties {
  /// The Amazon Resource Number (ARN) of the IAM role to use to create this stack set. Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account.
  final pulumi.Input<String>? administrationRoleARN;
  /// Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if PermissionModel is SERVICE_MANAGED.
  final pulumi.Input<AutoDeployment>? autoDeployment;
  /// Specifies the AWS account that you are acting from. By default, SELF is specified. For self-managed permissions, specify SELF; for service-managed permissions, if you are signed in to the organization's management account, specify SELF. If you are signed in to a delegated administrator account, specify DELEGATED_ADMIN.
  final pulumi.Input<String>? callAs;
  /// In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for AWS CloudFormation to create the stack set and related stack instances.
  final pulumi.Input<List<String>>? capabilities;
  /// A description of the stack set. You can use the description to identify the stack set's purpose or other important information.
  final pulumi.Input<String>? description;
  /// The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the AWSCloudFormationStackSetExecutionRole role for the stack set operation.
  final pulumi.Input<String>? executionRoleName;
  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  final pulumi.Input<ActiveModel>? managedExecution;
  /// The user-specified preferences for how AWS CloudFormation performs a stack set operation.
  final pulumi.Input<OperationPreferences>? operationPreferences;
  /// The input parameters for the stack set template.
  final pulumi.Input<List<Parameter>>? parameters;
  /// Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.
  final pulumi.Input<String>? permissionModel;
  /// A group of stack instances with parameters in some specific accounts and regions.
  final pulumi.Input<List<StackInstances>>? stackInstancesGroup;
  /// The ID of the stack set that you're creating.
  final pulumi.Input<String>? stackSetId;
  /// The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
  final pulumi.Input<String>? stackSetName;
  /// The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.
  final pulumi.Input<List<Tag>>? tags;
  /// The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes.
  final pulumi.Input<String>? templateBody;
  /// Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket.
  final pulumi.Input<String>? templateURL;

  /// Creates a new [AwsCloudFormationStackSetProperties].
  /// [administrationRoleARN] The Amazon Resource Number (ARN) of the IAM role to use to create this stack set. Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account.
  /// [autoDeployment] Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if PermissionModel is SERVICE_MANAGED.
  /// [callAs] Specifies the AWS account that you are acting from. By default, SELF is specified. For self-managed permissions, specify SELF; for service-managed permissions, if you are signed in to the organization's management account, specify SELF. If you are signed in to a delegated administrator account, specify DELEGATED_ADMIN.
  /// [capabilities] In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for AWS CloudFormation to create the stack set and related stack instances.
  /// [description] A description of the stack set. You can use the description to identify the stack set's purpose or other important information.
  /// [executionRoleName] The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the AWSCloudFormationStackSetExecutionRole role for the stack set operation.
  /// [managedExecution] Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  /// [operationPreferences] The user-specified preferences for how AWS CloudFormation performs a stack set operation.
  /// [parameters] The input parameters for the stack set template.
  /// [permissionModel] Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.
  /// [stackInstancesGroup] A group of stack instances with parameters in some specific accounts and regions.
  /// [stackSetId] The ID of the stack set that you're creating.
  /// [stackSetName] The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
  /// [tags] The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.
  /// [templateBody] The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes.
  /// [templateURL] Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket.
  AwsCloudFormationStackSetProperties({
    this.administrationRoleARN,
    this.autoDeployment,
    this.callAs,
    this.capabilities,
    this.description,
    this.executionRoleName,
    this.managedExecution,
    this.operationPreferences,
    this.parameters,
    this.permissionModel,
    this.stackInstancesGroup,
    this.stackSetId,
    this.stackSetName,
    this.tags,
    this.templateBody,
    this.templateURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrationRoleARN': ?administrationRoleARN,
      'autoDeployment': ?pulumi.Input.mapOptionalInputValue<AutoDeployment, Map<String, dynamic>>(autoDeployment, (value) => value.toMap()),
      'callAs': ?callAs,
      'capabilities': ?capabilities,
      'description': ?description,
      'executionRoleName': ?executionRoleName,
      'managedExecution': ?pulumi.Input.mapOptionalInputValue<ActiveModel, Map<String, dynamic>>(managedExecution, (value) => value.toMap()),
      'operationPreferences': ?pulumi.Input.mapOptionalInputValue<OperationPreferences, Map<String, dynamic>>(operationPreferences, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<Parameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<Parameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissionModel': ?permissionModel,
      'stackInstancesGroup': ?pulumi.Input.mapOptionalInputValue<List<StackInstances>, List<Map<String, dynamic>>>(stackInstancesGroup, (value) => pulumi.Input.encodeList<StackInstances, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackSetId': ?stackSetId,
      'stackSetName': ?stackSetName,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateBody': ?templateBody,
      'templateURL': ?templateURL,
    };
  }

  factory AwsCloudFormationStackSetProperties.fromMap(Map<String, dynamic> map) {
    return AwsCloudFormationStackSetProperties(
      administrationRoleARN: map['administrationRoleARN'] == null ? null : (map['administrationRoleARN'] as String).input(),
      autoDeployment: map['autoDeployment'] == null ? null : (AutoDeployment.fromMap((map['autoDeployment'] as Map).cast<String, dynamic>())).input(),
      callAs: map['callAs'] == null ? null : (map['callAs'] as String).input(),
      capabilities: map['capabilities'] == null ? null : ((map['capabilities'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      executionRoleName: map['executionRoleName'] == null ? null : (map['executionRoleName'] as String).input(),
      managedExecution: map['managedExecution'] == null ? null : (ActiveModel.fromMap((map['managedExecution'] as Map).cast<String, dynamic>())).input(),
      operationPreferences: map['operationPreferences'] == null ? null : (OperationPreferences.fromMap((map['operationPreferences'] as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<Parameter>(map['parameters'], (value) => Parameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      permissionModel: map['permissionModel'] == null ? null : (map['permissionModel'] as String).input(),
      stackInstancesGroup: map['stackInstancesGroup'] == null ? null : (pulumi.Input.decodeList<StackInstances>(map['stackInstancesGroup'], (value) => StackInstances.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stackSetId: map['stackSetId'] == null ? null : (map['stackSetId'] as String).input(),
      stackSetName: map['stackSetName'] == null ? null : (map['stackSetName'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      templateBody: map['templateBody'] == null ? null : (map['templateBody'] as String).input(),
      templateURL: map['templateURL'] == null ? null : (map['templateURL'] as String).input(),
    );
  }
}

