// ignore_for_file: unused_element, unnecessary_cast


class SourceControlSlotGithubActionConfigurationCodeConfiguration {
  /// The value to use for the Runtime Stack in the workflow file content for code base apps. Changing this forces a new resource to be created. Possible values are `dotnetcore`, `spring`, `tomcat`, `node` and `python`.
  final String runtimeStack;
  /// The value to use for the Runtime Version in the workflow file content for code base apps. Changing this forces a new resource to be created.
  final String runtimeVersion;

  /// Creates a new [SourceControlSlotGithubActionConfigurationCodeConfiguration].
  /// [runtimeStack] The value to use for the Runtime Stack in the workflow file content for code base apps. Changing this forces a new resource to be created. Possible values are `dotnetcore`, `spring`, `tomcat`, `node` and `python`.
  /// [runtimeVersion] The value to use for the Runtime Version in the workflow file content for code base apps. Changing this forces a new resource to be created.
  SourceControlSlotGithubActionConfigurationCodeConfiguration({
    required this.runtimeStack,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeStack': runtimeStack,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory SourceControlSlotGithubActionConfigurationCodeConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceControlSlotGithubActionConfigurationCodeConfiguration(
      runtimeStack: map['runtimeStack'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}

