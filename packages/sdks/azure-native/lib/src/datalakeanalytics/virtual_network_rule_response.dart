// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data Lake Analytics  VirtualNetwork Rule information.
class VirtualNetworkRuleResponse {
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The resource identifier for the subnet
  final pulumi.Input<String> subnetId;
  /// The resource type.
  final pulumi.Input<String> type;
  /// The current state of the VirtualNetwork Rule
  final pulumi.Input<String> virtualNetworkRuleState;

  /// Creates a new [VirtualNetworkRuleResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [subnetId] The resource identifier for the subnet
  /// [type] The resource type.
  /// [virtualNetworkRuleState] The current state of the VirtualNetwork Rule
  const VirtualNetworkRuleResponse({
    required this.id,
    required this.name,
    required this.subnetId,
    required this.type,
    required this.virtualNetworkRuleState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subnetId': subnetId,
      'type': type,
      'virtualNetworkRuleState': virtualNetworkRuleState,
    };
  }

  factory VirtualNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualNetworkRuleState: pulumi.Input.fromValue(map['virtualNetworkRuleState'] as String),
    );
  }
}
