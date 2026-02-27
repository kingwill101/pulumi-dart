// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for StudioLifecycleConfig.
class StudioLifecycleConfigArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  final Input<String> studioLifecycleConfigAppType;

  /// The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  final Input<String> studioLifecycleConfigContent;

  /// The name of the Studio Lifecycle Configuration to create.
  final Input<String> studioLifecycleConfigName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  StudioLifecycleConfigArgs({
    this.region,
    required this.studioLifecycleConfigAppType,
    required this.studioLifecycleConfigContent,
    required this.studioLifecycleConfigName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['studioLifecycleConfigAppType'] = studioLifecycleConfigAppType;
    map['studioLifecycleConfigContent'] = studioLifecycleConfigContent;
    map['studioLifecycleConfigName'] = studioLifecycleConfigName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory StudioLifecycleConfigArgs.fromMap(Map<String, dynamic> map) {
    return StudioLifecycleConfigArgs(
      region: Input.asOptionalInput<String>(map['region']),
      studioLifecycleConfigAppType:
          Input.asInput<String>(map['studioLifecycleConfigAppType']),
      studioLifecycleConfigContent:
          Input.asInput<String>(map['studioLifecycleConfigContent']),
      studioLifecycleConfigName:
          Input.asInput<String>(map['studioLifecycleConfigName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
