// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOutpostConfigEtcdPlacement {
  /// Placement group spread level for etcd instances. Valid values: `host`, `rack`.
  final pulumi.Input<String?>? spreadLevel;

  /// Creates a new [ClusterOutpostConfigEtcdPlacement].
  /// [spreadLevel] Placement group spread level for etcd instances. Valid values: `host`, `rack`.
  const ClusterOutpostConfigEtcdPlacement({
    this.spreadLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spreadLevel': ?spreadLevel,
    };
  }

  factory ClusterOutpostConfigEtcdPlacement.fromMap(Map<String, dynamic> map) {
    return ClusterOutpostConfigEtcdPlacement(
      spreadLevel: (() { final guardedValue = map['spreadLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
