// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_runtime_versions_runtime_version/get_runtime_versions_runtime_version.dart';

/// Result data returned by getRuntimeVersions.
class GetRuntimeVersionsResult {
  /// Name of the AWS region from which runtime versions are fetched.
  final String id;
  final String region;

  /// List of runtime versions. See `runtime_versions` attribute reference.
  final List<GetRuntimeVersionsRuntimeVersion> runtimeVersions;

  GetRuntimeVersionsResult({
    required this.id,
    required this.region,
    required this.runtimeVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region'] = region;
    map['runtimeVersions'] = Input.encodeList<GetRuntimeVersionsRuntimeVersion,
        Map<String, dynamic>>(runtimeVersions, (value) => value.toMap());
    return map;
  }

  factory GetRuntimeVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetRuntimeVersionsResult(
      id: map['id'] as String,
      region: map['region'] as String,
      runtimeVersions: Input.decodeList<GetRuntimeVersionsRuntimeVersion>(
          map['runtimeVersions'],
          (value) => GetRuntimeVersionsRuntimeVersion.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
