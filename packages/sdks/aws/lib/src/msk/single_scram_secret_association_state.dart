// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SingleScramSecretAssociation resources.
class SingleScramSecretAssociationState {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  final pulumi.Input<String>? clusterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS Secrets Manager secret ARN.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [SingleScramSecretAssociationState].
  /// [clusterArn] Amazon Resource Name (ARN) of the MSK cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArn] AWS Secrets Manager secret ARN.
  SingleScramSecretAssociationState({
    this.clusterArn,
    this.region,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': ?clusterArn,
      'region': ?region,
      'secretArn': ?secretArn,
    };
  }

  factory SingleScramSecretAssociationState.fromMap(Map<String, dynamic> map) {
    return SingleScramSecretAssociationState(
      clusterArn: map['clusterArn'] == null ? null : ((map['clusterArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      secretArn: map['secretArn'] == null ? null : ((map['secretArn'] as String).input()).input(),
    );
  }
}

