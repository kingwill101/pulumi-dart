// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_model_response.dart';
import 'auto_deployment_response.dart';
import 'operation_preferences_response.dart';
import 'parameter_response.dart';
import 'stack_instances_response.dart';
import 'tag_response.dart';

/// Definition of awsCloudFormationStackSet
class AwsCloudFormationStackSetPropertiesResponse {
  /// The Amazon Resource Number (ARN) of the IAM role to use to create this stack set. Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account.
  final String? administrationRoleARN;
  /// Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if PermissionModel is SERVICE_MANAGED.
  final AutoDeploymentResponse? autoDeployment;
  /// Specifies the AWS account that you are acting from. By default, SELF is specified. For self-managed permissions, specify SELF; for service-managed permissions, if you are signed in to the organization's management account, specify SELF. If you are signed in to a delegated administrator account, specify DELEGATED_ADMIN.
  final String? callAs;
  /// In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for AWS CloudFormation to create the stack set and related stack instances.
  final List<String>? capabilities;
  /// A description of the stack set. You can use the description to identify the stack set's purpose or other important information.
  final String? description;
  /// The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the AWSCloudFormationStackSetExecutionRole role for the stack set operation.
  final String? executionRoleName;
  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  final ActiveModelResponse? managedExecution;
  /// The user-specified preferences for how AWS CloudFormation performs a stack set operation.
  final OperationPreferencesResponse? operationPreferences;
  /// The input parameters for the stack set template.
  final List<ParameterResponse>? parameters;
  /// Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.
  final String? permissionModel;
  /// A group of stack instances with parameters in some specific accounts and regions.
  final List<StackInstancesResponse>? stackInstancesGroup;
  /// The ID of the stack set that you're creating.
  final String? stackSetId;
  /// The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
  final String? stackSetName;
  /// The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.
  final List<TagResponse>? tags;
  /// The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes.
  final String? templateBody;
  /// Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket.
  final String? templateURL;

  /// Creates a new [AwsCloudFormationStackSetPropertiesResponse].
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
  AwsCloudFormationStackSetPropertiesResponse({
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
      'autoDeployment': ?autoDeployment == null ? null : autoDeployment!.toMap(),
      'callAs': ?callAs,
      'capabilities': ?capabilities,
      'description': ?description,
      'executionRoleName': ?executionRoleName,
      'managedExecution': ?managedExecution == null ? null : managedExecution!.toMap(),
      'operationPreferences': ?operationPreferences == null ? null : operationPreferences!.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'permissionModel': ?permissionModel,
      'stackInstancesGroup': ?stackInstancesGroup == null ? null : pulumi.Input.encodeList<StackInstancesResponse, Map<String, dynamic>>(stackInstancesGroup!, (value) => value.toMap()),
      'stackSetId': ?stackSetId,
      'stackSetName': ?stackSetName,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'templateBody': ?templateBody,
      'templateURL': ?templateURL,
    };
  }

  factory AwsCloudFormationStackSetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCloudFormationStackSetPropertiesResponse(
      administrationRoleARN: map['administrationRoleARN'] == null ? null : map['administrationRoleARN'] as String,
      autoDeployment: map['autoDeployment'] == null ? null : AutoDeploymentResponse.fromMap((map['autoDeployment'] as Map).cast<String, dynamic>()),
      callAs: map['callAs'] == null ? null : map['callAs'] as String,
      capabilities: map['capabilities'] == null ? null : (map['capabilities'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      executionRoleName: map['executionRoleName'] == null ? null : map['executionRoleName'] as String,
      managedExecution: map['managedExecution'] == null ? null : ActiveModelResponse.fromMap((map['managedExecution'] as Map).cast<String, dynamic>()),
      operationPreferences: map['operationPreferences'] == null ? null : OperationPreferencesResponse.fromMap((map['operationPreferences'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ParameterResponse>(map['parameters'], (value) => ParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      permissionModel: map['permissionModel'] == null ? null : map['permissionModel'] as String,
      stackInstancesGroup: map['stackInstancesGroup'] == null ? null : pulumi.Input.decodeList<StackInstancesResponse>(map['stackInstancesGroup'], (value) => StackInstancesResponse.fromMap((value as Map).cast<String, dynamic>())),
      stackSetId: map['stackSetId'] == null ? null : map['stackSetId'] as String,
      stackSetName: map['stackSetName'] == null ? null : map['stackSetName'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      templateBody: map['templateBody'] == null ? null : map['templateBody'] as String,
      templateURL: map['templateURL'] == null ? null : map['templateURL'] as String,
    );
  }
}

