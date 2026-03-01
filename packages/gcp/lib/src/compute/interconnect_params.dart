// ignore_for_file: unused_element, unnecessary_cast

class InterconnectParams {
  /// Resource manager tags to be bound to the interconnect. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final Map<String, String>? resourceManagerTags;

  /// Creates a new [InterconnectParams].
  /// [resourceManagerTags] Resource manager tags to be bound to the interconnect. Tag keys and values have the
  InterconnectParams({this.resourceManagerTags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceManagerTags': ?resourceManagerTags};
  }

  factory InterconnectParams.fromMap(Map<String, dynamic> map) {
    return InterconnectParams(
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
