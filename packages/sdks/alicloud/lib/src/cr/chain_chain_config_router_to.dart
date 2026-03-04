// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChainChainConfigRouterTo {
  /// The name of node. Valid values: `DOCKER_IMAGE_BUILD`, `DOCKER_IMAGE_PUSH`, `VULNERABILITY_SCANNING`, `ACTIVATE_REPLICATION`, `TRIGGER`, `SNAPSHOT`, `TRIGGER_SNAPSHOT`.
  final pulumi.Input<String>? nodeName;

  /// Creates a new [ChainChainConfigRouterTo].
  /// [nodeName] The name of node. Valid values: `DOCKER_IMAGE_BUILD`, `DOCKER_IMAGE_PUSH`, `VULNERABILITY_SCANNING`, `ACTIVATE_REPLICATION`, `TRIGGER`, `SNAPSHOT`, `TRIGGER_SNAPSHOT`.
  ChainChainConfigRouterTo({this.nodeName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeName': ?nodeName};
  }

  factory ChainChainConfigRouterTo.fromMap(Map<String, dynamic> map) {
    return ChainChainConfigRouterTo(
      nodeName: (() {
        final guardedValue = map['nodeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
