// ignore_for_file: unused_element, unnecessary_cast


class ClusterApplication {
  /// The tag of the software.
  final String? tag;

  /// Creates a new [ClusterApplication].
  /// [tag] The tag of the software.
  ClusterApplication({
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': ?tag,
    };
  }

  factory ClusterApplication.fromMap(Map<String, dynamic> map) {
    return ClusterApplication(
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}

