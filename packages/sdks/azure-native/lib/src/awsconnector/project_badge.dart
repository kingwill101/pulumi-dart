// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProjectBadge
class ProjectBadge {
  /// &lt;p&gt;Set this to true to generate a publicly accessible URL for your project's build badge.&lt;/p&gt;
  final pulumi.Input<bool>? badgeEnabled;
  /// &lt;p&gt;The publicly-accessible URL through which you can access the build badge for your project. &lt;/p&gt;
  final pulumi.Input<String>? badgeRequestUrl;

  /// Creates a new [ProjectBadge].
  /// [badgeEnabled] &lt;p&gt;Set this to true to generate a publicly accessible URL for your project's build badge.&lt;/p&gt;
  /// [badgeRequestUrl] &lt;p&gt;The publicly-accessible URL through which you can access the build badge for your project. &lt;/p&gt;
  const ProjectBadge({
    this.badgeEnabled,
    this.badgeRequestUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'badgeEnabled': ?badgeEnabled,
      'badgeRequestUrl': ?badgeRequestUrl,
    };
  }

  factory ProjectBadge.fromMap(Map<String, dynamic> map) {
    return ProjectBadge(
      badgeEnabled: (() { final guardedValue = map['badgeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      badgeRequestUrl: (() { final guardedValue = map['badgeRequestUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
