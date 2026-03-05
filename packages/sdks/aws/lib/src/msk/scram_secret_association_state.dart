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
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretArnLists: (() { final guardedValue = map['secretArnLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

