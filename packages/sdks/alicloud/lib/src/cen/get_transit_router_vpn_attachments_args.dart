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
  const GetTransitRouterVpnAttachmentsArgs({
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
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitRouterAttachmentId: (() { final guardedValue = map['transitRouterAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

