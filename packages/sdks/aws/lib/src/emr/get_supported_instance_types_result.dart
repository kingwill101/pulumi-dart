// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_instance_types_supported_instance_type.dart';

/// Result data returned by getSupportedInstanceTypes.
class GetSupportedInstanceTypesResult {
  final String? id;
  final String? region;
  final String? releaseLabel;
  /// List of supported instance types. See `supportedInstanceTypes` below.
  final List<GetSupportedInstanceTypesSupportedInstanceType>? supportedInstanceTypes;

  /// Creates a new [GetSupportedInstanceTypesResult].
  /// [id] Optional.
  /// [region] Optional.
  /// [releaseLabel] Optional.
  /// [supportedInstanceTypes] List of supported instance types. See `supportedInstanceTypes` below.
  const GetSupportedInstanceTypesResult({
    this.id,
    this.region,
    this.releaseLabel,
    this.supportedInstanceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
      'releaseLabel': ?releaseLabel,
      'supportedInstanceTypes': ?(() { final guardedValue = supportedInstanceTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSupportedInstanceTypesSupportedInstanceType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSupportedInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedInstanceTypesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseLabel: (() { final guardedValue = map['releaseLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedInstanceTypes: (() { final guardedValue = map['supportedInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSupportedInstanceTypesSupportedInstanceType>(guardedValue, (value) => GetSupportedInstanceTypesSupportedInstanceType.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
