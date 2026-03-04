// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_desktop_types_type.dart';

/// Result data returned by getDesktopTypes.
class GetDesktopTypesResult {
  final int? cpuCount;
  final double? gpuCount;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceTypeFamily;
  final int? memorySize;
  final String? outputFile;
  final String? status;
  final List<GetDesktopTypesType> types;

  /// Creates a new [GetDesktopTypesResult].
  /// [cpuCount] Optional.
  /// [gpuCount] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceTypeFamily] Optional.
  /// [memorySize] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [types] Required.
  GetDesktopTypesResult({
    this.cpuCount,
    this.gpuCount,
    required this.id,
    required this.ids,
    this.instanceTypeFamily,
    this.memorySize,
    this.outputFile,
    this.status,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'gpuCount': ?gpuCount,
      'id': id,
      'ids': ids,
      'instanceTypeFamily': ?instanceTypeFamily,
      'memorySize': ?memorySize,
      'outputFile': ?outputFile,
      'status': ?status,
      'types':
          pulumi.Input.encodeList<GetDesktopTypesType, Map<String, dynamic>>(
            types,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetDesktopTypesResult.fromMap(Map<String, dynamic> map) {
    return GetDesktopTypesResult(
      cpuCount: (() {
        final guardedValue = map['cpuCount'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      gpuCount: (() {
        final guardedValue = map['gpuCount'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceTypeFamily: (() {
        final guardedValue = map['instanceTypeFamily'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      memorySize: (() {
        final guardedValue = map['memorySize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      types: pulumi.Input.decodeList<GetDesktopTypesType>(
        map['types']!,
        (value) =>
            GetDesktopTypesType.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
