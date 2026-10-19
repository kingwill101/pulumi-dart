// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageVersionResource {
  /// Minimum amount of memory in MiB allocated to the MicroVM.
  final pulumi.Input<int> minimumMemoryInMib;

  /// Creates a new [GetImageVersionResource].
  /// [minimumMemoryInMib] Minimum amount of memory in MiB allocated to the MicroVM.
  const GetImageVersionResource({
    required this.minimumMemoryInMib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumMemoryInMib': minimumMemoryInMib,
    };
  }

  factory GetImageVersionResource.fromMap(Map<String, dynamic> map) {
    return GetImageVersionResource(
      minimumMemoryInMib: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minimumMemoryInMib'])),
    );
  }
}
