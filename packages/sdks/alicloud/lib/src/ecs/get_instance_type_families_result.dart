// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_families_family.dart';

/// Result data returned by getInstanceTypeFamilies.
class GetInstanceTypeFamiliesResult {
  final List<GetInstanceTypeFamiliesFamily> families;

  /// The generation of the instance type family.
  final String? generation;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of instance type family IDs.
  final List<String> ids;
  final String? instanceChargeType;
  final String? outputFile;
  final String? spotStrategy;
  final String? zoneId;

  /// Creates a new [GetInstanceTypeFamiliesResult].
  /// [families] Required.
  /// [generation] The generation of the instance type family.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of instance type family IDs.
  /// [instanceChargeType] Optional.
  /// [outputFile] Optional.
  /// [spotStrategy] Optional.
  /// [zoneId] Optional.
  GetInstanceTypeFamiliesResult({
    required this.families,
    this.generation,
    required this.id,
    required this.ids,
    this.instanceChargeType,
    this.outputFile,
    this.spotStrategy,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'families':
          pulumi.Input.encodeList<
            GetInstanceTypeFamiliesFamily,
            Map<String, dynamic>
          >(families, (value) => value.toMap()),
      'generation': ?generation,
      'id': id,
      'ids': ids,
      'instanceChargeType': ?instanceChargeType,
      'outputFile': ?outputFile,
      'spotStrategy': ?spotStrategy,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceTypeFamiliesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeFamiliesResult(
      families: pulumi.Input.decodeList<GetInstanceTypeFamiliesFamily>(
        map['families']!,
        (value) => GetInstanceTypeFamiliesFamily.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      generation: (() {
        final guardedValue = map['generation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      spotStrategy: (() {
        final guardedValue = map['spotStrategy'];
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
