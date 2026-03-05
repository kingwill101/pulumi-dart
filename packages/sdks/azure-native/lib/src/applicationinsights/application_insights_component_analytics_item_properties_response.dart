// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of properties that can be defined in the context of a specific item type. Each type may have its own properties.
class ApplicationInsightsComponentAnalyticsItemPropertiesResponse {
  /// A function alias, used when the type of the item is Function
  final pulumi.Input<String>? functionAlias;

  /// Creates a new [ApplicationInsightsComponentAnalyticsItemPropertiesResponse].
  /// [functionAlias] A function alias, used when the type of the item is Function
  ApplicationInsightsComponentAnalyticsItemPropertiesResponse({
    this.functionAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAlias': ?functionAlias,
    };
  }

  factory ApplicationInsightsComponentAnalyticsItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsComponentAnalyticsItemPropertiesResponse(
      functionAlias: (() { final guardedValue = map['functionAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

