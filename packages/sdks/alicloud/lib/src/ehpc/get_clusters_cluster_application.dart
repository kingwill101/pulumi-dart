// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterApplication {
  /// Application Tags.
  final pulumi.Input<String> tag;

  /// Creates a new [GetClustersClusterApplication].
  /// [tag] Application Tags.
  const GetClustersClusterApplication({
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
    };
  }

  factory GetClustersClusterApplication.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterApplication(
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}

