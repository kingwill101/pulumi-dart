// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_internet_gateway_args_doc}
/// The set of arguments for InternetGateway.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_internet_gateway_args_doc}
class InternetGatewayArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Name of the Internet Gateway.
  final pulumi.Input<String>? internetGatewayName;
  /// ARM Resource ID of the Internet Gateway Rule.
  final pulumi.Input<String>? internetGatewayRuleId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// ARM Resource ID of the Network Fabric Controller.
  final pulumi.Input<String> networkFabricControllerId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gateway Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [InternetGatewayArgs].
  /// [annotation] Switch configuration description.
  /// [internetGatewayName] Name of the Internet Gateway.
  /// [internetGatewayRuleId] ARM Resource ID of the Internet Gateway Rule.
  /// [location] The geo-location where the resource lives
  /// [networkFabricControllerId] ARM Resource ID of the Network Fabric Controller.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [type] Gateway Type of the resource.
  InternetGatewayArgs({
    this.annotation,
    this.internetGatewayName,
    this.internetGatewayRuleId,
    this.location,
    required this.networkFabricControllerId,
    required this.resourceGroupName,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'internetGatewayName': ?internetGatewayName,
      'internetGatewayRuleId': ?internetGatewayRuleId,
      'location': ?location,
      'networkFabricControllerId': networkFabricControllerId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'type': type,
    };
  }

  factory InternetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return InternetGatewayArgs(
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      internetGatewayName: map['internetGatewayName'] == null ? null : (map['internetGatewayName']! as String).input(),
      internetGatewayRuleId: map['internetGatewayRuleId'] == null ? null : (map['internetGatewayRuleId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkFabricControllerId: (map['networkFabricControllerId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

