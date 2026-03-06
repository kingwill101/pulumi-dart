// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_main_versions_main_version.dart';

/// Result data returned by getMainVersions.
class GetMainVersionsResult {
  final List<String>? clusterTypes;
  /// The version of the emr cluster instance.
  final String? emrVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of emr instance types IDs.
  final List<String> ids;
  /// A list of versions of the emr cluster instance. Each element contains the following attributes:
  final List<GetMainVersionsMainVersion> mainVersions;
  final String? outputFile;

  /// Creates a new [GetMainVersionsResult].
  /// [clusterTypes] Optional.
  /// [emrVersion] The version of the emr cluster instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of emr instance types IDs.
  /// [mainVersions] A list of versions of the emr cluster instance. Each element contains the following attributes:
  /// [outputFile] Optional.
  const GetMainVersionsResult({
    this.clusterTypes,
    this.emrVersion,
    required this.id,
    required this.ids,
    required this.mainVersions,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTypes': ?clusterTypes,
      'emrVersion': ?emrVersion,
      'id': id,
      'ids': ids,
      'mainVersions': pulumi.Input.encodeList<GetMainVersionsMainVersion, Map<String, dynamic>>(mainVersions, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetMainVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetMainVersionsResult(
      clusterTypes: (() { final guardedValue = map['clusterTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      emrVersion: (() { final guardedValue = map['emrVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      mainVersions: pulumi.Input.decodeList<GetMainVersionsMainVersion>(map['mainVersions']!, (value) => GetMainVersionsMainVersion.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

