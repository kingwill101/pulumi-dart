// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_managed_prefix_list_entry_managed_prefix_list_entry_args_doc}
/// The set of arguments for ManagedPrefixListEntry.
/// {@endtemplate}
/// {@macro pulumi_ec2_managed_prefix_list_entry_managed_prefix_list_entry_args_doc}
class ManagedPrefixListEntryArgs {
  /// CIDR block of this entry.
  final pulumi.Input<String> cidr;
  /// Description of this entry. Please note that due to API limitations, updating only the description of an entry will require recreating the entry.
  final pulumi.Input<String>? description;
  /// The ID of the prefix list.
  final pulumi.Input<String> prefixListId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ManagedPrefixListEntryArgs].
  /// [cidr] CIDR block of this entry.
  /// [description] Description of this entry. Please note that due to API limitations, updating only the description of an entry will require recreating the entry.
  /// [prefixListId] The ID of the prefix list.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ManagedPrefixListEntryArgs({
    required pulumi.Output<String> cidr,
    pulumi.Output<String>? description,
    required pulumi.Output<String> prefixListId,
    pulumi.Output<String>? region,
  }) :
      cidr = pulumi.Input.asInput<String>(cidr),
      description = pulumi.Input.asOptionalInput<String>(description),
      prefixListId = pulumi.Input.asInput<String>(prefixListId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': ?description,
      'prefixListId': prefixListId,
      'region': ?region,
    };
  }

  factory ManagedPrefixListEntryArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrefixListEntryArgs(
      cidr: pulumi.Output.create<String>(map['cidr'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      prefixListId: pulumi.Output.create<String>(map['prefixListId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

