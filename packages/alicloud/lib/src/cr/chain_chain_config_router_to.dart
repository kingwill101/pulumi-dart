// ignore_for_file: unused_element, unnecessary_cast


class ChainChainConfigRouterTo {
  /// The name of node. Valid values: `DOCKER_IMAGE_BUILD`, `DOCKER_IMAGE_PUSH`, `VULNERABILITY_SCANNING`, `ACTIVATE_REPLICATION`, `TRIGGER`, `SNAPSHOT`, `TRIGGER_SNAPSHOT`.
  final String? nodeName;

  /// Creates a new [ChainChainConfigRouterTo].
  /// [nodeName] The name of node. Valid values: `DOCKER_IMAGE_BUILD`, `DOCKER_IMAGE_PUSH`, `VULNERABILITY_SCANNING`, `ACTIVATE_REPLICATION`, `TRIGGER`, `SNAPSHOT`, `TRIGGER_SNAPSHOT`.
  ChainChainConfigRouterTo({
    this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': ?nodeName,
    };
  }

  factory ChainChainConfigRouterTo.fromMap(Map<String, dynamic> map) {
    return ChainChainConfigRouterTo(
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
    );
  }
}

