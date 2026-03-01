// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_instance_types_supported_instance_type.dart';

/// Result data returned by getSupportedInstanceTypes.
class GetSupportedInstanceTypesResult {
  final String id;
  final String region;
  final String releaseLabel;
  /// List of supported instance types. See `supported_instance_types` below.
  final List<GetSupportedInstanceTypesSupportedInstanceType> supportedInstanceTypes;

  /// Creates a new [GetSupportedInstanceTypesResult].
  /// [id] Required.
  /// [region] Required.
  /// [releaseLabel] Required.
  /// [supportedInstanceTypes] List of supported instance types. See `supported_instance_types` below.
  GetSupportedInstanceTypesResult({
    required this.id,
    required this.region,
    required this.releaseLabel,
    required this.supportedInstanceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'releaseLabel': releaseLabel,
      'supportedInstanceTypes': pulumi.Input.encodeList<GetSupportedInstanceTypesSupportedInstanceType, Map<String, dynamic>>(supportedInstanceTypes, (value) => value.toMap()),
    };
  }

  factory GetSupportedInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedInstanceTypesResult(
      id: map['id'] as String,
      region: map['region'] as String,
      releaseLabel: map['releaseLabel'] as String,
      supportedInstanceTypes: pulumi.Input.decodeList<GetSupportedInstanceTypesSupportedInstanceType>(map['supportedInstanceTypes'], (value) => GetSupportedInstanceTypesSupportedInstanceType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

