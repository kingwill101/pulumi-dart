// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterVbrAttachment resources.
class TransitRouterVbrAttachmentState {
  /// Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to the VBR. Default value: `false`. Valid values:
  final pulumi.Input<bool>? autoPublishRouteEnabled;
  /// The ID of the CEN.
  final pulumi.Input<String>? cenId;
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
  /// The status of the Transit Router VBR Attachment.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The description of the transit router vbr attachment.
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// The ID of the VBR connection.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The name of the transit router vbr attachment.
  final pulumi.Input<String>? transitRouterAttachmentName;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The ID of the VBR.
  final pulumi.Input<String>? vbrId;
  /// The owner id of the vbr.
  final pulumi.Input<String>? vbrOwnerId;

  /// Creates a new [TransitRouterVbrAttachmentState].
  /// [autoPublishRouteEnabled] Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to the VBR. Default value: `false`. Valid values:
  /// [cenId] The ID of the CEN.
  /// [dryRun] Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  /// [resourceType] The resource type of the transit router vbr attachment. Default value: `VBR`. Valid values: `VBR`.
  /// [routeTableAssociationEnabled] Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.233.1. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  /// [routeTablePropagationEnabled] Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.233.1. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  /// [status] The status of the Transit Router VBR Attachment.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transitRouterAttachmentDescription] The description of the transit router vbr attachment.
  /// [transitRouterAttachmentId] The ID of the VBR connection.
  /// [transitRouterAttachmentName] The name of the transit router vbr attachment.
  /// [transitRouterId] The ID of the transit router.
  /// [vbrId] The ID of the VBR.
  /// [vbrOwnerId] The owner id of the vbr.
  TransitRouterVbrAttachmentState({
    pulumi.Output<bool>? autoPublishRouteEnabled,
    pulumi.Output<String>? cenId,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? resourceType,
    pulumi.Output<bool>? routeTableAssociationEnabled,
    pulumi.Output<bool>? routeTablePropagationEnabled,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterAttachmentDescription,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterAttachmentName,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<String>? vbrId,
    pulumi.Output<String>? vbrOwnerId,
  }) :
      autoPublishRouteEnabled = pulumi.Input.asOptionalInput<bool>(autoPublishRouteEnabled),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      routeTableAssociationEnabled = pulumi.Input.asOptionalInput<bool>(routeTableAssociationEnabled),
      routeTablePropagationEnabled = pulumi.Input.asOptionalInput<bool>(routeTablePropagationEnabled),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentDescription = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentDescription),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentName),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      vbrId = pulumi.Input.asOptionalInput<String>(vbrId),
      vbrOwnerId = pulumi.Input.asOptionalInput<String>(vbrOwnerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': ?autoPublishRouteEnabled,
      'cenId': ?cenId,
      'dryRun': ?dryRun,
      'resourceType': ?resourceType,
      'routeTableAssociationEnabled': ?routeTableAssociationEnabled,
      'routeTablePropagationEnabled': ?routeTablePropagationEnabled,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterAttachmentName': ?transitRouterAttachmentName,
      'transitRouterId': ?transitRouterId,
      'vbrId': ?vbrId,
      'vbrOwnerId': ?vbrOwnerId,
    };
  }

  factory TransitRouterVbrAttachmentState.fromMap(Map<String, dynamic> map) {
    return TransitRouterVbrAttachmentState(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoPublishRouteEnabled'] as bool),
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      routeTableAssociationEnabled: map['routeTableAssociationEnabled'] == null ? null : pulumi.Output.create<bool>(map['routeTableAssociationEnabled'] as bool),
      routeTablePropagationEnabled: map['routeTablePropagationEnabled'] == null ? null : pulumi.Output.create<bool>(map['routeTablePropagationEnabled'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentDescription'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterAttachmentName: map['transitRouterAttachmentName'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentName'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      vbrId: map['vbrId'] == null ? null : pulumi.Output.create<String>(map['vbrId'] as String),
      vbrOwnerId: map['vbrOwnerId'] == null ? null : pulumi.Output.create<String>(map['vbrOwnerId'] as String),
    );
  }
}

