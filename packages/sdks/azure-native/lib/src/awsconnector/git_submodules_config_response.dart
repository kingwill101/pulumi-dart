// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GitSubmodulesConfig
class GitSubmodulesConfigResponse {
  /// <p> Set to true to fetch Git submodules for your CodeBuild build project. </p>
  final pulumi.Input<bool>? fetchSubmodules;

  /// Creates a new [GitSubmodulesConfigResponse].
  /// [fetchSubmodules] <p> Set to true to fetch Git submodules for your CodeBuild build project. </p>
  GitSubmodulesConfigResponse({
    this.fetchSubmodules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchSubmodules': ?fetchSubmodules,
    };
  }

  factory GitSubmodulesConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitSubmodulesConfigResponse(
      fetchSubmodules: map['fetchSubmodules'] == null ? null : (map['fetchSubmodules'] as bool).input(),
    );
  }
}

