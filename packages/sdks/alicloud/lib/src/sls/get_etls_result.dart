// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_etls_etl.dart';

/// Result data returned by getEtls.
class GetEtlsResult {
  /// A list of Etl Entries. Each element contains the following attributes:
  final List<GetEtlsEtl> etls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Etl IDs.
  final List<String> ids;
  /// Destination Logstore Name.
  final String logstore;
  final int? offset;
  final String? outputFile;
  /// Target Project name.
  final String project;
  final int? size;

  /// Creates a new [GetEtlsResult].
  /// [etls] A list of Etl Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Etl IDs.
  /// [logstore] Destination Logstore Name.
  /// [offset] Optional.
  /// [outputFile] Optional.
  /// [project] Target Project name.
  /// [size] Optional.
  GetEtlsResult({
    required this.etls,
    required this.id,
    required this.ids,
    required this.logstore,
    this.offset,
    this.outputFile,
    required this.project,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etls': pulumi.Input.encodeList<GetEtlsEtl, Map<String, dynamic>>(etls, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'logstore': logstore,
      'offset': ?offset,
      'outputFile': ?outputFile,
      'project': project,
      'size': ?size,
    };
  }

  factory GetEtlsResult.fromMap(Map<String, dynamic> map) {
    return GetEtlsResult(
      etls: pulumi.Input.decodeList<GetEtlsEtl>(map['etls'], (value) => GetEtlsEtl.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      logstore: map['logstore'] as String,
      offset: map['offset'] == null ? null : map['offset']! as int,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      project: map['project'] as String,
      size: map['size'] == null ? null : map['size']! as int,
    );
  }
}

