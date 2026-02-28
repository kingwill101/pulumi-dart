// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_origin_access_control_get_origin_access_control_args_doc}
/// Arguments for getOriginAccessControl.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_origin_access_control_get_origin_access_control_args_doc}
class GetOriginAccessControlArgs {
  /// The identifier for the origin access control settings. For example: `E2T5VTFBZJ3BJB`.
  final pulumi.Input<String> id;

  /// Creates a new [GetOriginAccessControlArgs].
  /// [id] The identifier for the origin access control settings. For example: `E2T5VTFBZJ3BJB`.
  GetOriginAccessControlArgs({
    required String id,
  }) : id = pulumi.Input.asInput<String>(id);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetOriginAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessControlArgs(
      id: map['id'] as String,
    );
  }
}
