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
  const TransitRouterVpcAttachmentState({
    this.autoPublishRouteEnabled,
    this.cenId,
    this.createTime,
    this.dryRun,
    this.forceDelete,
    this.paymentType,
    this.regionId,
    this.resourceType,
    this.routeTableAssociationEnabled,
    this.routeTablePropagationEnabled,
    this.status,
    this.tags,
    this.transitRouterAttachmentDescription,
    this.transitRouterAttachmentId,
    this.transitRouterAttachmentName,
    this.transitRouterId,
    this.transitRouterVpcAttachmentName,
    this.transitRouterVpcAttachmentOptions,
    this.vpcId,
    this.vpcOwnerId,
    this.zoneMappings,
  });

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
      autoPublishRouteEnabled: (() { final guardedValue = map['autoPublishRouteEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableAssociationEnabled: (() { final guardedValue = map['routeTableAssociationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routeTablePropagationEnabled: (() { final guardedValue = map['routeTablePropagationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitRouterAttachmentDescription: (() { final guardedValue = map['transitRouterAttachmentDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterAttachmentId: (() { final guardedValue = map['transitRouterAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterAttachmentName: (() { final guardedValue = map['transitRouterAttachmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterVpcAttachmentName: (() { final guardedValue = map['transitRouterVpcAttachmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterVpcAttachmentOptions: (() { final guardedValue = map['transitRouterVpcAttachmentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcOwnerId: (() { final guardedValue = map['vpcOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneMappings: (() { final guardedValue = map['zoneMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TransitRouterVpcAttachmentZoneMapping>(guardedValue, (value) => TransitRouterVpcAttachmentZoneMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

