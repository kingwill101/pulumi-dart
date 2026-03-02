// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_scram_secret_association_scram_secret_association_args_doc}
/// The set of arguments for ScramSecretAssociation.
/// {@endtemplate}
/// {@macro pulumi_msk_scram_secret_association_scram_secret_association_args_doc}
class ScramSecretAssociationArgs {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  final pulumi.Input<String> clusterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Secrets Manager secret ARNs.
  final pulumi.Input<List<String>> secretArnLists;

  /// Creates a new [ScramSecretAssociationArgs].
  /// [clusterArn] Amazon Resource Name (ARN) of the MSK cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArnLists] List of AWS Secrets Manager secret ARNs.
  ScramSecretAssociationArgs({
    required this.clusterArn,
    this.region,
    required this.secretArnLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'region': ?region,
      'secretArnLists': secretArnLists,
    };
  }

  factory ScramSecretAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ScramSecretAssociationArgs(
      clusterArn: (map['clusterArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      secretArnLists: ((map['secretArnLists'] as List).cast<String>()).input(),
    );
  }
}

