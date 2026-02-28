// ignore_for_file: unused_element, unnecessary_cast

/// A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
class CollapsibleGroupResponse {
  /// The collapsed state of the widget on first page load.
  final bool collapsed;

  /// Creates a new [CollapsibleGroupResponse].
  /// [collapsed] The collapsed state of the widget on first page load.
  CollapsibleGroupResponse({
    required this.collapsed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collapsed'] = collapsed;
    return map;
  }

  factory CollapsibleGroupResponse.fromMap(Map<String, dynamic> map) {
    return CollapsibleGroupResponse(
      collapsed: map['collapsed'] as bool,
    );
  }
}
