// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrefixListAssociation resources.
class PrefixListAssociationState {
  /// The ID of the core network to associate the prefix list with.
  final pulumi.Input<String>? coreNetworkId;
  /// An alias for the prefix list association. This alias can be used to reference the prefix list in the core network policy document. Must start with a letter, be less than 64 characters long, and may only include letters and numbers.
  final pulumi.Input<String>? prefixListAlias;
  /// The ARN of the EC2 managed prefix list to associate with the core network.
  final pulumi.Input<String>? prefixListArn;

  /// Creates a new [PrefixListAssociationState].
  /// [coreNetworkId] The ID of the core network to associate the prefix list with.
  /// [prefixListAlias] An alias for the prefix list association. This alias can be used to reference the prefix list in the core network policy document. Must start with a letter, be less than 64 characters long, and may only include letters and numbers.
  /// [prefixListArn] The ARN of the EC2 managed prefix list to associate with the core network.
  const PrefixListAssociationState({
    this.coreNetworkId,
    this.prefixListAlias,
    this.prefixListArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': ?coreNetworkId,
      'prefixListAlias': ?prefixListAlias,
      'prefixListArn': ?prefixListArn,
    };
  }

  factory PrefixListAssociationState.fromMap(Map<String, dynamic> map) {
    return PrefixListAssociationState(
      coreNetworkId: (() { final guardedValue = map['coreNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixListAlias: (() { final guardedValue = map['prefixListAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixListArn: (() { final guardedValue = map['prefixListArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
