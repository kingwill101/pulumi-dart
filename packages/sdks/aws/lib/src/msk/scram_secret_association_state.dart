// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScramSecretAssociation resources.
class ScramSecretAssociationState {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  final pulumi.Input<String>? clusterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Secrets Manager secret ARNs.
  final pulumi.Input<List<String>>? secretArnLists;

  /// Creates a new [ScramSecretAssociationState].
  /// [clusterArn] Amazon Resource Name (ARN) of the MSK cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArnLists] List of AWS Secrets Manager secret ARNs.
  ScramSecretAssociationState({
    this.clusterArn,
    this.region,
    this.secretArnLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': ?clusterArn,
      'region': ?region,
      'secretArnLists': ?secretArnLists,
    };
  }

  factory ScramSecretAssociationState.fromMap(Map<String, dynamic> map) {
    return ScramSecretAssociationState(
      clusterArn: map['clusterArn'] == null ? null : (map['clusterArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      secretArnLists: map['secretArnLists'] == null ? null : ((map['secretArnLists'] as List).cast<String>()).input(),
    );
  }
}

