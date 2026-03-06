// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskDefinitionEphemeralStorage {
  /// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is `21` GiB and the maximum supported value is `200` GiB.
  final pulumi.Input<int> sizeInGib;

  /// Creates a new [GetTaskDefinitionEphemeralStorage].
  /// [sizeInGib] The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is `21` GiB and the maximum supported value is `200` GiB.
  const GetTaskDefinitionEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeInGib': sizeInGib,
    };
  }

  factory GetTaskDefinitionEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionEphemeralStorage(
      sizeInGib: pulumi.Input.fromValue(map['sizeInGib'] as int),
    );
  }
}

