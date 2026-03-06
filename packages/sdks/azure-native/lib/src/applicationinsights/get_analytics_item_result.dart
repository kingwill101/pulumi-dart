// ignore_for_file: unused_element, unnecessary_cast

import 'application_insights_component_analytics_item_properties_response.dart';

/// Result data returned by getAnalyticsItem.
class GetAnalyticsItemResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The content of this item
  final String? content;
  /// Internally assigned unique id of the item definition.
  final String? id;
  /// The user-defined name of the item.
  final String? name;
  /// A set of properties that can be defined in the context of a specific item type. Each type may have its own properties.
  final ApplicationInsightsComponentAnalyticsItemPropertiesResponse properties;
  /// Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  final String? scope;
  /// Date and time in UTC when this item was created.
  final String timeCreated;
  /// Date and time in UTC of the last modification that was made to this item.
  final String timeModified;
  /// Enum indicating the type of the Analytics item.
  final String? type;
  /// This instance's version of the data model. This can change as new features are added.
  final String version;

  /// Creates a new [GetAnalyticsItemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [content] The content of this item
  /// [id] Internally assigned unique id of the item definition.
  /// [name] The user-defined name of the item.
  /// [properties] A set of properties that can be defined in the context of a specific item type. Each type may have its own properties.
  /// [scope] Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  /// [timeCreated] Date and time in UTC when this item was created.
  /// [timeModified] Date and time in UTC of the last modification that was made to this item.
  /// [type] Enum indicating the type of the Analytics item.
  /// [version] This instance's version of the data model. This can change as new features are added.
  const GetAnalyticsItemResult({
    required this.azureApiVersion,
    this.content,
    this.id,
    this.name,
    required this.properties,
    this.scope,
    required this.timeCreated,
    required this.timeModified,
    this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'content': ?content,
      'id': ?id,
      'name': ?name,
      'properties': properties.toMap(),
      'scope': ?scope,
      'timeCreated': timeCreated,
      'timeModified': timeModified,
      'type': ?type,
      'version': version,
    };
  }

  factory GetAnalyticsItemResult.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsItemResult(
      azureApiVersion: map['azureApiVersion'] as String,
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: ApplicationInsightsComponentAnalyticsItemPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeCreated: map['timeCreated'] as String,
      timeModified: map['timeModified'] as String,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: map['version'] as String,
    );
  }
}

