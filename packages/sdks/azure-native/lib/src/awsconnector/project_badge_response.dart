// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProjectBadge
class ProjectBadgeResponse {
  /// <p>Set this to true to generate a publicly accessible URL for your project's build badge.</p>
  final bool? badgeEnabled;
  /// <p>The publicly-accessible URL through which you can access the build badge for your project. </p>
  final String? badgeRequestUrl;

  /// Creates a new [ProjectBadgeResponse].
  /// [badgeEnabled] <p>Set this to true to generate a publicly accessible URL for your project's build badge.</p>
  /// [badgeRequestUrl] <p>The publicly-accessible URL through which you can access the build badge for your project. </p>
  ProjectBadgeResponse({
    this.badgeEnabled,
    this.badgeRequestUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'badgeEnabled': ?badgeEnabled,
      'badgeRequestUrl': ?badgeRequestUrl,
    };
  }

  factory ProjectBadgeResponse.fromMap(Map<String, dynamic> map) {
    return ProjectBadgeResponse(
      badgeEnabled: map['badgeEnabled'] == null ? null : map['badgeEnabled'] as bool,
      badgeRequestUrl: map['badgeRequestUrl'] == null ? null : map['badgeRequestUrl'] as String,
    );
  }
}

