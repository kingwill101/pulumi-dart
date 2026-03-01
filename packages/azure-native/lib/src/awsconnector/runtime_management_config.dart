// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RuntimeManagementConfig
class RuntimeManagementConfig {
  /// The ARN of the runtime version you want the function to use.  This is only required if you're using the *Manual* runtime update mode.
  final String? runtimeVersionArn;
  /// Specify the runtime update mode.  +   *Auto (default)* - Automatically update to the most recent and secure runtime version using a [Two-phase runtime version rollout](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase). This is the best choice for most customers to ensure they always benefit from runtime updates.  +   *FunctionUpdate* - LAM updates the runtime of you function to the most recent and secure runtime version when you update your function. This approach synchronizes runtime updates with function deployments, giving you control over when runtime updates are applied and allowing you to detect and mitigate rare runtime update incompatibilities early. When using this setting, you need to regularly update your functions to keep their runtime up-to-date.  +   *Manual* - You specify a runtime version in your function configuration. The function will use this runtime version indefinitely. In the rare case where a new runtime version is incompatible with an existing function, this allows you to roll back your function to an earlier runtime version. For more information, see [Roll back a runtime version](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback).    *Valid Values*: ``Auto`` | ``FunctionUpdate`` | ``Manual``
  final String? updateRuntimeOn;

  /// Creates a new [RuntimeManagementConfig].
  /// [runtimeVersionArn] The ARN of the runtime version you want the function to use.  This is only required if you're using the *Manual* runtime update mode.
  /// [updateRuntimeOn] Specify the runtime update mode.  +   *Auto (default)* - Automatically update to the most recent and secure runtime version using a [Two-phase runtime version rollout](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase). This is the best choice for most customers to ensure they always benefit from runtime updates.  +   *FunctionUpdate* - LAM updates the runtime of you function to the most recent and secure runtime version when you update your function. This approach synchronizes runtime updates with function deployments, giving you control over when runtime updates are applied and allowing you to detect and mitigate rare runtime update incompatibilities early. When using this setting, you need to regularly update your functions to keep their runtime up-to-date.  +   *Manual* - You specify a runtime version in your function configuration. The function will use this runtime version indefinitely. In the rare case where a new runtime version is incompatible with an existing function, this allows you to roll back your function to an earlier runtime version. For more information, see [Roll back a runtime version](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback).    *Valid Values*: ``Auto`` | ``FunctionUpdate`` | ``Manual``
  RuntimeManagementConfig({
    this.runtimeVersionArn,
    this.updateRuntimeOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeVersionArn': ?runtimeVersionArn,
      'updateRuntimeOn': ?updateRuntimeOn,
    };
  }

  factory RuntimeManagementConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeManagementConfig(
      runtimeVersionArn: map['runtimeVersionArn'] == null ? null : map['runtimeVersionArn'] as String,
      updateRuntimeOn: map['updateRuntimeOn'] == null ? null : map['updateRuntimeOn'] as String,
    );
  }
}

