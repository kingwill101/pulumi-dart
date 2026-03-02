// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addon_releases_release.dart';

/// Result data returned by getAddonReleases.
class GetAddonReleasesResult {
  /// The environment ID.
  final String environmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of ARMS Addon Release names.
  final List<String> names;
  final String? outputFile;
  /// A list of ARMS Addon Releases. Each element contains the following attributes:
  final List<GetAddonReleasesRelease> releases;

  /// Creates a new [GetAddonReleasesResult].
  /// [environmentId] The environment ID.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of ARMS Addon Release names.
  /// [outputFile] Optional.
  /// [releases] A list of ARMS Addon Releases. Each element contains the following attributes:
  GetAddonReleasesResult({
    required this.environmentId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.releases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'releases': pulumi.Input.encodeList<GetAddonReleasesRelease, Map<String, dynamic>>(releases, (value) => value.toMap()),
    };
  }

  factory GetAddonReleasesResult.fromMap(Map<String, dynamic> map) {
    return GetAddonReleasesResult(
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      releases: pulumi.Input.decodeList<GetAddonReleasesRelease>(map['releases'], (value) => GetAddonReleasesRelease.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

