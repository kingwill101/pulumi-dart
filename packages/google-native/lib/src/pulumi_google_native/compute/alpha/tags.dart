// ignore_for_file: unused_element, unnecessary_cast

/// A set of instance tags.
class Tags {
  /// An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035.
  final List<String>? items;

  Tags({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    return map;
  }

  factory Tags.fromMap(Map<String, dynamic> map) {
    return Tags(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
