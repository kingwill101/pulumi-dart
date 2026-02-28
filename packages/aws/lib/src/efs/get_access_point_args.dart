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
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetAccessPointArgs].
  /// [accessPointId] ID that identifies the file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags.
  GetAccessPointArgs({
    required String accessPointId,
    String? region,
    Map<String, String>? tags,
  }) :
      accessPointId = pulumi.Input.asInput<String>(accessPointId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPointArgs(
      accessPointId: map['accessPointId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

