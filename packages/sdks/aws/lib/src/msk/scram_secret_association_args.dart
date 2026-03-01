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
    required pulumi.Output<String> clusterArn,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> secretArnLists,
  }) :
      clusterArn = pulumi.Input.asInput<String>(clusterArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretArnLists = pulumi.Input.asInput<List<String>>(secretArnLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'region': ?region,
      'secretArnLists': secretArnLists,
    };
  }

  factory ScramSecretAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ScramSecretAssociationArgs(
      clusterArn: pulumi.Output.create<String>(map['clusterArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretArnLists: pulumi.Output.create<List<String>>((map['secretArnLists'] as List).cast<String>()),
    );
  }
}

