// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_vpc_attachment_zone_mapping.dart';

/// Input properties used for looking up and filtering TransitRouterVpcAttachment resources.
class TransitRouterVpcAttachmentState {
  /// Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to VPCs. Valid values:
  /// - **false:** (default)
  final pulumi.Input<bool>? autoPublishRouteEnabled;
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  final pulumi.Input<bool>? dryRun;
  /// Whether to forcibly delete the VPC connection. The value is:
  final pulumi.Input<bool>? forceDelete;
  /// The billing method. The default value is `PayAsYouGo`, which specifies the pay-as-you-go billing method.
  final pulumi.Input<String>? paymentType;
  /// (Available since v1.260.0).The ID of the region where the VPC is deployed.
  final pulumi.Input<String>? regionId;
  /// The resource type of the transit router vpc attachment. Default value: `VPC`. Valid values: `VPC`.
  final pulumi.Input<String>? resourceType;
  /// Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  final pulumi.Input<bool>? routeTableAssociationEnabled;
  /// Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  final pulumi.Input<bool>? routeTablePropagationEnabled;
  /// Status
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The description of the VPC connection.
  ///
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// The ID of the VPC connection.
  final pulumi.Input<String>? transitRouterAttachmentId;
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
  final pulumi.Input<String>? vpcId;
  /// VpcOwnerId
  final pulumi.Input<String>? vpcOwnerId;
  /// ZoneMappingss See `zone_mappings` below.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<List<TransitRouterVpcAttachmentZoneMapping>>? zoneMappings;

  /// Creates a new [TransitRouterVpcAttachmentState].
  /// [autoPublishRouteEnabled] Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to VPCs. Valid values:
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [createTime] The creation time of the resource
  /// [dryRun] Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  /// [forceDelete] Whether to forcibly delete the VPC connection. The value is:
  /// [paymentType] The billing method. The default value is `PayAsYouGo`, which specifies the pay-as-you-go billing method.
  /// [regionId] (Available since v1.260.0).The ID of the region where the VPC is deployed.
  /// [resourceType] The resource type of the transit router vpc attachment. Default value: `VPC`. Valid values: `VPC`.
  /// [routeTableAssociationEnabled] Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  /// [routeTablePropagationEnabled] Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  /// [status] Status
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentDescription] The description of the VPC connection.
  /// [transitRouterAttachmentId] The ID of the VPC connection.
  /// [transitRouterAttachmentName] Field 'transit_router_attachment_name' has been deprecated from provider version 1.230.1. New field 'transit_router_vpc_attachment_name' instead.
  /// [transitRouterId] The ID of the Enterprise Edition transit router.
  /// [transitRouterVpcAttachmentName] The name of the VPC connection.
  /// [transitRouterVpcAttachmentOptions] TransitRouterVpcAttachmentOptions
  /// [vpcId] The VPC ID.
  /// [vpcOwnerId] VpcOwnerId
  /// [zoneMappings] ZoneMappingss See `zone_mappings` below.
  TransitRouterVpcAttachmentState({
    pulumi.Output<bool>? autoPublishRouteEnabled,
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<bool>? routeTableAssociationEnabled,
    pulumi.Output<bool>? routeTablePropagationEnabled,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterAttachmentDescription,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterAttachmentName,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<String>? transitRouterVpcAttachmentName,
    pulumi.Output<Map<String, String>>? transitRouterVpcAttachmentOptions,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpcOwnerId,
    pulumi.Output<List<TransitRouterVpcAttachmentZoneMapping>>? zoneMappings,
  }) :
      autoPublishRouteEnabled = pulumi.Input.asOptionalInput<bool>(autoPublishRouteEnabled),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      routeTableAssociationEnabled = pulumi.Input.asOptionalInput<bool>(routeTableAssociationEnabled),
      routeTablePropagationEnabled = pulumi.Input.asOptionalInput<bool>(routeTablePropagationEnabled),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentDescription = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentDescription),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentName),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterVpcAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterVpcAttachmentName),
      transitRouterVpcAttachmentOptions = pulumi.Input.asOptionalInput<Map<String, String>>(transitRouterVpcAttachmentOptions),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcOwnerId = pulumi.Input.asOptionalInput<String>(vpcOwnerId),
      zoneMappings = pulumi.Input.asOptionalInput<List<TransitRouterVpcAttachmentZoneMapping>>(zoneMappings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': ?autoPublishRouteEnabled,
      'cenId': ?cenId,
      'createTime': ?createTime,
      'dryRun': ?dryRun,
      'forceDelete': ?forceDelete,
      'paymentType': ?paymentType,
      'regionId': ?regionId,
      'resourceType': ?resourceType,
      'routeTableAssociationEnabled': ?routeTableAssociationEnabled,
      'routeTablePropagationEnabled': ?routeTablePropagationEnabled,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterAttachmentName': ?transitRouterAttachmentName,
      'transitRouterId': ?transitRouterId,
      'transitRouterVpcAttachmentName': ?transitRouterVpcAttachmentName,
      'transitRouterVpcAttachmentOptions': ?transitRouterVpcAttachmentOptions,
      'vpcId': ?vpcId,
      'vpcOwnerId': ?vpcOwnerId,
      'zoneMappings': ?pulumi.Input.mapOptionalInputValue<List<TransitRouterVpcAttachmentZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<TransitRouterVpcAttachmentZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TransitRouterVpcAttachmentState.fromMap(Map<String, dynamic> map) {
    return TransitRouterVpcAttachmentState(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoPublishRouteEnabled'] as bool),
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      routeTableAssociationEnabled: map['routeTableAssociationEnabled'] == null ? null : pulumi.Output.create<bool>(map['routeTableAssociationEnabled'] as bool),
      routeTablePropagationEnabled: map['routeTablePropagationEnabled'] == null ? null : pulumi.Output.create<bool>(map['routeTablePropagationEnabled'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentDescription'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterAttachmentName: map['transitRouterAttachmentName'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentName'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterVpcAttachmentName: map['transitRouterVpcAttachmentName'] == null ? null : pulumi.Output.create<String>(map['transitRouterVpcAttachmentName'] as String),
      transitRouterVpcAttachmentOptions: map['transitRouterVpcAttachmentOptions'] == null ? null : pulumi.Output.create<Map<String, String>>((map['transitRouterVpcAttachmentOptions'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : pulumi.Output.create<String>(map['vpcOwnerId'] as String),
      zoneMappings: map['zoneMappings'] == null ? null : pulumi.Output.create<List<TransitRouterVpcAttachmentZoneMapping>>(pulumi.Input.decodeList<TransitRouterVpcAttachmentZoneMapping>(map['zoneMappings'], (value) => TransitRouterVpcAttachmentZoneMapping.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

