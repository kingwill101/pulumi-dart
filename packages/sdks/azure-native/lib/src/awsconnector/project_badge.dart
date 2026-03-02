// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProjectBadge
class ProjectBadge {
  /// <p>Set this to true to generate a publicly accessible URL for your project's build badge.</p>
  final pulumi.Input<bool>? badgeEnabled;
  /// <p>The publicly-accessible URL through which you can access the build badge for your project. </p>
  final pulumi.Input<String>? badgeRequestUrl;

  /// Creates a new [ProjectBadge].
  /// [badgeEnabled] <p>Set this to true to generate a publicly accessible URL for your project's build badge.</p>
  /// [badgeRequestUrl] <p>The publicly-accessible URL through which you can access the build badge for your project. </p>
  ProjectBadge({
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
      badgeEnabled: map['badgeEnabled'] == null ? null : (map['badgeEnabled'] as bool).input(),
      badgeRequestUrl: map['badgeRequestUrl'] == null ? null : (map['badgeRequestUrl'] as String).input(),
    );
  }
}

