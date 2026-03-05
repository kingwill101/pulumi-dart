// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the disk information fo the Azure Large Instance
class Disk {
  /// Specifies the size of an empty data disk in gigabytes.
  final pulumi.Input<int>? diskSizeGB;
  /// The disk name.
  final pulumi.Input<String>? name;

  /// Creates a new [Disk].
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes.
  /// [name] The disk name.
  Disk({
    this.diskSizeGB,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGB': ?diskSizeGB,
      'name': ?name,
    };
  }

  factory Disk.fromMap(Map<String, dynamic> map) {
    return Disk(
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

