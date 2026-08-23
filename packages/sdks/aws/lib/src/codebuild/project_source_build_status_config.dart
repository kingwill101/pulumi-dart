// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectSourceBuildStatusConfig {
  /// Specifies the context of the build status CodeBuild sends to the source provider. The usage of
  /// this parameter depends on the source provider.
  final pulumi.Input<String>? context;
  /// Specifies the target url of the build status CodeBuild sends to the source provider. The
  /// usage of this parameter depends on the source provider.
  final pulumi.Input<String>? targetUrl;

  /// Creates a new [ProjectSourceBuildStatusConfig].
  /// [context] Specifies the context of the build status CodeBuild sends to the source provider. The usage of
  /// [targetUrl] Specifies the target url of the build status CodeBuild sends to the source provider. The
  const ProjectSourceBuildStatusConfig({
    this.context,
    this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'targetUrl': ?targetUrl,
    };
  }

  factory ProjectSourceBuildStatusConfig.fromMap(Map<String, dynamic> map) {
    return ProjectSourceBuildStatusConfig(
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetUrl: (() { final guardedValue = map['targetUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
