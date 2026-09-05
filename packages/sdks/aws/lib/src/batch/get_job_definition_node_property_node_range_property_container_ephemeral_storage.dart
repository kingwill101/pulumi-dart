// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage {
  /// Total amount, in GiB, of ephemeral storage to set for the task.
  final pulumi.Input<int> sizeInGib;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage].
  /// [sizeInGib] Total amount, in GiB, of ephemeral storage to set for the task.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeInGib': sizeInGib,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage(
      sizeInGib: pulumi.Input.fromValue((map['sizeInGib'] as num).toInt()),
    );
  }
}
