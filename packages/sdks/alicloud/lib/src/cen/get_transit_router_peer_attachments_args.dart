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
    required pulumi.Output<String> cenId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterId,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

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
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

