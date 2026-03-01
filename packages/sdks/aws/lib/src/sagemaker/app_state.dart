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
    pulumi.Output<String>? appName,
    pulumi.Output<String>? appType,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? region,
    pulumi.Output<AppResourceSpec>? resourceSpec,
    pulumi.Output<String>? spaceName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userProfileName,
  }) :
      appName = pulumi.Input.asOptionalInput<String>(appName),
      appType = pulumi.Input.asOptionalInput<String>(appType),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceSpec = pulumi.Input.asOptionalInput<AppResourceSpec>(resourceSpec),
      spaceName = pulumi.Input.asOptionalInput<String>(spaceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userProfileName = pulumi.Input.asOptionalInput<String>(userProfileName);

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
      appName: map['appName'] == null ? null : pulumi.Output.create<String>(map['appName'] as String),
      appType: map['appType'] == null ? null : pulumi.Output.create<String>(map['appType'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceSpec: map['resourceSpec'] == null ? null : pulumi.Output.create<AppResourceSpec>(AppResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())),
      spaceName: map['spaceName'] == null ? null : pulumi.Output.create<String>(map['spaceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userProfileName: map['userProfileName'] == null ? null : pulumi.Output.create<String>(map['userProfileName'] as String),
    );
  }
}

