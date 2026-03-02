// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Static definitions of the ProactiveDetection configuration rule (same values for all components).
class ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions {
  /// The rule description
  final pulumi.Input<String>? description;
  /// The rule name as it is displayed in UI
  final pulumi.Input<String>? displayName;
  /// URL which displays additional info about the proactive detection rule
  final pulumi.Input<String>? helpUrl;
  /// A flag indicating whether the rule is enabled by default
  final pulumi.Input<bool>? isEnabledByDefault;
  /// A flag indicating whether the rule is hidden (from the UI)
  final pulumi.Input<bool>? isHidden;
  /// A flag indicating whether the rule is in preview
  final pulumi.Input<bool>? isInPreview;
  /// The rule name
  final pulumi.Input<String>? name;
  /// A flag indicating whether email notifications are supported for detections for this rule
  final pulumi.Input<bool>? supportsEmailNotifications;

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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      helpUrl: map['helpUrl'] == null ? null : (map['helpUrl'] as String).input(),
      isEnabledByDefault: map['isEnabledByDefault'] == null ? null : (map['isEnabledByDefault'] as bool).input(),
      isHidden: map['isHidden'] == null ? null : (map['isHidden'] as bool).input(),
      isInPreview: map['isInPreview'] == null ? null : (map['isInPreview'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      supportsEmailNotifications: map['supportsEmailNotifications'] == null ? null : (map['supportsEmailNotifications'] as bool).input(),
    );
  }
}

