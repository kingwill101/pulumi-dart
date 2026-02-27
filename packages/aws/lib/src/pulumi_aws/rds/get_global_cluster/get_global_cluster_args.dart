// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlobalCluster.
class GetGlobalClusterArgs {
  /// The global cluster identifier of the RDS global cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetGlobalClusterArgs({
    required this.identifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetGlobalClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalClusterArgs(
      identifier: pulumi.Input.asInput<String>(map['identifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
