// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_resource_spec.dart';

/// {@template pulumi_sagemaker_app_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_app_app_args_doc}
class AppArgs {
  /// The name of the app.
  final pulumi.Input<String> appName;
  /// The type of app. Valid values are `JupyterServer`, `KernelGateway`, `RStudioServerPro`, `RSessionGateway`, `TensorBoard`, `CodeEditor`, `JupyterLab`, `DetailedProfiler`, and `Canvas`.
  final pulumi.Input<String> appType;
  /// The domain ID.
  final pulumi.Input<String> domainId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.See Resource Spec below.
  final pulumi.Input<AppResourceSpec>? resourceSpec;
  /// The name of the space. At least one of `user_profile_name` or `space_name` required.
  final pulumi.Input<String>? spaceName;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The user profile name. At least one of `user_profile_name` or `space_name` required.
  final pulumi.Input<String>? userProfileName;

  /// Creates a new [AppArgs].
  /// [appName] The name of the app.
  /// [appType] The type of app. Valid values are `JupyterServer`, `KernelGateway`, `RStudioServerPro`, `RSessionGateway`, `TensorBoard`, `CodeEditor`, `JupyterLab`, `DetailedProfiler`, and `Canvas`.
  /// [domainId] The domain ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceSpec] The instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.See Resource Spec below.
  /// [spaceName] The name of the space. At least one of `user_profile_name` or `space_name` required.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userProfileName] The user profile name. At least one of `user_profile_name` or `space_name` required.
  AppArgs({
    required this.appName,
    required this.appType,
    required this.domainId,
    this.region,
    this.resourceSpec,
    this.spaceName,
    this.tags,
    this.userProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'appType': appType,
      'domainId': domainId,
      'region': ?region,
      'resourceSpec': ?pulumi.Input.mapOptionalInputValue<AppResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'spaceName': ?spaceName,
      'tags': ?tags,
      'userProfileName': ?userProfileName,
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      appName: pulumi.Input.fromValue(map['appName'] as String),
      appType: pulumi.Input.fromValue(map['appType'] as String),
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceSpec: (() { final guardedValue = map['resourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spaceName: (() { final guardedValue = map['spaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userProfileName: (() { final guardedValue = map['userProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

