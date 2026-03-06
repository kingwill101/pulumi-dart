// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sag_snat_entry_snat_entry_args_doc}
/// The set of arguments for SnatEntry.
/// {@endtemplate}
/// {@macro pulumi_sag_snat_entry_snat_entry_args_doc}
class SnatEntryArgs {
  /// The destination CIDR block.
  final pulumi.Input<String> cidrBlock;
  /// The ID of the SAG instance.
  final pulumi.Input<String> sagId;
  /// The public IP address.
  final pulumi.Input<String> snatIp;

  /// Creates a new [SnatEntryArgs].
  /// [cidrBlock] The destination CIDR block.
  /// [sagId] The ID of the SAG instance.
  /// [snatIp] The public IP address.
  const SnatEntryArgs({
    required this.cidrBlock,
    required this.sagId,
    required this.snatIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'sagId': sagId,
      'snatIp': snatIp,
    };
  }

  factory SnatEntryArgs.fromMap(Map<String, dynamic> map) {
    return SnatEntryArgs(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      sagId: pulumi.Input.fromValue(map['sagId'] as String),
      snatIp: pulumi.Input.fromValue(map['snatIp'] as String),
    );
  }
}

