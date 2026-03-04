// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_core_instance_type.dart';
import 'get_instance_types_master_instance_type.dart';
import 'get_instance_types_type.dart';

/// Result data returned by getInstanceTypes.
class GetInstanceTypesResult {
  final String? chargeType;

  /// (Available in 1.115.0+) A list of core instance types. Each element contains the following attributes:
  final List<GetInstanceTypesCoreInstanceType> coreInstanceTypes;
  final String? diskType;

  /// Name of the engine.
  final String? engine;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of instance types type IDs.
  final List<String> ids;

  /// Name of the instance type.
  final String? instanceType;

  /// (Available in 1.115.0+) A list of master instance types. Each element contains the following attributes:
  final List<GetInstanceTypesMasterInstanceType> masterInstanceTypes;
  final String? outputFile;
  final String? regionId;

  /// (Deprecated) A list of instance types. Each element contains the following attributes:
  final List<GetInstanceTypesType> types;

  /// The version of the engine.
  final String? version;
  final String? zoneId;

  /// Creates a new [GetInstanceTypesResult].
  /// [chargeType] Optional.
  /// [coreInstanceTypes] (Available in 1.115.0+) A list of core instance types. Each element contains the following attributes:
  /// [diskType] Optional.
  /// [engine] Name of the engine.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of instance types type IDs.
  /// [instanceType] Name of the instance type.
  /// [masterInstanceTypes] (Available in 1.115.0+) A list of master instance types. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [regionId] Optional.
  /// [types] (Deprecated) A list of instance types. Each element contains the following attributes:
  /// [version] The version of the engine.
  /// [zoneId] Optional.
  GetInstanceTypesResult({
    this.chargeType,
    required this.coreInstanceTypes,
    this.diskType,
    this.engine,
    required this.id,
    required this.ids,
    this.instanceType,
    required this.masterInstanceTypes,
    this.outputFile,
    this.regionId,
    required this.types,
    this.version,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chargeType': ?chargeType,
      'coreInstanceTypes':
          pulumi.Input.encodeList<
            GetInstanceTypesCoreInstanceType,
            Map<String, dynamic>
          >(coreInstanceTypes, (value) => value.toMap()),
      'diskType': ?diskType,
      'engine': ?engine,
      'id': id,
      'ids': ids,
      'instanceType': ?instanceType,
      'masterInstanceTypes':
          pulumi.Input.encodeList<
            GetInstanceTypesMasterInstanceType,
            Map<String, dynamic>
          >(masterInstanceTypes, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'regionId': ?regionId,
      'types':
          pulumi.Input.encodeList<GetInstanceTypesType, Map<String, dynamic>>(
            types,
            (value) => value.toMap(),
          ),
      'version': ?version,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesResult(
      chargeType: (() {
        final guardedValue = map['chargeType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      coreInstanceTypes:
          pulumi.Input.decodeList<GetInstanceTypesCoreInstanceType>(
            map['coreInstanceTypes']!,
            (value) => GetInstanceTypesCoreInstanceType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      masterInstanceTypes:
          pulumi.Input.decodeList<GetInstanceTypesMasterInstanceType>(
            map['masterInstanceTypes']!,
            (value) => GetInstanceTypesMasterInstanceType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      types: pulumi.Input.decodeList<GetInstanceTypesType>(
        map['types']!,
        (value) => GetInstanceTypesType.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
