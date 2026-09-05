// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_runtime_versions_runtime_version.dart';

/// Result data returned by getRuntimeVersions.
class GetRuntimeVersionsResult {
  /// Name of the AWS region from which runtime versions are fetched.
  final String? id;
  final String? region;
  /// List of runtime versions. See `runtimeVersions` attribute reference.
  final List<GetRuntimeVersionsRuntimeVersion>? runtimeVersions;

  /// Creates a new [GetRuntimeVersionsResult].
  /// [id] Name of the AWS region from which runtime versions are fetched.
  /// [region] Optional.
  /// [runtimeVersions] List of runtime versions. See `runtimeVersions` attribute reference.
  const GetRuntimeVersionsResult({
    this.id,
    this.region,
    this.runtimeVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
      'runtimeVersions': ?(() { final guardedValue = runtimeVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRuntimeVersionsRuntimeVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRuntimeVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetRuntimeVersionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeVersions: (() { final guardedValue = map['runtimeVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRuntimeVersionsRuntimeVersion>(guardedValue, (value) => GetRuntimeVersionsRuntimeVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
