// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_group_auto_deployment.dart';
import 'stack_group_parameter.dart';

/// {@template pulumi_ros_stack_group_stack_group_args_doc}
/// The set of arguments for StackGroup.
/// {@endtemplate}
/// {@macro pulumi_ros_stack_group_stack_group_args_doc}
class StackGroupArgs {
  /// The name of the RAM role that you specify for the administrator account in ROS when you create the self-managed stack group. If you do not specify this parameter, the default value AliyunROSStackGroupAdministrationRole is used. You can use the administrator role in ROS to assume the execution role AliyunROSStackGroupExecutionRole to perform operations on the stacks that correspond to stack instances in the stack group.
  final pulumi.Input<String>? administrationRoleName;

  /// Automatic deployment setting information. Description
  /// This parameter is required only if the PermissionModel is SERVICE_MANAGED. See `auto_deployment` below.
  final pulumi.Input<StackGroupAutoDeployment>? autoDeployment;

  /// The list of resource stack group options. The maximum length is 1.
  final pulumi.Input<List<String>>? capabilities;

  /// The description of the stack group.
  final pulumi.Input<String>? description;

  /// The name of the RAM role that you specify for the execution account when you create the self-managed stack group. You can use the administrator role AliyunROSStackGroupAdministrationRole to assume the execution role. If you do not specify this parameter, the default value AliyunROSStackGroupExecutionRole is used. You can use this role in ROS to perform operations on the stacks that correspond to stack instances in the stack group.
  final pulumi.Input<String>? executionRoleName;

  /// Parameters See `parameters` below.
  final pulumi.Input<List<StackGroupParameter>>? parameters;

  /// The permission model.
  final pulumi.Input<String>? permissionModel;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// StackGroupName
  final pulumi.Input<String> stackGroupName;

  /// The label of the resource stack group.
  final pulumi.Input<Map<String, String>>? tags;

  /// The template body.
  final pulumi.Input<String>? templateBody;

  /// The ID of the template.
  final pulumi.Input<String>? templateId;

  /// The location of the file that contains the template body. The URL must point to the template (1 to 524,288 bytes) located in the HTTP Web server (HTTP or HTTPS) or Alibaba Cloud OSS bucket. The URL of the OSS bucket, such as oss:// ros/template/demo or oss:// ros/template/demo? RegionId = cn-hangzhou. If the OSS region is not specified, the RegionId of the interface is the same by default.
  ///
  /// &gt; **NOTE:** You must and can specify only one of the parameters of TemplateBody, TemplateURL, or TemplateId.
  final pulumi.Input<String>? templateUrl;

  /// The version of the template.
  final pulumi.Input<String>? templateVersion;

  /// Creates a new [StackGroupArgs].
  /// [administrationRoleName] The name of the RAM role that you specify for the administrator account in ROS when you create the self-managed stack group. If you do not specify this parameter, the default value AliyunROSStackGroupAdministrationRole is used. You can use the administrator role in ROS to assume the execution role AliyunROSStackGroupExecutionRole to perform operations on the stacks that correspond to stack instances in the stack group.
  /// [autoDeployment] Automatic deployment setting information. Description
  /// [capabilities] The list of resource stack group options. The maximum length is 1.
  /// [description] The description of the stack group.
  /// [executionRoleName] The name of the RAM role that you specify for the execution account when you create the self-managed stack group. You can use the administrator role AliyunROSStackGroupAdministrationRole to assume the execution role. If you do not specify this parameter, the default value AliyunROSStackGroupExecutionRole is used. You can use this role in ROS to perform operations on the stacks that correspond to stack instances in the stack group.
  /// [parameters] Parameters See `parameters` below.
  /// [permissionModel] The permission model.
  /// [resourceGroupId] The ID of the resource group.
  /// [stackGroupName] StackGroupName
  /// [tags] The label of the resource stack group.
  /// [templateBody] The template body.
  /// [templateId] The ID of the template.
  /// [templateUrl] The location of the file that contains the template body. The URL must point to the template (1 to 524,288 bytes) located in the HTTP Web server (HTTP or HTTPS) or Alibaba Cloud OSS bucket. The URL of the OSS bucket, such as oss:// ros/template/demo or oss:// ros/template/demo? RegionId = cn-hangzhou. If the OSS region is not specified, the RegionId of the interface is the same by default.
  /// [templateVersion] The version of the template.
  StackGroupArgs({
    this.administrationRoleName,
    this.autoDeployment,
    this.capabilities,
    this.description,
    this.executionRoleName,
    this.parameters,
    this.permissionModel,
    this.resourceGroupId,
    required this.stackGroupName,
    this.tags,
    this.templateBody,
    this.templateId,
    this.templateUrl,
    this.templateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrationRoleName': ?administrationRoleName,
      'autoDeployment':
          ?pulumi.Input.mapOptionalInputValue<
            StackGroupAutoDeployment,
            Map<String, dynamic>
          >(autoDeployment, (value) => value.toMap()),
      'capabilities': ?capabilities,
      'description': ?description,
      'executionRoleName': ?executionRoleName,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<StackGroupParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  StackGroupParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'permissionModel': ?permissionModel,
      'resourceGroupId': ?resourceGroupId,
      'stackGroupName': stackGroupName,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'templateId': ?templateId,
      'templateUrl': ?templateUrl,
      'templateVersion': ?templateVersion,
    };
  }

  factory StackGroupArgs.fromMap(Map<String, dynamic> map) {
    return StackGroupArgs(
      administrationRoleName: (() {
        final guardedValue = map['administrationRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoDeployment: (() {
        final guardedValue = map['autoDeployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StackGroupAutoDeployment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StackGroupParameter>(
            guardedValue,
            (value) => StackGroupParameter.fromMap(
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
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackGroupName: pulumi.Input.fromValue(map['stackGroupName'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      templateBody: (() {
        final guardedValue = map['templateBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateId: (() {
        final guardedValue = map['templateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateUrl: (() {
        final guardedValue = map['templateUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateVersion: (() {
        final guardedValue = map['templateVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
