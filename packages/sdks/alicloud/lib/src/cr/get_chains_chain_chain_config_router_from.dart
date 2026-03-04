// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetChainsChainChainConfigRouterFrom {
  /// The name of delivery chain node.
  final pulumi.Input<String> nodeName;

  /// Creates a new [GetChainsChainChainConfigRouterFrom].
  /// [nodeName] The name of delivery chain node.
  GetChainsChainChainConfigRouterFrom({required this.nodeName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeName': nodeName};
  }

  factory GetChainsChainChainConfigRouterFrom.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetChainsChainChainConfigRouterFrom(
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
    );
  }
}
