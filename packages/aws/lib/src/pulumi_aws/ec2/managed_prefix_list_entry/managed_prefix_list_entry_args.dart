// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ManagedPrefixListEntry.
class ManagedPrefixListEntryArgs {
  /// CIDR block of this entry.
  final pulumi.Input<String> cidr;

  /// Description of this entry. Please note that due to API limitations, updating only the description of an entry will require recreating the entry.
  final pulumi.Input<String>? description;

  /// The ID of the prefix list.
  final pulumi.Input<String> prefixListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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
      cidr: pulumi.Input.asInput<String>(map['cidr']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      prefixListId: pulumi.Input.asInput<String>(map['prefixListId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
