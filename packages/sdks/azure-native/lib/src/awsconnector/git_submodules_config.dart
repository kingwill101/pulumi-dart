// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GitSubmodulesConfig
class GitSubmodulesConfig {
  /// <p> Set to true to fetch Git submodules for your CodeBuild build project. </p>
  final pulumi.Input<bool>? fetchSubmodules;

  /// Creates a new [GitSubmodulesConfig].
  /// [fetchSubmodules] <p> Set to true to fetch Git submodules for your CodeBuild build project. </p>
  GitSubmodulesConfig({
    this.fetchSubmodules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchSubmodules': ?fetchSubmodules,
    };
  }

  factory GitSubmodulesConfig.fromMap(Map<String, dynamic> map) {
    return GitSubmodulesConfig(
      fetchSubmodules: map['fetchSubmodules'] == null ? null : (map['fetchSubmodules'] as bool).input(),
    );
  }
}

