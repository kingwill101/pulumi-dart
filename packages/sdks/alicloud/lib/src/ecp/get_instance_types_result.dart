// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_instance_type.dart';

/// Result data returned by getInstanceTypes.
class GetInstanceTypesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetInstanceTypesInstanceType> instanceTypes;
  final String? outputFile;

  /// Creates a new [GetInstanceTypesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceTypes] Required.
  /// [outputFile] Optional.
  GetInstanceTypesResult({
    required this.id,
    required this.instanceTypes,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceTypes': pulumi.Input.encodeList<GetInstanceTypesInstanceType, Map<String, dynamic>>(instanceTypes, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesResult(
      id: map['id'] as String,
      instanceTypes: pulumi.Input.decodeList<GetInstanceTypesInstanceType>(map['instanceTypes'], (value) => GetInstanceTypesInstanceType.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

