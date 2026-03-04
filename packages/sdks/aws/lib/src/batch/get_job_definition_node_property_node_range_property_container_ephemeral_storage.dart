// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage {
  final pulumi.Input<int> sizeInGib;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage].
  /// [sizeInGib] Required.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sizeInGib': sizeInGib};
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage(
      sizeInGib: pulumi.Input.fromValue(map['sizeInGib'] as int),
    );
  }
}
