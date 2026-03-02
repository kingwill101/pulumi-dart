// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_peer_attachments_get_transit_router_peer_attachments_args_doc}
/// Arguments for getTransitRouterPeerAttachments.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_peer_attachments_get_transit_router_peer_attachments_args_doc}
class GetTransitRouterPeerAttachmentsArgs {
  /// ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// A list of CEN Transit Router peer attachments IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter CEN Transit Router peer attachments by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of CEN Transit Router peer attachment. Valid values `Attached`, `Attaching` and `Detaching`.
  final pulumi.Input<String>? status;
  /// The ID of CEN Transit Router peer attachments.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of transit router.
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [GetTransitRouterPeerAttachmentsArgs].
  /// [cenId] ID of the CEN instance.
  /// [ids] A list of CEN Transit Router peer attachments IDs.
  /// [nameRegex] A regex string to filter CEN Transit Router peer attachments by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of CEN Transit Router peer attachment. Valid values `Attached`, `Attaching` and `Detaching`.
  /// [transitRouterAttachmentId] The ID of CEN Transit Router peer attachments.
  /// [transitRouterId] The ID of transit router.
  GetTransitRouterPeerAttachmentsArgs({
    required this.cenId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.transitRouterAttachmentId,
    this.transitRouterId,
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
    };
  }

  factory GetTransitRouterPeerAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterPeerAttachmentsArgs(
      cenId: (map['cenId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
    );
  }
}

