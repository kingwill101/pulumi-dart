// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EphemeralStorage
class EphemeralStorage {
  /// The size of the function's ``/tmp`` directory.
  final int? size;
  /// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is ``20`` GiB and the maximum supported value is ``200`` GiB.
  final int? sizeInGiB;

  /// Creates a new [EphemeralStorage].
  /// [size] The size of the function's ``/tmp`` directory.
  /// [sizeInGiB] The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is ``20`` GiB and the maximum supported value is ``200`` GiB.
  EphemeralStorage({
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
      size: map['size'] == null ? null : map['size'] as int,
      sizeInGiB: map['sizeInGiB'] == null ? null : map['sizeInGiB'] as int,
    );
  }
}

