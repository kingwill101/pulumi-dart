// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_parameter.dart';

/// {@template pulumi_ros_stack_stack_args_doc}
/// The set of arguments for Stack.
/// {@endtemplate}
/// {@macro pulumi_ros_stack_stack_args_doc}
class StackArgs {
  /// Specifies whether to delete the stack after it is created.
  final pulumi.Input<String>? createOption;
  /// Specifies whether to enable deletion protection on the stack. Valid values: `Disabled`, `Enabled`. Default to: `Disabled`
  final pulumi.Input<String>? deletionProtection;
  /// Specifies whether to disable rollback on stack creation failure. Default to: `false`.
  final pulumi.Input<bool>? disableRollback;
  /// The callback URL for receiving stack event N. Only HTTP POST is supported. Maximum value of N: 5.
  final pulumi.Input<List<String>>? notificationUrls;
  /// The parameters. If the parameter name and value are not specified, ROS will use the default value specified in the template.
  final pulumi.Input<List<StackParameter>>? parameters;
  /// The name of the RAM role. ROS assumes the specified RAM role to create the stack and call API operations by using the credentials of the role.
  final pulumi.Input<String>? ramRoleName;
  /// Specifies whether to enable replacement update after a resource attribute that does not support modification update is changed. Modification update keeps the physical ID of the resource unchanged. However, the resource is deleted and then recreated, and its physical ID is changed if replacement update is enabled.
  final pulumi.Input<String>? replacementOption;
  /// The retain all resources.
  final pulumi.Input<bool>? retainAllResources;
  /// Specifies whether to retain the resources in the stack.
  final pulumi.Input<List<String>>? retainResources;
  /// The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String> stackName;
  /// The structure that contains the stack policy body. The stack policy body must be 1 to 16,384 bytes in length.
  final pulumi.Input<String>? stackPolicyBody;
  /// The structure that contains the body of the temporary overriding stack policy. The stack policy body must be 1 to 16,384 bytes in length.
  final pulumi.Input<String>? stackPolicyDuringUpdateBody;
  /// The URL of the file that contains the temporary overriding stack policy. The URL must point to a policy located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/stack-policy/demo and oss://ros/stack-policy/demo?RegionId=cn-hangzhou. The policy can be up to 16,384 bytes in length and the URL can be up to 1,350 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  final pulumi.Input<String>? stackPolicyDuringUpdateUrl;
  /// The URL of the file that contains the stack policy. The URL must point to a policy located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/stack-policy/demo and oss://ros/stack-policy/demo?RegionId=cn-hangzhou. The policy can be up to 16,384 bytes in length and the URL can be up to 1,350 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  final pulumi.Input<String>? stackPolicyUrl;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length. If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.
  final pulumi.Input<String>? templateBody;
  /// The URL of the file that contains the template body. The URL must point to a template located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/template/demo and oss://ros/template/demo?RegionId=cn-hangzhou. The template must be 1 to 524,288 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  final pulumi.Input<String>? templateUrl;
  /// The version of the template.
  final pulumi.Input<String>? templateVersion;
  /// The timeout period that is specified for the stack creation request. Default to: `60`.
  final pulumi.Input<int>? timeoutInMinutes;
  /// Specifies whether to use the values that were passed last time for the parameters that you do not specify in the current request.
  final pulumi.Input<bool>? usePreviousParameters;

