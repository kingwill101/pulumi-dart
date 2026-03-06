// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_vbr_attachments_get_transit_router_vbr_attachments_args_doc}
/// Arguments for getTransitRouterVbrAttachments.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_vbr_attachments_get_transit_router_vbr_attachments_args_doc}
class GetTransitRouterVbrAttachmentsArgs {
  /// ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// A list of resource id. The element value is same as `transit_router_id`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values `Attached`, `Attaching` and `Detaching`.
  final pulumi.Input<String>? status;
  /// ID of the transit router.
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [GetTransitRouterVbrAttachmentsArgs].
  /// [cenId] ID of the CEN instance.
  /// [ids] A list of resource id. The element value is same as `transit_router_id`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values `Attached`, `Attaching` and `Detaching`.
  /// [transitRouterId] ID of the transit router.
  const GetTransitRouterVbrAttachmentsArgs({
    required this.cenId,
    this.ids,
    this.outputFile,
    this.status,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetTransitRouterVbrAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVbrAttachmentsArgs(
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

