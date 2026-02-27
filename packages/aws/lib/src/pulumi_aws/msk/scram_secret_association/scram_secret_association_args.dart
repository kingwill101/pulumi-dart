// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ScramSecretAssociation.
class ScramSecretAssociationArgs {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  final pulumi.Input<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of AWS Secrets Manager secret ARNs.
  final pulumi.Input<List<String>> secretArnLists;

  ScramSecretAssociationArgs({
    required this.clusterArn,
    this.region,
    required this.secretArnLists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretArnLists'] = secretArnLists;
    return map;
  }

  factory ScramSecretAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ScramSecretAssociationArgs(
      clusterArn: pulumi.Input.asInput<String>(map['clusterArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secretArnLists: pulumi.Input.asInput<List<String>>(map['secretArnLists']),
    );
  }
}
