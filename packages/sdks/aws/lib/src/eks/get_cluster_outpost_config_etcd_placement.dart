// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterOutpostConfigEtcdPlacement {
  /// Placement group spread level for etcd instances.
  final pulumi.Input<String> spreadLevel;

  /// Creates a new [GetClusterOutpostConfigEtcdPlacement].
  /// [spreadLevel] Placement group spread level for etcd instances.
  const GetClusterOutpostConfigEtcdPlacement({
    required this.spreadLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spreadLevel': spreadLevel,
    };
  }

  factory GetClusterOutpostConfigEtcdPlacement.fromMap(Map<String, dynamic> map) {
    return GetClusterOutpostConfigEtcdPlacement(
      spreadLevel: pulumi.Input.fromValue(map['spreadLevel'] as String),
    );
  }
}
