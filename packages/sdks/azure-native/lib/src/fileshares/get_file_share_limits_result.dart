// ignore_for_file: unused_element, unnecessary_cast

import 'file_share_limits_output_response.dart';

/// Result data returned by getFileShareLimits.
class GetFileShareLimitsResult {
  /// The properties of the file share limits.
  final FileShareLimitsOutputResponse? properties;

  /// Creates a new [GetFileShareLimitsResult].
  /// [properties] The properties of the file share limits.
  const GetFileShareLimitsResult({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties?.toMap(),
    };
  }

  factory GetFileShareLimitsResult.fromMap(Map<String, dynamic> map) {
    return GetFileShareLimitsResult(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return FileShareLimitsOutputResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
