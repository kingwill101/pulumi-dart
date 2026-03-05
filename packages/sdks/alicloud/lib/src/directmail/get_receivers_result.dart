// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_receivers_receiverse.dart';

/// Result data returned by getReceivers.
class GetReceiversResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyWord;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetReceiversReceiverse> receiverses;
  final int? status;

  /// Creates a new [GetReceiversResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyWord] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [receiverses] Required.
  /// [status] Optional.
  GetReceiversResult({
    required this.id,
    required this.ids,
    this.keyWord,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.receiverses,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'keyWord': ?keyWord,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'receiverses': pulumi.Input.encodeList<GetReceiversReceiverse, Map<String, dynamic>>(receiverses, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetReceiversResult.fromMap(Map<String, dynamic> map) {
    return GetReceiversResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: (() { final guardedValue = map['keyWord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      receiverses: pulumi.Input.decodeList<GetReceiversReceiverse>(map['receiverses']!, (value) => GetReceiversReceiverse.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

