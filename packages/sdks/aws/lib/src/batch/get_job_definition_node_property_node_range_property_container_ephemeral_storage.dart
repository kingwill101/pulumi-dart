// ignore_for_file: unused_element, unnecessary_cast


class GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage {
  final int sizeInGib;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage].
  /// [sizeInGib] Required.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeInGib': sizeInGib,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage(
      sizeInGib: map['sizeInGib'] as int,
    );
  }
}

