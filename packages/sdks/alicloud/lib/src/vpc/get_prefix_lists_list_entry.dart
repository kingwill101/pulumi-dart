// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrefixListsListEntry {
  /// The CIDR address block of the prefix list.
  final pulumi.Input<String> cidr;
  /// The description of the cidr entry.
  final pulumi.Input<String> description;

  /// Creates a new [GetPrefixListsListEntry].
  /// [cidr] The CIDR address block of the prefix list.
  /// [description] The description of the cidr entry.
  GetPrefixListsListEntry({
    required this.cidr,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': description,
    };
  }

  factory GetPrefixListsListEntry.fromMap(Map<String, dynamic> map) {
    return GetPrefixListsListEntry(
      cidr: (map['cidr'] as String).input(),
      description: (map['description'] as String).input(),
    );
  }
}