  /// Creates a new [StackArgs].
  /// [createOption] Specifies whether to delete the stack after it is created.
  /// [deletionProtection] Specifies whether to enable deletion protection on the stack. Valid values: `Disabled`, `Enabled`. Default to: `Disabled`
  /// [disableRollback] Specifies whether to disable rollback on stack creation failure. Default to: `false`.
  /// [notificationUrls] The callback URL for receiving stack event N. Only HTTP POST is supported. Maximum value of N: 5.
  /// [parameters] The parameters. If the parameter name and value are not specified, ROS will use the default value specified in the template.
  /// [ramRoleName] The name of the RAM role. ROS assumes the specified RAM role to create the stack and call API operations by using the credentials of the role.
  /// [replacementOption] Specifies whether to enable replacement update after a resource attribute that does not support modification update is changed. Modification update keeps the physical ID of the resource unchanged. However, the resource is deleted and then recreated, and its physical ID is changed if replacement update is enabled.
  /// [retainAllResources] The retain all resources.
  /// [retainResources] Specifies whether to retain the resources in the stack.
  /// [stackName] The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  /// [stackPolicyBody] The structure that contains the stack policy body. The stack policy body must be 1 to 16,384 bytes in length.
  /// [stackPolicyDuringUpdateBody] The structure that contains the body of the temporary overriding stack policy. The stack policy body must be 1 to 16,384 bytes in length.
  /// [stackPolicyDuringUpdateUrl] The URL of the file that contains the temporary overriding stack policy. The URL must point to a policy located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/stack-policy/demo and oss://ros/stack-policy/demo?RegionId=cn-hangzhou. The policy can be up to 16,384 bytes in length and the URL can be up to 1,350 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  /// [stackPolicyUrl] The URL of the file that contains the stack policy. The URL must point to a policy located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/stack-policy/demo and oss://ros/stack-policy/demo?RegionId=cn-hangzhou. The policy can be up to 16,384 bytes in length and the URL can be up to 1,350 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateBody] The structure that contains the template body. The template body must be 1 to 524,288 bytes in length. If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.
  /// [templateUrl] The URL of the file that contains the template body. The URL must point to a template located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/template/demo and oss://ros/template/demo?RegionId=cn-hangzhou. The template must be 1 to 524,288 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  /// [templateVersion] The version of the template.
  /// [timeoutInMinutes] The timeout period that is specified for the stack creation request. Default to: `60`.
  /// [usePreviousParameters] Specifies whether to use the values that were passed last time for the parameters that you do not specify in the current request.
  StackArgs({
    pulumi.Output<String>? createOption,
    pulumi.Output<String>? deletionProtection,
    pulumi.Output<bool>? disableRollback,
    pulumi.Output<List<String>>? notificationUrls,
    pulumi.Output<List<StackParameter>>? parameters,
    pulumi.Output<String>? ramRoleName,
    pulumi.Output<String>? replacementOption,
    pulumi.Output<bool>? retainAllResources,
    pulumi.Output<List<String>>? retainResources,
    required pulumi.Output<String> stackName,
    pulumi.Output<String>? stackPolicyBody,
    pulumi.Output<String>? stackPolicyDuringUpdateBody,
    pulumi.Output<String>? stackPolicyDuringUpdateUrl,
    pulumi.Output<String>? stackPolicyUrl,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateBody,
    pulumi.Output<String>? templateUrl,
    pulumi.Output<String>? templateVersion,
    pulumi.Output<int>? timeoutInMinutes,
    pulumi.Output<bool>? usePreviousParameters,
  }) :
      createOption = pulumi.Input.asOptionalInput<String>(createOption),
      deletionProtection = pulumi.Input.asOptionalInput<String>(deletionProtection),
      disableRollback = pulumi.Input.asOptionalInput<bool>(disableRollback),
      notificationUrls = pulumi.Input.asOptionalInput<List<String>>(notificationUrls),
      parameters = pulumi.Input.asOptionalInput<List<StackParameter>>(parameters),
      ramRoleName = pulumi.Input.asOptionalInput<String>(ramRoleName),
      replacementOption = pulumi.Input.asOptionalInput<String>(replacementOption),
      retainAllResources = pulumi.Input.asOptionalInput<bool>(retainAllResources),
      retainResources = pulumi.Input.asOptionalInput<List<String>>(retainResources),
      stackName = pulumi.Input.asInput<String>(stackName),
      stackPolicyBody = pulumi.Input.asOptionalInput<String>(stackPolicyBody),
      stackPolicyDuringUpdateBody = pulumi.Input.asOptionalInput<String>(stackPolicyDuringUpdateBody),
      stackPolicyDuringUpdateUrl = pulumi.Input.asOptionalInput<String>(stackPolicyDuringUpdateUrl),
      stackPolicyUrl = pulumi.Input.asOptionalInput<String>(stackPolicyUrl),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      templateUrl = pulumi.Input.asOptionalInput<String>(templateUrl),
      templateVersion = pulumi.Input.asOptionalInput<String>(templateVersion),
      timeoutInMinutes = pulumi.Input.asOptionalInput<int>(timeoutInMinutes),
      usePreviousParameters = pulumi.Input.asOptionalInput<bool>(usePreviousParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': ?createOption,
      'deletionProtection': ?deletionProtection,
      'disableRollback': ?disableRollback,
      'notificationUrls': ?notificationUrls,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<StackParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<StackParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ramRoleName': ?ramRoleName,
      'replacementOption': ?replacementOption,
      'retainAllResources': ?retainAllResources,
      'retainResources': ?retainResources,
      'stackName': stackName,
      'stackPolicyBody': ?stackPolicyBody,
      'stackPolicyDuringUpdateBody': ?stackPolicyDuringUpdateBody,
      'stackPolicyDuringUpdateUrl': ?stackPolicyDuringUpdateUrl,
      'stackPolicyUrl': ?stackPolicyUrl,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'templateUrl': ?templateUrl,
      'templateVersion': ?templateVersion,
      'timeoutInMinutes': ?timeoutInMinutes,
      'usePreviousParameters': ?usePreviousParameters,
    };
  }

  factory StackArgs.fromMap(Map<String, dynamic> map) {
    return StackArgs(
      createOption: map['createOption'] == null ? null : pulumi.Output.create<String>(map['createOption'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<String>(map['deletionProtection'] as String),
      disableRollback: map['disableRollback'] == null ? null : pulumi.Output.create<bool>(map['disableRollback'] as bool),
      notificationUrls: map['notificationUrls'] == null ? null : pulumi.Output.create<List<String>>((map['notificationUrls'] as List).cast<String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<StackParameter>>(pulumi.Input.decodeList<StackParameter>(map['parameters'], (value) => StackParameter.fromMap((value as Map).cast<String, dynamic>()))),
      ramRoleName: map['ramRoleName'] == null ? null : pulumi.Output.create<String>(map['ramRoleName'] as String),
      replacementOption: map['replacementOption'] == null ? null : pulumi.Output.create<String>(map['replacementOption'] as String),
      retainAllResources: map['retainAllResources'] == null ? null : pulumi.Output.create<bool>(map['retainAllResources'] as bool),
      retainResources: map['retainResources'] == null ? null : pulumi.Output.create<List<String>>((map['retainResources'] as List).cast<String>()),
      stackName: pulumi.Output.create<String>(map['stackName'] as String),
      stackPolicyBody: map['stackPolicyBody'] == null ? null : pulumi.Output.create<String>(map['stackPolicyBody'] as String),
      stackPolicyDuringUpdateBody: map['stackPolicyDuringUpdateBody'] == null ? null : pulumi.Output.create<String>(map['stackPolicyDuringUpdateBody'] as String),
      stackPolicyDuringUpdateUrl: map['stackPolicyDuringUpdateUrl'] == null ? null : pulumi.Output.create<String>(map['stackPolicyDuringUpdateUrl'] as String),
      stackPolicyUrl: map['stackPolicyUrl'] == null ? null : pulumi.Output.create<String>(map['stackPolicyUrl'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateBody: map['templateBody'] == null ? null : pulumi.Output.create<String>(map['templateBody'] as String),
      templateUrl: map['templateUrl'] == null ? null : pulumi.Output.create<String>(map['templateUrl'] as String),
      templateVersion: map['templateVersion'] == null ? null : pulumi.Output.create<String>(map['templateVersion'] as String),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['timeoutInMinutes'] as int),
      usePreviousParameters: map['usePreviousParameters'] == null ? null : pulumi.Output.create<bool>(map['usePreviousParameters'] as bool),
    );
  }
}

