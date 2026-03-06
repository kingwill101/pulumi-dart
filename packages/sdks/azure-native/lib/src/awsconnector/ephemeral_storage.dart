// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EphemeralStorage
class EphemeralStorage {
  /// The size of the function's ``/tmp`` directory.
  final pulumi.Input<int>? size;
  /// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is ``20`` GiB and the maximum supported value is ``200`` GiB.
  final pulumi.Input<int>? sizeInGiB;

  /// Creates a new [EphemeralStorage].
  /// [size] The size of the function's ``/tmp`` directory.
  /// [sizeInGiB] The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is ``20`` GiB and the maximum supported value is ``200`` GiB.
  const EphemeralStorage({
    this.size,
    this.sizeInGiB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'sizeInGiB': ?sizeInGiB,
    };
  }

  factory EphemeralStorage.fromMap(Map<String, dynamic> map) {
    return EphemeralStorage(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sizeInGiB: (() { final guardedValue = map['sizeInGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

