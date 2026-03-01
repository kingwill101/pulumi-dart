// ignore_for_file: unused_element, unnecessary_cast


/// Actions to invoke when the alert fires.
class ActionsResponse {
  /// Action Group resource Ids to invoke when the alert fires.
  final List<String>? actionGroups;
  /// The properties of an action properties.
  final Map<String, String>? actionProperties;
  /// The properties of an alert payload.
  final Map<String, String>? customProperties;

  /// Creates a new [ActionsResponse].
  /// [actionGroups] Action Group resource Ids to invoke when the alert fires.
  /// [actionProperties] The properties of an action properties.
  /// [customProperties] The properties of an alert payload.
  ActionsResponse({
    this.actionGroups,
    this.actionProperties,
    this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?actionGroups,
      'actionProperties': ?actionProperties,
      'customProperties': ?customProperties,
    };
  }

  factory ActionsResponse.fromMap(Map<String, dynamic> map) {
    return ActionsResponse(
      actionGroups: map['actionGroups'] == null ? null : (map['actionGroups'] as List).cast<String>(),
      actionProperties: map['actionProperties'] == null ? null : (map['actionProperties'] as Map).cast<String, String>(),
      customProperties: map['customProperties'] == null ? null : (map['customProperties'] as Map).cast<String, String>(),
    );
  }
}

