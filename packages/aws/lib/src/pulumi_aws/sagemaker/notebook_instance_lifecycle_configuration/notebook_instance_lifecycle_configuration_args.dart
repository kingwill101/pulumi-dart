// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NotebookInstanceLifecycleConfiguration.
class NotebookInstanceLifecycleConfigurationArgs {
  /// The name of the lifecycle configuration (must be unique). If omitted, this provider will assign a random, unique name.
  final Input<String>? name;

  /// A shell script (base64-encoded) that runs only once when the SageMaker AI Notebook Instance is created.
  final Input<String>? onCreate;

  /// A shell script (base64-encoded) that runs every time the SageMaker AI Notebook Instance is started including the time it's created.
  final Input<String>? onStart;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  NotebookInstanceLifecycleConfigurationArgs({
    this.name,
    this.onCreate,
    this.onStart,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final onCreateValue = onCreate;
    if (onCreateValue != null) {
      map['onCreate'] = onCreateValue;
    }
    final onStartValue = onStart;
    if (onStartValue != null) {
      map['onStart'] = onStartValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NotebookInstanceLifecycleConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return NotebookInstanceLifecycleConfigurationArgs(
      name: Input.asOptionalInput<String>(map['name']),
      onCreate: Input.asOptionalInput<String>(map['onCreate']),
      onStart: Input.asOptionalInput<String>(map['onStart']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
