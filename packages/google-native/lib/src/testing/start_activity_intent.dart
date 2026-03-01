// ignore_for_file: unused_element, unnecessary_cast

/// A starting intent specified by an action, uri, and categories.
class StartActivityIntent {
  /// Action name. Required for START_ACTIVITY.
  final String? action;

  /// Intent categories to set on the intent.
  final List<String>? categories;

  /// URI for the action.
  final String? uri;

  /// Creates a new [StartActivityIntent].
  /// [action] Action name. Required for START_ACTIVITY.
  /// [categories] Intent categories to set on the intent.
  /// [uri] URI for the action.
  StartActivityIntent({this.action, this.categories, this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'categories': ?categories,
      'uri': ?uri,
    };
  }

  factory StartActivityIntent.fromMap(Map<String, dynamic> map) {
    return StartActivityIntent(
      action: map['action'] == null ? null : map['action'] as String,
      categories: map['categories'] == null
          ? null
          : (map['categories'] as List).cast<String>(),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
