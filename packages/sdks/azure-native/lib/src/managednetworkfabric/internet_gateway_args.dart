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
    pulumi.Output<String>? annotation,
    pulumi.Output<String>? internetGatewayName,
    pulumi.Output<String>? internetGatewayRuleId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> networkFabricControllerId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> type,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      internetGatewayName = pulumi.Input.asOptionalInput<String>(internetGatewayName),
      internetGatewayRuleId = pulumi.Input.asOptionalInput<String>(internetGatewayRuleId),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkFabricControllerId = pulumi.Input.asInput<String>(networkFabricControllerId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type);

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
      annotation: map['annotation'] == null ? null : pulumi.Output.create<String>(map['annotation'] as String),
      internetGatewayName: map['internetGatewayName'] == null ? null : pulumi.Output.create<String>(map['internetGatewayName'] as String),
      internetGatewayRuleId: map['internetGatewayRuleId'] == null ? null : pulumi.Output.create<String>(map['internetGatewayRuleId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkFabricControllerId: pulumi.Output.create<String>(map['networkFabricControllerId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

