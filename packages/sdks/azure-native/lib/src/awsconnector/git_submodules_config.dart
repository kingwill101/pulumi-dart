// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GitSubmodulesConfig
class GitSubmodulesConfig {
  /// &lt;p&gt; Set to true to fetch Git submodules for your CodeBuild build project. &lt;/p&gt;
  final pulumi.Input<bool?>? fetchSubmodules;

  /// Creates a new [GitSubmodulesConfig].
  /// [fetchSubmodules] &lt;p&gt; Set to true to fetch Git submodules for your CodeBuild build project. &lt;/p&gt;
  const GitSubmodulesConfig({
    this.fetchSubmodules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchSubmodules': ?fetchSubmodules,
    };
  }

  factory GitSubmodulesConfig.fromMap(Map<String, dynamic> map) {
    return GitSubmodulesConfig(
      fetchSubmodules: (() { final guardedValue = map['fetchSubmodules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
