// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_vpn_attachments_get_transit_router_vpn_attachments_args_doc}
/// Arguments for getTransitRouterVpnAttachments.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_vpn_attachments_get_transit_router_vpn_attachments_args_doc}
class GetTransitRouterVpnAttachmentsArgs {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// A list of Transit Router Vpn Attachment IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Transit Router Vpn Attachment name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Status of Transit Router Vpn Attachment. Valid values: `Attached`, `Attaching`, `Detaching`.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPN attachment.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [GetTransitRouterVpnAttachmentsArgs].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [ids] A list of Transit Router Vpn Attachment IDs.
  /// [nameRegex] A regex string to filter results by Transit Router Vpn Attachment name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The Status of Transit Router Vpn Attachment. Valid values: `Attached`, `Attaching`, `Detaching`.
  /// [tags] The tag of the resource.
  /// [transitRouterAttachmentId] The ID of the VPN attachment.
  /// [transitRouterId] The ID of the transit router.
  GetTransitRouterVpnAttachmentsArgs({
    this.cenId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.tags,
    this.transitRouterAttachmentId,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetTransitRouterVpnAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVpnAttachmentsArgs(
      cenId: map['cenId'] == null ? null : (map['cenId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
    );
  }
}

