// ignore_for_file: unused_element, unnecessary_cast

/// A set of instance tags.
class Tags {
  /// An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035.
  final List<String>? items;

  /// Creates a new [Tags].
  /// [items] An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035.
  Tags({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': ?items};
  }

  factory Tags.fromMap(Map<String, dynamic> map) {
    return Tags(
      items: map['items'] == null
          ? null
          : (map['items'] as List).cast<String>(),
    );
  }
}
