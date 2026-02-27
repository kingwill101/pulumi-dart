// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_supported_instance_types_supported_instance_type/get_supported_instance_types_supported_instance_type.dart';

/// Result data returned by getSupportedInstanceTypes.
class GetSupportedInstanceTypesResult {
  final String id;
  final String region;
  final String releaseLabel;

  /// List of supported instance types. See `supported_instance_types` below.
  final List<GetSupportedInstanceTypesSupportedInstanceType>
      supportedInstanceTypes;

  GetSupportedInstanceTypesResult({
    required this.id,
    required this.region,
    required this.releaseLabel,
    required this.supportedInstanceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region'] = region;
    map['releaseLabel'] = releaseLabel;
    map['supportedInstanceTypes'] = Input.encodeList<
        GetSupportedInstanceTypesSupportedInstanceType,
        Map<String, dynamic>>(supportedInstanceTypes, (value) => value.toMap());
    return map;
  }

  factory GetSupportedInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedInstanceTypesResult(
      id: map['id'] as String,
      region: map['region'] as String,
      releaseLabel: map['releaseLabel'] as String,
      supportedInstanceTypes:
          Input.decodeList<GetSupportedInstanceTypesSupportedInstanceType>(
              map['supportedInstanceTypes'],
              (value) => GetSupportedInstanceTypesSupportedInstanceType.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
