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
  final pulumi.Input<String>? administrationRoleARN;

  /// Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if PermissionModel is SERVICE_MANAGED.
  final pulumi.Input<AutoDeploymentResponse>? autoDeployment;

  /// Specifies the AWS account that you are acting from. By default, SELF is specified. For self-managed permissions, specify SELF; for service-managed permissions, if you are signed in to the organization's management account, specify SELF. If you are signed in to a delegated administrator account, specify DELEGATED_ADMIN.
  final pulumi.Input<String>? callAs;

  /// In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for AWS CloudFormation to create the stack set and related stack instances.
  final pulumi.Input<List<String>>? capabilities;

  /// A description of the stack set. You can use the description to identify the stack set's purpose or other important information.
  final pulumi.Input<String>? description;

  /// The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the AWSCloudFormationStackSetExecutionRole role for the stack set operation.
  final pulumi.Input<String>? executionRoleName;

  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  final pulumi.Input<ActiveModelResponse>? managedExecution;

  /// The user-specified preferences for how AWS CloudFormation performs a stack set operation.
  final pulumi.Input<OperationPreferencesResponse>? operationPreferences;

  /// The input parameters for the stack set template.
  final pulumi.Input<List<ParameterResponse>>? parameters;

  /// Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.
  final pulumi.Input<String>? permissionModel;

  /// A group of stack instances with parameters in some specific accounts and regions.
  final pulumi.Input<List<StackInstancesResponse>>? stackInstancesGroup;

  /// The ID of the stack set that you're creating.
  final pulumi.Input<String>? stackSetId;

  /// The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
  final pulumi.Input<String>? stackSetName;

  /// The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.
  final pulumi.Input<List<TagResponse>>? tags;

  /// The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes.
  final pulumi.Input<String>? templateBody;

  /// Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket.
  final pulumi.Input<String>? templateURL;

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
      'autoDeployment':
          ?pulumi.Input.mapOptionalInputValue<
            AutoDeploymentResponse,
            Map<String, dynamic>
          >(autoDeployment, (value) => value.toMap()),
      'callAs': ?callAs,
      'capabilities': ?capabilities,
      'description': ?description,
      'executionRoleName': ?executionRoleName,
      'managedExecution':
          ?pulumi.Input.mapOptionalInputValue<
            ActiveModelResponse,
            Map<String, dynamic>
          >(managedExecution, (value) => value.toMap()),
      'operationPreferences':
          ?pulumi.Input.mapOptionalInputValue<
            OperationPreferencesResponse,
            Map<String, dynamic>
          >(operationPreferences, (value) => value.toMap()),
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ParameterResponse>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  ParameterResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'permissionModel': ?permissionModel,
      'stackInstancesGroup':
          ?pulumi.Input.mapOptionalInputValue<
            List<StackInstancesResponse>,
            List<Map<String, dynamic>>
          >(
            stackInstancesGroup,
            (value) =>
                pulumi.Input.encodeList<
                  StackInstancesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stackSetId': ?stackSetId,
      'stackSetName': ?stackSetName,
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<TagResponse>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) =>
                pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'templateBody': ?templateBody,
      'templateURL': ?templateURL,
    };
  }

  factory AwsCloudFormationStackSetPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsCloudFormationStackSetPropertiesResponse(
      administrationRoleARN: (() {
        final guardedValue = map['administrationRoleARN'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoDeployment: (() {
        final guardedValue = map['autoDeployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoDeploymentResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      callAs: (() {
        final guardedValue = map['callAs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      capabilities: (() {
        final guardedValue = map['capabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionRoleName: (() {
        final guardedValue = map['executionRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedExecution: (() {
        final guardedValue = map['managedExecution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActiveModelResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      operationPreferences: (() {
        final guardedValue = map['operationPreferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OperationPreferencesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ParameterResponse>(
            guardedValue,
            (value) => ParameterResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      permissionModel: (() {
        final guardedValue = map['permissionModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackInstancesGroup: (() {
        final guardedValue = map['stackInstancesGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StackInstancesResponse>(
            guardedValue,
            (value) => StackInstancesResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      stackSetId: (() {
        final guardedValue = map['stackSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackSetName: (() {
        final guardedValue = map['stackSetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TagResponse>(
            guardedValue,
            (value) =>
                TagResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      templateBody: (() {
        final guardedValue = map['templateBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateURL: (() {
        final guardedValue = map['templateURL'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
