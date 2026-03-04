// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_limits_limit.dart';

/// Result data returned by getDataLimits.
class GetDataLimitsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// A list of Sddp Data Limits. Each element contains the following attributes:
  final List<GetDataLimitsLimit> limits;
  final String? outputFile;

  /// The ID of the data asset.
  final String? parentId;

  /// The type of the service to which the data asset belongs.
  final String? resourceType;

  /// Creates a new [GetDataLimitsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [limits] A list of Sddp Data Limits. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [parentId] The ID of the data asset.
  /// [resourceType] The type of the service to which the data asset belongs.
  GetDataLimitsResult({
    required this.id,
    required this.ids,
    required this.limits,
    this.outputFile,
    this.parentId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'limits':
          pulumi.Input.encodeList<GetDataLimitsLimit, Map<String, dynamic>>(
            limits,
            (value) => value.toMap(),
          ),
      'outputFile': ?outputFile,
      'parentId': ?parentId,
      'resourceType': ?resourceType,
    };
  }

  factory GetDataLimitsResult.fromMap(Map<String, dynamic> map) {
    return GetDataLimitsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      limits: pulumi.Input.decodeList<GetDataLimitsLimit>(
        map['limits']!,
        (value) =>
            GetDataLimitsLimit.fromMap((value as Map).cast<String, dynamic>()),
      ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      parentId: (() {
        final guardedValue = map['parentId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
