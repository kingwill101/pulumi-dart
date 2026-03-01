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
    required String appName,
    required String appType,
    required String domainId,
    String? region,
    AppResourceSpec? resourceSpec,
    String? spaceName,
    Map<String, String>? tags,
    String? userProfileName,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      appType = pulumi.Input.asInput<String>(appType),
      domainId = pulumi.Input.asInput<String>(domainId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceSpec = pulumi.Input.asOptionalInput<AppResourceSpec>(resourceSpec),
      spaceName = pulumi.Input.asOptionalInput<String>(spaceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userProfileName = pulumi.Input.asOptionalInput<String>(userProfileName);

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
      appName: map['appName'] as String,
      appType: map['appType'] as String,
      domainId: map['domainId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceSpec: map['resourceSpec'] == null ? null : AppResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>()),
      spaceName: map['spaceName'] == null ? null : map['spaceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userProfileName: map['userProfileName'] == null ? null : map['userProfileName'] as String,
    );
  }
}

