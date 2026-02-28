// ignore_for_file: unused_element, unnecessary_cast

/// A starting intent specified by an action, uri, and categories.
class StartActivityIntentResponse {
  /// Action name. Required for START_ACTIVITY.
  final String action;

  /// Intent categories to set on the intent.
  final List<String> categories;

  /// URI for the action.
  final String uri;

  /// Creates a new [StartActivityIntentResponse].
  /// [action] Action name. Required for START_ACTIVITY.
  /// [categories] Intent categories to set on the intent.
  /// [uri] URI for the action.
  StartActivityIntentResponse({
    required this.action,
    required this.categories,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['categories'] = categories;
    map['uri'] = uri;
    return map;
  }

  factory StartActivityIntentResponse.fromMap(Map<String, dynamic> map) {
    return StartActivityIntentResponse(
      action: map['action'] as String,
      categories: (map['categories'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}
