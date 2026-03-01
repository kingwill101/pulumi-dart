// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_vpc_attachment_zone_mapping.dart';

/// {@template pulumi_cen_transit_router_vpc_attachment_transit_router_vpc_attachment_args_doc}
/// The set of arguments for TransitRouterVpcAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_vpc_attachment_transit_router_vpc_attachment_args_doc}
class TransitRouterVpcAttachmentArgs {
  /// Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to VPCs. Valid values:
  /// - **false:** (default)
  final pulumi.Input<bool>? autoPublishRouteEnabled;
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  final pulumi.Input<bool>? dryRun;
  /// Whether to forcibly delete the VPC connection. The value is:
  final pulumi.Input<bool>? forceDelete;
  /// The billing method. The default value is `PayAsYouGo`, which specifies the pay-as-you-go billing method.
  final pulumi.Input<String>? paymentType;
  /// The resource type of the transit router vpc attachment. Default value: `VPC`. Valid values: `VPC`.
  final pulumi.Input<String>? resourceType;
  /// Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  final pulumi.Input<bool>? routeTableAssociationEnabled;
  /// Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  final pulumi.Input<bool>? routeTablePropagationEnabled;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The description of the VPC connection.
  ///
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// Field 'transit_router_attachment_name' has been deprecated from provider version 1.230.1. New field 'transit_router_vpc_attachment_name' instead.
  final pulumi.Input<String>? transitRouterAttachmentName;
  /// The ID of the Enterprise Edition transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The name of the VPC connection.
  ///
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (\_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? transitRouterVpcAttachmentName;
  /// TransitRouterVpcAttachmentOptions
  final pulumi.Input<Map<String, String>>? transitRouterVpcAttachmentOptions;
  /// The VPC ID.
  final pulumi.Input<String> vpcId;
  /// VpcOwnerId
  final pulumi.Input<String>? vpcOwnerId;
  /// ZoneMappingss See `zone_mappings` below.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<List<TransitRouterVpcAttachmentZoneMapping>> zoneMappings;

  /// Creates a new [TransitRouterVpcAttachmentArgs].
  /// [autoPublishRouteEnabled] Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to VPCs. Valid values:
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [dryRun] Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  /// [forceDelete] Whether to forcibly delete the VPC connection. The value is:
  /// [paymentType] The billing method. The default value is `PayAsYouGo`, which specifies the pay-as-you-go billing method.
  /// [resourceType] The resource type of the transit router vpc attachment. Default value: `VPC`. Valid values: `VPC`.
  /// [routeTableAssociationEnabled] Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  /// [routeTablePropagationEnabled] Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentDescription] The description of the VPC connection.
  /// [transitRouterAttachmentName] Field 'transit_router_attachment_name' has been deprecated from provider version 1.230.1. New field 'transit_router_vpc_attachment_name' instead.
  /// [transitRouterId] The ID of the Enterprise Edition transit router.
  /// [transitRouterVpcAttachmentName] The name of the VPC connection.
  /// [transitRouterVpcAttachmentOptions] TransitRouterVpcAttachmentOptions
  /// [vpcId] The VPC ID.
  /// [vpcOwnerId] VpcOwnerId
  /// [zoneMappings] ZoneMappingss See `zone_mappings` below.
  TransitRouterVpcAttachmentArgs({
    bool? autoPublishRouteEnabled,
    String? cenId,
    bool? dryRun,
    bool? forceDelete,
    String? paymentType,
    String? resourceType,
    bool? routeTableAssociationEnabled,
    bool? routeTablePropagationEnabled,
    Map<String, String>? tags,
    String? transitRouterAttachmentDescription,
    String? transitRouterAttachmentName,
    String? transitRouterId,
    String? transitRouterVpcAttachmentName,
    Map<String, String>? transitRouterVpcAttachmentOptions,
    required String vpcId,
    String? vpcOwnerId,
    required List<TransitRouterVpcAttachmentZoneMapping> zoneMappings,
  }) :
      autoPublishRouteEnabled = pulumi.Input.asOptionalInput<bool>(autoPublishRouteEnabled),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      routeTableAssociationEnabled = pulumi.Input.asOptionalInput<bool>(routeTableAssociationEnabled),
      routeTablePropagationEnabled = pulumi.Input.asOptionalInput<bool>(routeTablePropagationEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentDescription = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentDescription),
      transitRouterAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentName),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterVpcAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterVpcAttachmentName),
      transitRouterVpcAttachmentOptions = pulumi.Input.asOptionalInput<Map<String, String>>(transitRouterVpcAttachmentOptions),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vpcOwnerId = pulumi.Input.asOptionalInput<String>(vpcOwnerId),
      zoneMappings = pulumi.Input.asInput<List<TransitRouterVpcAttachmentZoneMapping>>(zoneMappings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': ?autoPublishRouteEnabled,
      'cenId': ?cenId,
      'dryRun': ?dryRun,
      'forceDelete': ?forceDelete,
      'paymentType': ?paymentType,
      'resourceType': ?resourceType,
      'routeTableAssociationEnabled': ?routeTableAssociationEnabled,
      'routeTablePropagationEnabled': ?routeTablePropagationEnabled,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterAttachmentName': ?transitRouterAttachmentName,
      'transitRouterId': ?transitRouterId,
      'transitRouterVpcAttachmentName': ?transitRouterVpcAttachmentName,
      'transitRouterVpcAttachmentOptions': ?transitRouterVpcAttachmentOptions,
      'vpcId': vpcId,
      'vpcOwnerId': ?vpcOwnerId,
      'zoneMappings': pulumi.Input.mapInputValue<List<TransitRouterVpcAttachmentZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<TransitRouterVpcAttachmentZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TransitRouterVpcAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterVpcAttachmentArgs(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] == null ? null : map['autoPublishRouteEnabled'] as bool,
      cenId: map['cenId'] == null ? null : map['cenId'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      forceDelete: map['forceDelete'] == null ? null : map['forceDelete'] as bool,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      routeTableAssociationEnabled: map['routeTableAssociationEnabled'] == null ? null : map['routeTableAssociationEnabled'] as bool,
      routeTablePropagationEnabled: map['routeTablePropagationEnabled'] == null ? null : map['routeTablePropagationEnabled'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : map['transitRouterAttachmentDescription'] as String,
      transitRouterAttachmentName: map['transitRouterAttachmentName'] == null ? null : map['transitRouterAttachmentName'] as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId'] as String,
      transitRouterVpcAttachmentName: map['transitRouterVpcAttachmentName'] == null ? null : map['transitRouterVpcAttachmentName'] as String,
      transitRouterVpcAttachmentOptions: map['transitRouterVpcAttachmentOptions'] == null ? null : (map['transitRouterVpcAttachmentOptions'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vpcOwnerId: map['vpcOwnerId'] == null ? null : map['vpcOwnerId'] as String,
      zoneMappings: pulumi.Input.decodeList<TransitRouterVpcAttachmentZoneMapping>(map['zoneMappings'], (value) => TransitRouterVpcAttachmentZoneMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

