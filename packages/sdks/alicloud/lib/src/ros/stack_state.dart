// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_parameter.dart';

/// Input properties used for looking up and filtering Stack resources.
class StackState {
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
  final pulumi.Input<String>? stackName;
  /// The structure that contains the stack policy body. The stack policy body must be 1 to 16,384 bytes in length.
  final pulumi.Input<String>? stackPolicyBody;
  /// The structure that contains the body of the temporary overriding stack policy. The stack policy body must be 1 to 16,384 bytes in length.
  final pulumi.Input<String>? stackPolicyDuringUpdateBody;
  /// The URL of the file that contains the temporary overriding stack policy. The URL must point to a policy located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/stack-policy/demo and oss://ros/stack-policy/demo?RegionId=cn-hangzhou. The policy can be up to 16,384 bytes in length and the URL can be up to 1,350 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  final pulumi.Input<String>? stackPolicyDuringUpdateUrl;
  /// The URL of the file that contains the stack policy. The URL must point to a policy located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/stack-policy/demo and oss://ros/stack-policy/demo?RegionId=cn-hangzhou. The policy can be up to 16,384 bytes in length and the URL can be up to 1,350 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  final pulumi.Input<String>? stackPolicyUrl;
  /// The status of Stack.
  final pulumi.Input<String>? status;
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

  /// Creates a new [StackState].
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
  /// [status] The status of Stack.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateBody] The structure that contains the template body. The template body must be 1 to 524,288 bytes in length. If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.
  /// [templateUrl] The URL of the file that contains the template body. The URL must point to a template located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/template/demo and oss://ros/template/demo?RegionId=cn-hangzhou. The template must be 1 to 524,288 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  /// [templateVersion] The version of the template.
  /// [timeoutInMinutes] The timeout period that is specified for the stack creation request. Default to: `60`.
  /// [usePreviousParameters] Specifies whether to use the values that were passed last time for the parameters that you do not specify in the current request.
  StackState({
    this.createOption,
    this.deletionProtection,
    this.disableRollback,
    this.notificationUrls,
    this.parameters,
    this.ramRoleName,
    this.replacementOption,
    this.retainAllResources,
    this.retainResources,
    this.stackName,
    this.stackPolicyBody,
    this.stackPolicyDuringUpdateBody,
    this.stackPolicyDuringUpdateUrl,
    this.stackPolicyUrl,
    this.status,
    this.tags,
    this.templateBody,
    this.templateUrl,
    this.templateVersion,
    this.timeoutInMinutes,
    this.usePreviousParameters,
  });

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
      'stackName': ?stackName,
      'stackPolicyBody': ?stackPolicyBody,
      'stackPolicyDuringUpdateBody': ?stackPolicyDuringUpdateBody,
      'stackPolicyDuringUpdateUrl': ?stackPolicyDuringUpdateUrl,
      'stackPolicyUrl': ?stackPolicyUrl,
      'status': ?status,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'templateUrl': ?templateUrl,
      'templateVersion': ?templateVersion,
      'timeoutInMinutes': ?timeoutInMinutes,
      'usePreviousParameters': ?usePreviousParameters,
    };
  }

  factory StackState.fromMap(Map<String, dynamic> map) {
    return StackState(
      createOption: (() { final guardedValue = map['createOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableRollback: (() { final guardedValue = map['disableRollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notificationUrls: (() { final guardedValue = map['notificationUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StackParameter>(guardedValue, (value) => StackParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ramRoleName: (() { final guardedValue = map['ramRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replacementOption: (() { final guardedValue = map['replacementOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retainAllResources: (() { final guardedValue = map['retainAllResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retainResources: (() { final guardedValue = map['retainResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      stackName: (() { final guardedValue = map['stackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackPolicyBody: (() { final guardedValue = map['stackPolicyBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackPolicyDuringUpdateBody: (() { final guardedValue = map['stackPolicyDuringUpdateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackPolicyDuringUpdateUrl: (() { final guardedValue = map['stackPolicyDuringUpdateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackPolicyUrl: (() { final guardedValue = map['stackPolicyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateBody: (() { final guardedValue = map['templateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateUrl: (() { final guardedValue = map['templateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateVersion: (() { final guardedValue = map['templateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutInMinutes: (() { final guardedValue = map['timeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      usePreviousParameters: (() { final guardedValue = map['usePreviousParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

