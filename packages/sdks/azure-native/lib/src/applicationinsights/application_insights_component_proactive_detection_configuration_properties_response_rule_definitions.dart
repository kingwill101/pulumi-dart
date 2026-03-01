// ignore_for_file: unused_element, unnecessary_cast


/// Static definitions of the ProactiveDetection configuration rule (same values for all components).
class ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions {
  /// The rule description
  final String? description;
  /// The rule name as it is displayed in UI
  final String? displayName;
  /// URL which displays additional info about the proactive detection rule
  final String? helpUrl;
  /// A flag indicating whether the rule is enabled by default
  final bool? isEnabledByDefault;
  /// A flag indicating whether the rule is hidden (from the UI)
  final bool? isHidden;
  /// A flag indicating whether the rule is in preview
  final bool? isInPreview;
  /// The rule name
  final String? name;
  /// A flag indicating whether email notifications are supported for detections for this rule
  final bool? supportsEmailNotifications;

  /// Creates a new [ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions].
  /// [description] The rule description
  /// [displayName] The rule name as it is displayed in UI
  /// [helpUrl] URL which displays additional info about the proactive detection rule
  /// [isEnabledByDefault] A flag indicating whether the rule is enabled by default
  /// [isHidden] A flag indicating whether the rule is hidden (from the UI)
  /// [isInPreview] A flag indicating whether the rule is in preview
  /// [name] The rule name
  /// [supportsEmailNotifications] A flag indicating whether email notifications are supported for detections for this rule
  ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions({
    this.description,
    this.displayName,
    this.helpUrl,
    this.isEnabledByDefault,
    this.isHidden,
    this.isInPreview,
    this.name,
    this.supportsEmailNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'helpUrl': ?helpUrl,
      'isEnabledByDefault': ?isEnabledByDefault,
      'isHidden': ?isHidden,
      'isInPreview': ?isInPreview,
      'name': ?name,
      'supportsEmailNotifications': ?supportsEmailNotifications,
    };
  }

  factory ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      helpUrl: map['helpUrl'] == null ? null : map['helpUrl'] as String,
      isEnabledByDefault: map['isEnabledByDefault'] == null ? null : map['isEnabledByDefault'] as bool,
      isHidden: map['isHidden'] == null ? null : map['isHidden'] as bool,
      isInPreview: map['isInPreview'] == null ? null : map['isInPreview'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      supportsEmailNotifications: map['supportsEmailNotifications'] == null ? null : map['supportsEmailNotifications'] as bool,
    );
  }
}

