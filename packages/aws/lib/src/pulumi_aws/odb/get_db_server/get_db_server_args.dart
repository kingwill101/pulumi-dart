// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDbServer.
class GetDbServerArgs {
  /// The unique identifier of the cloud vm cluster.
  final Input<String> cloudExadataInfrastructureId;

  /// The unique identifier of db node associated with vm cluster.
  ///
  /// The following arguments are optional:
  final Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetDbServerArgs({
    required this.cloudExadataInfrastructureId,
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureId;
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDbServerArgs.fromMap(Map<String, dynamic> map) {
    return GetDbServerArgs(
      cloudExadataInfrastructureId:
          Input.asInput<String>(map['cloudExadataInfrastructureId']),
      id: Input.asInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
