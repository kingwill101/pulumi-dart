// ignore_for_file: unused_element, unnecessary_cast

/// A set of instance tags.
class TagsComputeV1 {
  /// An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035.
  final List<String>? items;

  TagsComputeV1({
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

  factory TagsComputeV1.fromMap(Map<String, dynamic> map) {
    return TagsComputeV1(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
