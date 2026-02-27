// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionEphemeralStorage {
  /// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is `21` GiB and the maximum supported value is `200` GiB.
  final int sizeInGib;

  TaskDefinitionEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sizeInGib'] = sizeInGib;
    return map;
  }

  factory TaskDefinitionEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionEphemeralStorage(
      sizeInGib: map['sizeInGib'] as int,
    );
  }
}
