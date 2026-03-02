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
  VirtualNetworkRuleResponse({
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
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

