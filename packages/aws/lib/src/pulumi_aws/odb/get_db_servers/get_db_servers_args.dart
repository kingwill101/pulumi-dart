// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDbServers.
class GetDbServersArgs {
  /// The unique identifier of the cloud vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> cloudExadataInfrastructureId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetDbServersArgs({
    required this.cloudExadataInfrastructureId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDbServersArgs.fromMap(Map<String, dynamic> map) {
    return GetDbServersArgs(
      cloudExadataInfrastructureId:
          pulumi.Input.asInput<String>(map['cloudExadataInfrastructureId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
