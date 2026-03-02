// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_specifications_specification.dart';

/// Result data returned by getInstanceSpecifications.
class GetInstanceSpecificationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetInstanceSpecificationsSpecification> specifications;

  /// Creates a new [GetInstanceSpecificationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [specifications] Required.
  GetInstanceSpecificationsResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.specifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'specifications': pulumi.Input.encodeList<GetInstanceSpecificationsSpecification, Map<String, dynamic>>(specifications, (value) => value.toMap()),
    };
  }

  factory GetInstanceSpecificationsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceSpecificationsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      specifications: pulumi.Input.decodeList<GetInstanceSpecificationsSpecification>(map['specifications'], (value) => GetInstanceSpecificationsSpecification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

