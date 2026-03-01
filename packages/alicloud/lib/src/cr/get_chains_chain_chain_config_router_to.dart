// ignore_for_file: unused_element, unnecessary_cast


class GetChainsChainChainConfigRouterTo {
  /// The name of delivery chain node.
  final String nodeName;

  /// Creates a new [GetChainsChainChainConfigRouterTo].
  /// [nodeName] The name of delivery chain node.
  GetChainsChainChainConfigRouterTo({
    required this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': nodeName,
    };
  }

  factory GetChainsChainChainConfigRouterTo.fromMap(Map<String, dynamic> map) {
    return GetChainsChainChainConfigRouterTo(
      nodeName: map['nodeName'] as String,
    );
  }
}

