// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_single_scram_secret_association_single_scram_secret_association_args_doc}
/// The set of arguments for SingleScramSecretAssociation.
/// {@endtemplate}
/// {@macro pulumi_msk_single_scram_secret_association_single_scram_secret_association_args_doc}
class SingleScramSecretAssociationArgs {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  final pulumi.Input<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// AWS Secrets Manager secret ARN.
  final pulumi.Input<String> secretArn;

  /// Creates a new [SingleScramSecretAssociationArgs].
  /// [clusterArn] Amazon Resource Name (ARN) of the MSK cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArn] AWS Secrets Manager secret ARN.
  SingleScramSecretAssociationArgs({
    required String clusterArn,
    String? region,
    required String secretArn,
  })  : clusterArn = pulumi.Input.asInput<String>(clusterArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        secretArn = pulumi.Input.asInput<String>(secretArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretArn'] = secretArn;
    return map;
  }

  factory SingleScramSecretAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SingleScramSecretAssociationArgs(
      clusterArn: map['clusterArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secretArn: map['secretArn'] as String,
    );
  }
}
