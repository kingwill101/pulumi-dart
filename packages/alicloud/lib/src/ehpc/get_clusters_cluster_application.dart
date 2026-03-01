// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterApplication {
  /// Application Tags.
  final String tag;

  /// Creates a new [GetClustersClusterApplication].
  /// [tag] Application Tags.
  GetClustersClusterApplication({
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
    };
  }

  factory GetClustersClusterApplication.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterApplication(
      tag: map['tag'] as String,
    );
  }
}

