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
    pulumi.Output<String>? clusterArn,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? secretArnLists,
  }) :
      clusterArn = pulumi.Input.asOptionalInput<String>(clusterArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretArnLists = pulumi.Input.asOptionalInput<List<String>>(secretArnLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': ?clusterArn,
      'region': ?region,
      'secretArnLists': ?secretArnLists,
    };
  }

  factory ScramSecretAssociationState.fromMap(Map<String, dynamic> map) {
    return ScramSecretAssociationState(
      clusterArn: map['clusterArn'] == null ? null : pulumi.Output.create<String>(map['clusterArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretArnLists: map['secretArnLists'] == null ? null : pulumi.Output.create<List<String>>((map['secretArnLists'] as List).cast<String>()),
    );
  }
}

