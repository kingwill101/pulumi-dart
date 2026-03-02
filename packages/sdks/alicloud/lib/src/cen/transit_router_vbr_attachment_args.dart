// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_vbr_attachment_transit_router_vbr_attachment_args_doc}
/// The set of arguments for TransitRouterVbrAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_vbr_attachment_transit_router_vbr_attachment_args_doc}
class TransitRouterVbrAttachmentArgs {
  /// Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to the VBR. Default value: `false`. Valid values:
  final pulumi.Input<bool>? autoPublishRouteEnabled;
  /// The ID of the CEN.
  final pulumi.Input<String> cenId;
  /// Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dryRun;
  /// The resource type of the transit router vbr attachment. Default value: `VBR`. Valid values: `VBR`.
  final pulumi.Input<String>? resourceType;
  /// Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.233.1. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  final pulumi.Input<bool>? routeTableAssociationEnabled;
  /// Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.233.1. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  ///
  /// ->**NOTE:** Ensure that the vbr is not used in Express Connect.
  final pulumi.Input<bool>? routeTablePropagationEnabled;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The description of the transit router vbr attachment.
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// The name of the transit router vbr attachment.
  final pulumi.Input<String>? transitRouterAttachmentName;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The ID of the VBR.
  final pulumi.Input<String> vbrId;
  /// The owner id of the vbr.
  final pulumi.Input<String>? vbrOwnerId;

  /// Creates a new [TransitRouterVbrAttachmentArgs].
  /// [autoPublishRouteEnabled] Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to the VBR. Default value: `false`. Valid values:
  /// [cenId] The ID of the CEN.
  /// [dryRun] Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  /// [resourceType] The resource type of the transit router vbr attachment. Default value: `VBR`. Valid values: `VBR`.
  /// [routeTableAssociationEnabled] Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.233.1. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  /// [routeTablePropagationEnabled] Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.233.1. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  /// [tags] A mapping of tags to assign to the resource.
  /// [transitRouterAttachmentDescription] The description of the transit router vbr attachment.
  /// [transitRouterAttachmentName] The name of the transit router vbr attachment.
  /// [transitRouterId] The ID of the transit router.
  /// [vbrId] The ID of the VBR.
  /// [vbrOwnerId] The owner id of the vbr.
  TransitRouterVbrAttachmentArgs({
    this.autoPublishRouteEnabled,
    required this.cenId,
    this.dryRun,
    this.resourceType,
    this.routeTableAssociationEnabled,
    this.routeTablePropagationEnabled,
    this.tags,
    this.transitRouterAttachmentDescription,
    this.transitRouterAttachmentName,
    this.transitRouterId,
    required this.vbrId,
    this.vbrOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': ?autoPublishRouteEnabled,
      'cenId': cenId,
      'dryRun': ?dryRun,
      'resourceType': ?resourceType,
      'routeTableAssociationEnabled': ?routeTableAssociationEnabled,
      'routeTablePropagationEnabled': ?routeTablePropagationEnabled,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterAttachmentName': ?transitRouterAttachmentName,
      'transitRouterId': ?transitRouterId,
      'vbrId': vbrId,
      'vbrOwnerId': ?vbrOwnerId,
    };
  }

  factory TransitRouterVbrAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterVbrAttachmentArgs(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] == null ? null : (map['autoPublishRouteEnabled']! as bool).input(),
      cenId: (map['cenId'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      routeTableAssociationEnabled: map['routeTableAssociationEnabled'] == null ? null : (map['routeTableAssociationEnabled']! as bool).input(),
      routeTablePropagationEnabled: map['routeTablePropagationEnabled'] == null ? null : (map['routeTablePropagationEnabled']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : (map['transitRouterAttachmentDescription']! as String).input(),
      transitRouterAttachmentName: map['transitRouterAttachmentName'] == null ? null : (map['transitRouterAttachmentName']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
      vbrId: (map['vbrId'] as String).input(),
      vbrOwnerId: map['vbrOwnerId'] == null ? null : (map['vbrOwnerId']! as String).input(),
    );
  }
}

