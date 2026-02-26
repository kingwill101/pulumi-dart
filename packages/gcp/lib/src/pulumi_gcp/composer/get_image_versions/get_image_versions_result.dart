// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_image_versions_image_version/get_image_versions_image_version.dart';

/// Result data returned by getImageVersions.
class GetImageVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of composer image versions available in the given project and location. Each <span pulumi-lang-nodejs="`imageVersion`" pulumi-lang-dotnet="`ImageVersion`" pulumi-lang-go="`imageVersion`" pulumi-lang-python="`image_version`" pulumi-lang-yaml="`imageVersion`" pulumi-lang-java="`imageVersion`">`image_version`</span> contains:
  final List<GetImageVersionsImageVersion> imageVersions;
  final String project;
  final String region;

  GetImageVersionsResult({
    required this.id,
    required this.imageVersions,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['imageVersions'] =
        Input.encodeList<GetImageVersionsImageVersion, Map<String, dynamic>>(
            imageVersions, (value) => value.toMap());
    map['project'] = project;
    map['region'] = region;
    return map;
  }

  factory GetImageVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetImageVersionsResult(
      id: map['id'] as String,
      imageVersions: Input.decodeList<GetImageVersionsImageVersion>(
          map['imageVersions'],
          (value) => GetImageVersionsImageVersion.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}
