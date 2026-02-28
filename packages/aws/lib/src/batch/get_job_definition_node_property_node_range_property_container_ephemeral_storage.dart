// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage {
  final int sizeInGib;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage].
  /// [sizeInGib] Required.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sizeInGib'] = sizeInGib;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage(
      sizeInGib: map['sizeInGib'] as int,
    );
  }
}
