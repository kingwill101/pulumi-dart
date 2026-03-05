// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vbr_pconn_associations_association.dart';

/// Result data returned by getVbrPconnAssociations.
class GetVbrPconnAssociationsResult {
  /// A list of Vbr Pconn Association Entries. Each element contains the following attributes:
  final List<GetVbrPconnAssociationsAssociation> associations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The ID of the VBR instance.
  final String? vbrId;

  /// Creates a new [GetVbrPconnAssociationsResult].
  /// [associations] A list of Vbr Pconn Association Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [vbrId] The ID of the VBR instance.
  GetVbrPconnAssociationsResult({
    required this.associations,
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.vbrId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': pulumi.Input.encodeList<GetVbrPconnAssociationsAssociation, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'vbrId': ?vbrId,
    };
  }

  factory GetVbrPconnAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetVbrPconnAssociationsResult(
      associations: pulumi.Input.decodeList<GetVbrPconnAssociationsAssociation>(map['associations']!, (value) => GetVbrPconnAssociationsAssociation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      vbrId: (() { final guardedValue = map['vbrId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

