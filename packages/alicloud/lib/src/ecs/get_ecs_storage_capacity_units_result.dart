// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_storage_capacity_units_unit.dart';

/// Result data returned by getEcsStorageCapacityUnits.
class GetEcsStorageCapacityUnitsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final List<GetEcsStorageCapacityUnitsUnit> units;

  /// Creates a new [GetEcsStorageCapacityUnitsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [units] Required.
  GetEcsStorageCapacityUnitsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    required this.units,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'units': pulumi.Input.encodeList<GetEcsStorageCapacityUnitsUnit, Map<String, dynamic>>(units, (value) => value.toMap()),
    };
  }

  factory GetEcsStorageCapacityUnitsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsStorageCapacityUnitsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      units: pulumi.Input.decodeList<GetEcsStorageCapacityUnitsUnit>(map['units'], (value) => GetEcsStorageCapacityUnitsUnit.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

