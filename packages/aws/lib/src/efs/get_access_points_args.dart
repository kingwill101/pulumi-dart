// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_efs_get_access_points_get_access_points_args_doc}
/// Arguments for getAccessPoints.
/// {@endtemplate}
/// {@macro pulumi_efs_get_access_points_get_access_points_args_doc}
class GetAccessPointsArgs {
  /// EFS File System identifier.
  final pulumi.Input<String> fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAccessPointsArgs].
  /// [fileSystemId] EFS File System identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAccessPointsArgs({
    required String fileSystemId,
    String? region,
  })  : fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      fileSystemId: map['fileSystemId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
