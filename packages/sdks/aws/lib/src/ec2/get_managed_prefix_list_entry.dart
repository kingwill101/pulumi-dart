// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedPrefixListEntry {
  final pulumi.Input<String> cidr;
  final pulumi.Input<String> description;

  /// Creates a new [GetManagedPrefixListEntry].
  /// [cidr] Required.
  /// [description] Required.
  GetManagedPrefixListEntry({required this.cidr, required this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cidr': cidr, 'description': description};
  }

  factory GetManagedPrefixListEntry.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListEntry(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}
