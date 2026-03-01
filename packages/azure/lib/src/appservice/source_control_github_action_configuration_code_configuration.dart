// ignore_for_file: unused_element, unnecessary_cast


class SourceControlGithubActionConfigurationCodeConfiguration {
  /// The value to use for the Runtime Stack in the workflow file content for code base apps. Possible values are `dotnetcore`, `spring`, `tomcat`, `node` and `python`. Changing this forces a new resource to be created.
  final String runtimeStack;
  /// The value to use for the Runtime Version in the workflow file content for code base apps. Changing this forces a new resource to be created.
  final String runtimeVersion;

  /// Creates a new [SourceControlGithubActionConfigurationCodeConfiguration].
  /// [runtimeStack] The value to use for the Runtime Stack in the workflow file content for code base apps. Possible values are `dotnetcore`, `spring`, `tomcat`, `node` and `python`. Changing this forces a new resource to be created.
  /// [runtimeVersion] The value to use for the Runtime Version in the workflow file content for code base apps. Changing this forces a new resource to be created.
  SourceControlGithubActionConfigurationCodeConfiguration({
    required this.runtimeStack,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeStack': runtimeStack,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory SourceControlGithubActionConfigurationCodeConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceControlGithubActionConfigurationCodeConfiguration(
      runtimeStack: map['runtimeStack'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}

