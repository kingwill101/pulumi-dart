// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_prefix_list_association_prefix_list_association_args_doc}
/// The set of arguments for PrefixListAssociation.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_prefix_list_association_prefix_list_association_args_doc}
class PrefixListAssociationArgs {
  /// The ID of the core network to associate the prefix list with.
  final pulumi.Input<String> coreNetworkId;
  /// An alias for the prefix list association. This alias can be used to reference the prefix list in the core network policy document. Must start with a letter, be less than 64 characters long, and may only include letters and numbers.
  final pulumi.Input<String> prefixListAlias;
  /// The ARN of the EC2 managed prefix list to associate with the core network.
  final pulumi.Input<String> prefixListArn;

  /// Creates a new [PrefixListAssociationArgs].
  /// [coreNetworkId] The ID of the core network to associate the prefix list with.
  /// [prefixListAlias] An alias for the prefix list association. This alias can be used to reference the prefix list in the core network policy document. Must start with a letter, be less than 64 characters long, and may only include letters and numbers.
  /// [prefixListArn] The ARN of the EC2 managed prefix list to associate with the core network.
  const PrefixListAssociationArgs({
    required this.coreNetworkId,
    required this.prefixListAlias,
    required this.prefixListArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': coreNetworkId,
      'prefixListAlias': prefixListAlias,
      'prefixListArn': prefixListArn,
    };
  }

  factory PrefixListAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrefixListAssociationArgs(
      coreNetworkId: pulumi.Input.fromValue(map['coreNetworkId'] as String),
      prefixListAlias: pulumi.Input.fromValue(map['prefixListAlias'] as String),
      prefixListArn: pulumi.Input.fromValue(map['prefixListArn'] as String),
    );
  }
}
