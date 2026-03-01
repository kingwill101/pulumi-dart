// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_havips_havip.dart';

/// Result data returned by getHavips.
class GetHavipsResult {
  final List<GetHavipsHavip> havips;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetHavipsResult].
  /// [havips] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetHavipsResult({
    required this.havips,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'havips': pulumi.Input.encodeList<GetHavipsHavip, Map<String, dynamic>>(havips, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetHavipsResult.fromMap(Map<String, dynamic> map) {
    return GetHavipsResult(
      havips: pulumi.Input.decodeList<GetHavipsHavip>(map['havips'], (value) => GetHavipsHavip.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

