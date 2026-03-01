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
  GetTransitRouterVbrAttachmentsArgs({
    required pulumi.Output<String> cenId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterId,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

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
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

