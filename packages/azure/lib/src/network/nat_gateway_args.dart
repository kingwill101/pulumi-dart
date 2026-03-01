// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_nat_gateway_nat_gateway_args_doc}
/// The set of arguments for NatGateway.
/// {@endtemplate}
/// {@macro pulumi_network_nat_gateway_nat_gateway_args_doc}
class NatGatewayArgs {
  /// The idle timeout which should be used in minutes. Defaults to `4`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU which should be used. At this time the only supported value is `Standard`. Defaults to `Standard`.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created.
  ///
  /// > **Note:** Only one Availability Zone can be defined. For more information, please check out the [Azure documentation](https://learn.microsoft.com/en-us/azure/nat-gateway/nat-overview#availability-zones)
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [NatGatewayArgs].
  /// [idleTimeoutInMinutes] The idle timeout which should be used in minutes. Defaults to `4`.
  /// [location] Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the NAT Gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
  /// [skuName] The SKU which should be used. At this time the only supported value is `Standard`. Defaults to `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created.
  NatGatewayArgs({
    int? idleTimeoutInMinutes,
    String? location,
    String? name,
    required String resourceGroupName,
    String? skuName,
    Map<String, String>? tags,
    List<String>? zones,
  }) :
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory NatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayArgs(
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] == null ? null : map['skuName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

