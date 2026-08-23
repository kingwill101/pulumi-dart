// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for disk for that pool is using
class Disk {
  /// ID is the disk identifier visible to the OS. It is typically the WWN or disk ID in formats such as eui.e8238fa6bf530001001b448b45263379 or 0x5002cf6cbc5dd460
  final pulumi.Input<String> id;
  /// Reference is the location of the disk in an external system.
  final pulumi.Input<String> reference;

  /// Creates a new [Disk].
  /// [id] ID is the disk identifier visible to the OS. It is typically the WWN or disk ID in formats such as eui.e8238fa6bf530001001b448b45263379 or 0x5002cf6cbc5dd460
  /// [reference] Reference is the location of the disk in an external system.
  const Disk({
    required this.id,
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'reference': reference,
    };
  }

  factory Disk.fromMap(Map<String, dynamic> map) {
    return Disk(
      id: pulumi.Input.fromValue(map['id'] as String),
      reference: pulumi.Input.fromValue(map['reference'] as String),
    );
  }
}
