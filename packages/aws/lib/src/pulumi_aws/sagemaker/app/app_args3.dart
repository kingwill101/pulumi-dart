// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_resource_spec/app_resource_spec.dart';

/// The set of arguments for App.
class AppArgs3 {
  /// The name of the app.
  final Input<String> appName;

  /// The type of app. Valid values are `JupyterServer`, `KernelGateway`, `RStudioServerPro`, `RSessionGateway`, `TensorBoard`, `CodeEditor`, `JupyterLab`, `DetailedProfiler`, and `Canvas`.
  final Input<String> appType;

  /// The domain ID.
  final Input<String> domainId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.See Resource Spec below.
  final Input<AppResourceSpec>? resourceSpec;

  /// The name of the space. At least one of <span pulumi-lang-nodejs="`userProfileName`" pulumi-lang-dotnet="`UserProfileName`" pulumi-lang-go="`userProfileName`" pulumi-lang-python="`user_profile_name`" pulumi-lang-yaml="`userProfileName`" pulumi-lang-java="`userProfileName`">`user_profile_name`</span> or <span pulumi-lang-nodejs="`spaceName`" pulumi-lang-dotnet="`SpaceName`" pulumi-lang-go="`spaceName`" pulumi-lang-python="`space_name`" pulumi-lang-yaml="`spaceName`" pulumi-lang-java="`spaceName`">`space_name`</span> required.
  final Input<String>? spaceName;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The user profile name. At least one of <span pulumi-lang-nodejs="`userProfileName`" pulumi-lang-dotnet="`UserProfileName`" pulumi-lang-go="`userProfileName`" pulumi-lang-python="`user_profile_name`" pulumi-lang-yaml="`userProfileName`" pulumi-lang-java="`userProfileName`">`user_profile_name`</span> or <span pulumi-lang-nodejs="`spaceName`" pulumi-lang-dotnet="`SpaceName`" pulumi-lang-go="`spaceName`" pulumi-lang-python="`space_name`" pulumi-lang-yaml="`spaceName`" pulumi-lang-java="`spaceName`">`space_name`</span> required.
  final Input<String>? userProfileName;

  AppArgs3({
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
    final map = <String, dynamic>{};
    map['appName'] = appName;
    map['appType'] = appType;
    map['domainId'] = domainId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceSpecValue = resourceSpec;
    if (resourceSpecValue != null) {
      map['resourceSpec'] =
          Input.mapOptionalInputValue<AppResourceSpec, Map<String, dynamic>>(
              resourceSpecValue, (value) => value.toMap());
    }
    final spaceNameValue = spaceName;
    if (spaceNameValue != null) {
      map['spaceName'] = spaceNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userProfileNameValue = userProfileName;
    if (userProfileNameValue != null) {
      map['userProfileName'] = userProfileNameValue;
    }
    return map;
  }

  factory AppArgs3.fromMap(Map<String, dynamic> map) {
    return AppArgs3(
      appName: Input.asInput<String>(map['appName']),
      appType: Input.asInput<String>(map['appType']),
      domainId: Input.asInput<String>(map['domainId']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceSpec: Input.asOptionalInput<AppResourceSpec>(map['resourceSpec']),
      spaceName: Input.asOptionalInput<String>(map['spaceName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userProfileName: Input.asOptionalInput<String>(map['userProfileName']),
    );
  }
}
