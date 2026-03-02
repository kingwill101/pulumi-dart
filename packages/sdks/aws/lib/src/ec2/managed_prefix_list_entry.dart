// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedPrefixListEntry {
  /// CIDR block of this entry.
  final pulumi.Input<String> cidr;
  /// Description of this entry. Due to API limitations, updating only the description of an existing entry requires temporarily removing and re-adding the entry.
  final pulumi.Input<String>? description;

  /// Creates a new [ManagedPrefixListEntry].
  /// [cidr] CIDR block of this entry.
  /// [description] Description of this entry. Due to API limitations, updating only the description of an existing entry requires temporarily removing and re-adding the entry.
  ManagedPrefixListEntry({
    required this.cidr,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': ?description,
    };
  }

  factory ManagedPrefixListEntry.fromMap(Map<String, dynamic> map) {
    return ManagedPrefixListEntry(
      cidr: (map['cidr'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
    );
  }
}

