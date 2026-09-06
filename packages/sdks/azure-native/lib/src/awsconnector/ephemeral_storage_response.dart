// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EphemeralStorage
class EphemeralStorageResponse {
  /// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is ``20`` GiB and the maximum supported value is ``200`` GiB.
  final pulumi.Input<int?>? sizeInGiB;

  /// Creates a new [EphemeralStorageResponse].
  /// [sizeInGiB] The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is ``20`` GiB and the maximum supported value is ``200`` GiB.
  const EphemeralStorageResponse({
    this.sizeInGiB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeInGiB': ?sizeInGiB,
    };
  }

  factory EphemeralStorageResponse.fromMap(Map<String, dynamic> map) {
    return EphemeralStorageResponse(
      sizeInGiB: (() { final guardedValue = map['sizeInGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
