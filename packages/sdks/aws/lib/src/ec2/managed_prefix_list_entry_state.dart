// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedPrefixListEntry resources.
class ManagedPrefixListEntryState {
  /// CIDR block of this entry.
  final pulumi.Input<String>? cidr;
  /// Description of this entry. Please note that due to API limitations, updating only the description of an entry will require recreating the entry.
  final pulumi.Input<String>? description;
  /// The ID of the prefix list.
  final pulumi.Input<String>? prefixListId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ManagedPrefixListEntryState].
  /// [cidr] CIDR block of this entry.
  /// [description] Description of this entry. Please note that due to API limitations, updating only the description of an entry will require recreating the entry.
  /// [prefixListId] The ID of the prefix list.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ManagedPrefixListEntryState({
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? description,
    pulumi.Output<String>? prefixListId,
    pulumi.Output<String>? region,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      description = pulumi.Input.asOptionalInput<String>(description),
      prefixListId = pulumi.Input.asOptionalInput<String>(prefixListId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
      'prefixListId': ?prefixListId,
      'region': ?region,
    };
  }

  factory ManagedPrefixListEntryState.fromMap(Map<String, dynamic> map) {
    return ManagedPrefixListEntryState(
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      prefixListId: map['prefixListId'] == null ? null : pulumi.Output.create<String>(map['prefixListId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

