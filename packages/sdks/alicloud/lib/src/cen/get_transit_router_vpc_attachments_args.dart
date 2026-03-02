// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_vpc_attachments_get_transit_router_vpc_attachments_args_doc}
/// Arguments for getTransitRouterVpcAttachments.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_vpc_attachments_get_transit_router_vpc_attachments_args_doc}
class GetTransitRouterVpcAttachmentsArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// A list of Transit Router VPC Attachment IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Transit Router VPC Attachment name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Transit Router VPC Attachment. Valid Values: `Attached`, `Attaching`, `Detaching`.
  final pulumi.Input<String>? status;
  /// The ID of the Transit Router VPC Attachment.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetTransitRouterVpcAttachmentsArgs].
  /// [cenId] The ID of the CEN instance.
  /// [ids] A list of Transit Router VPC Attachment IDs.
  /// [nameRegex] A regex string to filter results by Transit Router VPC Attachment name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Transit Router VPC Attachment. Valid Values: `Attached`, `Attaching`, `Detaching`.
  /// [transitRouterAttachmentId] The ID of the Transit Router VPC Attachment.
  /// [transitRouterId] The ID of the transit router.
  /// [vpcId] The ID of the VPC.
  GetTransitRouterVpcAttachmentsArgs({
    required this.cenId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.transitRouterAttachmentId,
    this.transitRouterId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterId': ?transitRouterId,
      'vpcId': ?vpcId,
    };
  }

  factory GetTransitRouterVpcAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVpcAttachmentsArgs(
      cenId: (map['cenId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

