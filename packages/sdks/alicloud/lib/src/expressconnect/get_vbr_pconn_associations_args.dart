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
    this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.vbrId,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vbrId: (() { final guardedValue = map['vbrId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

