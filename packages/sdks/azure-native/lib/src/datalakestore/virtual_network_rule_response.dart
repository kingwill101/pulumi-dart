// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data Lake Store virtual network rule information.
class VirtualNetworkRuleResponse {
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The resource identifier for the subnet.
  final pulumi.Input<String> subnetId;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [VirtualNetworkRuleResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [subnetId] The resource identifier for the subnet.
  /// [type] The resource type.
  const VirtualNetworkRuleResponse({
    required this.id,
    required this.name,
    required this.subnetId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subnetId': subnetId,
      'type': type,
    };
  }

  factory VirtualNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
