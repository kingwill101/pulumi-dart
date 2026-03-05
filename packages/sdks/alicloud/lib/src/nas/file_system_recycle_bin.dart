// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemRecycleBin {
  /// Recycle Bin open time
  final pulumi.Input<String>? enableTime;
  /// Retention time of files in the Recycle Bin. Unit: days.
  final pulumi.Input<int>? reservedDays;
  /// Amount of low-frequency data stored in the recycle bin. Unit: Byte.
  final pulumi.Input<int>? secondarySize;
  /// The amount of files stored in the Recycle Bin. Unit: Byte.
  final pulumi.Input<int>? size;
  /// Recycle Bin Status
  final pulumi.Input<String>? status;

  /// Creates a new [FileSystemRecycleBin].
  /// [enableTime] Recycle Bin open time
  /// [reservedDays] Retention time of files in the Recycle Bin. Unit: days.
  /// [secondarySize] Amount of low-frequency data stored in the recycle bin. Unit: Byte.
  /// [size] The amount of files stored in the Recycle Bin. Unit: Byte.
  /// [status] Recycle Bin Status
  FileSystemRecycleBin({
    this.enableTime,
    this.reservedDays,
    this.secondarySize,
    this.size,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTime': ?enableTime,
      'reservedDays': ?reservedDays,
      'secondarySize': ?secondarySize,
      'size': ?size,
      'status': ?status,
    };
  }

  factory FileSystemRecycleBin.fromMap(Map<String, dynamic> map) {
    return FileSystemRecycleBin(
      enableTime: (() { final guardedValue = map['enableTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedDays: (() { final guardedValue = map['reservedDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      secondarySize: (() { final guardedValue = map['secondarySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

