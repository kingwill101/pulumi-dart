// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccessPoints.
class GetAccessPointsArgs {
  /// EFS File System identifier.
  final pulumi.Input<String> fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetAccessPointsArgs({
    required this.fileSystemId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileSystemId'] = fileSystemId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAccessPointsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsArgs(
      fileSystemId: pulumi.Input.asInput<String>(map['fileSystemId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
