// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_get_vbr_pconn_associations_get_vbr_pconn_associations_args_doc}
/// Arguments for getVbrPconnAssociations.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_get_vbr_pconn_associations_get_vbr_pconn_associations_args_doc}
class GetVbrPconnAssociationsArgs {
  /// A list of Vbr Pconn Association IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The ID of the VBR instance.
  final pulumi.Input<String>? vbrId;

  /// Creates a new [GetVbrPconnAssociationsArgs].
  /// [ids] A list of Vbr Pconn Association IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [vbrId] The ID of the VBR instance.
  GetVbrPconnAssociationsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? vbrId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      vbrId = pulumi.Input.asOptionalInput<String>(vbrId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'vbrId': ?vbrId,
    };
  }

  factory GetVbrPconnAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetVbrPconnAssociationsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      vbrId: map['vbrId'] == null ? null : pulumi.Output.create<String>(map['vbrId'] as String),
    );
  }
}

