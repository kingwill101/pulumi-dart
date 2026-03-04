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
      annotation: (() {
        final guardedValue = map['annotation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internetGatewayName: (() {
        final guardedValue = map['internetGatewayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internetGatewayRuleId: (() {
        final guardedValue = map['internetGatewayRuleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkFabricControllerId: pulumi.Input.fromValue(
        map['networkFabricControllerId'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
