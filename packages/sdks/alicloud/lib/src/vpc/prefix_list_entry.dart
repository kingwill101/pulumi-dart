// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrefixListEntry {
  /// The CIDR address block of the prefix list.
  final pulumi.Input<String>? cidr;
  /// The description of the cidr entry. It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;

  /// Creates a new [PrefixListEntry].
  /// [cidr] The CIDR address block of the prefix list.
  /// [description] The description of the cidr entry. It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  PrefixListEntry({
    this.cidr,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
    };
  }

  factory PrefixListEntry.fromMap(Map<String, dynamic> map) {
    return PrefixListEntry(
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
    );
  }
}

