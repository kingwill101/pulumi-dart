// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_resource_spec.dart';

/// Input properties used for looking up and filtering App resources.
class AppState {
  /// The name of the app.
  final pulumi.Input<String>? appName;
  /// The type of app. Valid values are `JupyterServer`, `KernelGateway`, `RStudioServerPro`, `RSessionGateway`, `TensorBoard`, `CodeEditor`, `JupyterLab`, `DetailedProfiler`, and `Canvas`.
  final pulumi.Input<String>? appType;
  /// The Amazon Resource Name (ARN) of the app.
  final pulumi.Input<String>? arn;
  /// The domain ID.
  final pulumi.Input<String>? domainId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.See Resource Spec below.
  final pulumi.Input<AppResourceSpec>? resourceSpec;
  /// The name of the space. At least one of `user_profile_name` or `space_name` required.
  final pulumi.Input<String>? spaceName;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The user profile name. At least one of `user_profile_name` or `space_name` required.
  final pulumi.Input<String>? userProfileName;

  /// Creates a new [AppState].
  /// [appName] The name of the app.
  /// [appType] The type of app. Valid values are `JupyterServer`, `KernelGateway`, `RStudioServerPro`, `RSessionGateway`, `TensorBoard`, `CodeEditor`, `JupyterLab`, `DetailedProfiler`, and `Canvas`.
  /// [arn] The Amazon Resource Name (ARN) of the app.
  /// [domainId] The domain ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceSpec] The instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.See Resource Spec below.
  /// [spaceName] The name of the space. At least one of `user_profile_name` or `space_name` required.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userProfileName] The user profile name. At least one of `user_profile_name` or `space_name` required.
  AppState({
    this.appName,
    this.appType,
    this.arn,
    this.domainId,
    this.region,
    this.resourceSpec,
    this.spaceName,
    this.tags,
    this.tagsAll,
    this.userProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'appType': ?appType,
      'arn': ?arn,
      'domainId': ?domainId,
      'region': ?region,
      'resourceSpec': ?pulumi.Input.mapOptionalInputValue<AppResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'spaceName': ?spaceName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userProfileName': ?userProfileName,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      appName: map['appName'] == null ? null : ((map['appName'] as String).input()).input(),
      appType: map['appType'] == null ? null : ((map['appType'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      domainId: map['domainId'] == null ? null : ((map['domainId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceSpec: map['resourceSpec'] == null ? null : ((AppResourceSpec.fromMap((map['resourceSpec']! as Map).cast<String, dynamic>())).input()).input(),
      spaceName: map['spaceName'] == null ? null : ((map['spaceName'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      userProfileName: map['userProfileName'] == null ? null : ((map['userProfileName'] as String).input()).input(),
    );
  }
}

