// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SingleScramSecretAssociation.
class SingleScramSecretAssociationArgs {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  final pulumi.Input<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// AWS Secrets Manager secret ARN.
  final pulumi.Input<String> secretArn;

  SingleScramSecretAssociationArgs({
    required this.clusterArn,
    this.region,
    required this.secretArn,
  });

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
      clusterArn: pulumi.Input.asInput<String>(map['clusterArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secretArn: pulumi.Input.asInput<String>(map['secretArn']),
    );
  }
}
