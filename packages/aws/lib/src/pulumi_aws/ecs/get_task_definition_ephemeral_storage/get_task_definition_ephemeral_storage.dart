// ignore_for_file: unused_element, unnecessary_cast

class GetTaskDefinitionEphemeralStorage {
  /// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is `21` GiB and the maximum supported value is `200` GiB.
  final int sizeInGib;

  GetTaskDefinitionEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sizeInGib'] = sizeInGib;
    return map;
  }

  factory GetTaskDefinitionEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionEphemeralStorage(
      sizeInGib: map['sizeInGib'] as int,
    );
  }
}
