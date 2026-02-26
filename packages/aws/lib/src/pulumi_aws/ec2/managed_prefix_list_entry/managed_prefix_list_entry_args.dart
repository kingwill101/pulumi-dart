// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ManagedPrefixListEntry.
class ManagedPrefixListEntryArgs {
  /// CIDR block of this entry.
  final Input<String> cidr;

  /// Description of this entry. Please note that due to API limitations, updating only the description of an entry will require recreating the entry.
  final Input<String>? description;

  /// The ID of the prefix list.
  final Input<String> prefixListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ManagedPrefixListEntryArgs({
    required this.cidr,
    this.description,
    required this.prefixListId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['prefixListId'] = prefixListId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ManagedPrefixListEntryArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrefixListEntryArgs(
      cidr: Input.asInput<String>(map['cidr']),
      description: Input.asOptionalInput<String>(map['description']),
      prefixListId: Input.asInput<String>(map['prefixListId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
