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
  /// > **NOTE:** You must and can specify only one of the parameters of TemplateBody, TemplateURL, or TemplateId.
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
    String? administrationRoleName,
    StackGroupAutoDeployment? autoDeployment,
    List<String>? capabilities,
    String? description,
    String? executionRoleName,
    List<StackGroupParameter>? parameters,
    String? permissionModel,
    String? resourceGroupId,
    required String stackGroupName,
    Map<String, String>? tags,
    String? templateBody,
    String? templateId,
    String? templateUrl,
    String? templateVersion,
  }) :
      administrationRoleName = pulumi.Input.asOptionalInput<String>(administrationRoleName),
      autoDeployment = pulumi.Input.asOptionalInput<StackGroupAutoDeployment>(autoDeployment),
      capabilities = pulumi.Input.asOptionalInput<List<String>>(capabilities),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionRoleName = pulumi.Input.asOptionalInput<String>(executionRoleName),
      parameters = pulumi.Input.asOptionalInput<List<StackGroupParameter>>(parameters),
      permissionModel = pulumi.Input.asOptionalInput<String>(permissionModel),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      stackGroupName = pulumi.Input.asInput<String>(stackGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      templateUrl = pulumi.Input.asOptionalInput<String>(templateUrl),
      templateVersion = pulumi.Input.asOptionalInput<String>(templateVersion);

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
      administrationRoleName: map['administrationRoleName'] == null ? null : map['administrationRoleName'] as String,
      autoDeployment: map['autoDeployment'] == null ? null : StackGroupAutoDeployment.fromMap((map['autoDeployment'] as Map).cast<String, dynamic>()),
      capabilities: map['capabilities'] == null ? null : (map['capabilities'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      executionRoleName: map['executionRoleName'] == null ? null : map['executionRoleName'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<StackGroupParameter>(map['parameters'], (value) => StackGroupParameter.fromMap((value as Map).cast<String, dynamic>())),
      permissionModel: map['permissionModel'] == null ? null : map['permissionModel'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      stackGroupName: map['stackGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      templateBody: map['templateBody'] == null ? null : map['templateBody'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
      templateUrl: map['templateUrl'] == null ? null : map['templateUrl'] as String,
      templateVersion: map['templateVersion'] == null ? null : map['templateVersion'] as String,
    );
  }
}

