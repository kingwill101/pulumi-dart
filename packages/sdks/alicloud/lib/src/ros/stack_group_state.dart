// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_group_auto_deployment.dart';
import 'stack_group_parameter.dart';

/// Input properties used for looking up and filtering StackGroup resources.
class StackGroupState {
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
  /// The ID of stack group.
  final pulumi.Input<String>? stackGroupId;
  /// StackGroupName
  final pulumi.Input<String>? stackGroupName;
  /// The status of the stack group.
  final pulumi.Input<String>? status;
  /// The label of the resource stack group.
  final pulumi.Input<Map<String, String>>? tags;
  /// The template body.
  final pulumi.Input<String>? templateBody;
  /// The ID of the template.
  final pulumi.Input<String>? templateId;
  /// The location of the file that contains the template body. The URL must point to the template (1 to 524,288 bytes) located in the HTTP Web server (HTTP or HTTPS) or Alibaba Cloud OSS bucket. The URL of the OSS bucket, such as oss:// ros/template/demo or oss:// ros/template/demo? RegionId = cn-hangzhou. If the OSS region is not specified, the RegionId of the interface is the same by default.
  ///
  /// > **NOTE:** You must and can specify only one of the parameters of TemplateBody, TemplateURL, or TemplateId.
  final pulumi.Input<String>? templateUrl;
  /// The version of the template.
  final pulumi.Input<String>? templateVersion;

  /// Creates a new [StackGroupState].
  /// [administrationRoleName] The name of the RAM role that you specify for the administrator account in ROS when you create the self-managed stack group. If you do not specify this parameter, the default value AliyunROSStackGroupAdministrationRole is used. You can use the administrator role in ROS to assume the execution role AliyunROSStackGroupExecutionRole to perform operations on the stacks that correspond to stack instances in the stack group.
  /// [autoDeployment] Automatic deployment setting information. Description
  /// [capabilities] The list of resource stack group options. The maximum length is 1.
  /// [description] The description of the stack group.
  /// [executionRoleName] The name of the RAM role that you specify for the execution account when you create the self-managed stack group. You can use the administrator role AliyunROSStackGroupAdministrationRole to assume the execution role. If you do not specify this parameter, the default value AliyunROSStackGroupExecutionRole is used. You can use this role in ROS to perform operations on the stacks that correspond to stack instances in the stack group.
  /// [parameters] Parameters See `parameters` below.
  /// [permissionModel] The permission model.
  /// [resourceGroupId] The ID of the resource group.
  /// [stackGroupId] The ID of stack group.
  /// [stackGroupName] StackGroupName
  /// [status] The status of the stack group.
  /// [tags] The label of the resource stack group.
  /// [templateBody] The template body.
  /// [templateId] The ID of the template.
  /// [templateUrl] The location of the file that contains the template body. The URL must point to the template (1 to 524,288 bytes) located in the HTTP Web server (HTTP or HTTPS) or Alibaba Cloud OSS bucket. The URL of the OSS bucket, such as oss:// ros/template/demo or oss:// ros/template/demo? RegionId = cn-hangzhou. If the OSS region is not specified, the RegionId of the interface is the same by default.
  /// [templateVersion] The version of the template.
  StackGroupState({
    this.administrationRoleName,
    this.autoDeployment,
    this.capabilities,
    this.description,
    this.executionRoleName,
    this.parameters,
    this.permissionModel,
    this.resourceGroupId,
    this.stackGroupId,
    this.stackGroupName,
    this.status,
    this.tags,
    this.templateBody,
    this.templateId,
    this.templateUrl,
    this.templateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrationRoleName': ?administrationRoleName,
      'autoDeployment': ?pulumi.Input.mapOptionalInputValue<StackGroupAutoDeployment, Map<String, dynamic>>(autoDeployment, (value) => value.toMap()),
      'capabilities': ?capabilities,
      'description': ?description,
      'executionRoleName': ?executionRoleName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<StackGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<StackGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissionModel': ?permissionModel,
      'resourceGroupId': ?resourceGroupId,
      'stackGroupId': ?stackGroupId,
      'stackGroupName': ?stackGroupName,
      'status': ?status,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'templateId': ?templateId,
      'templateUrl': ?templateUrl,
      'templateVersion': ?templateVersion,
    };
  }

  factory StackGroupState.fromMap(Map<String, dynamic> map) {
    return StackGroupState(
      administrationRoleName: map['administrationRoleName'] == null ? null : (map['administrationRoleName'] as String).input(),
      autoDeployment: map['autoDeployment'] == null ? null : (StackGroupAutoDeployment.fromMap((map['autoDeployment'] as Map).cast<String, dynamic>())).input(),
      capabilities: map['capabilities'] == null ? null : ((map['capabilities'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      executionRoleName: map['executionRoleName'] == null ? null : (map['executionRoleName'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<StackGroupParameter>(map['parameters'], (value) => StackGroupParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      permissionModel: map['permissionModel'] == null ? null : (map['permissionModel'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      stackGroupId: map['stackGroupId'] == null ? null : (map['stackGroupId'] as String).input(),
      stackGroupName: map['stackGroupName'] == null ? null : (map['stackGroupName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      templateBody: map['templateBody'] == null ? null : (map['templateBody'] as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
      templateUrl: map['templateUrl'] == null ? null : (map['templateUrl'] as String).input(),
      templateVersion: map['templateVersion'] == null ? null : (map['templateVersion'] as String).input(),
    );
  }
}

