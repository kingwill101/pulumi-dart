// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_replication_vault_regions_get_replication_vault_regions_args_doc}
/// Arguments for getReplicationVaultRegions.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_replication_vault_regions_get_replication_vault_regions_args_doc}
class GetReplicationVaultRegionsArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetReplicationVaultRegionsArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetReplicationVaultRegionsArgs({
    pulumi.Output<String>? outputFile,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetReplicationVaultRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationVaultRegionsArgs(
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

