// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_efs_get_access_point_get_access_point_args_doc}
/// Arguments for getAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_efs_get_access_point_get_access_point_args_doc}
class GetAccessPointArgs {
  /// ID that identifies the file system.
  final pulumi.Input<String> accessPointId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value mapping of resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetAccessPointArgs].
  /// [accessPointId] ID that identifies the file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags.
  const GetAccessPointArgs({
    required this.accessPointId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPointArgs(
      accessPointId: pulumi.Input.fromValue(map['accessPointId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
