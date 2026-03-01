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
    pulumi.Output<String>? cenId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

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
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

