// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsPrefixListsListEntry {
  final pulumi.Input<String> cidr;
  /// The description of the prefix list.
  final pulumi.Input<String> description;

  /// Creates a new [GetEcsPrefixListsListEntry].
  /// [cidr] Required.
  /// [description] The description of the prefix list.
  const GetEcsPrefixListsListEntry({
    required this.cidr,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': description,
    };
  }

  factory GetEcsPrefixListsListEntry.fromMap(Map<String, dynamic> map) {
    return GetEcsPrefixListsListEntry(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}

