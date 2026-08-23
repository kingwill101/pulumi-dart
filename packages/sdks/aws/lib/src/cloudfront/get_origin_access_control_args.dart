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
  const GetOriginAccessControlArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetOriginAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessControlArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
