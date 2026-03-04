// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_origin_access_control_origin_access_control_args_doc}
/// The set of arguments for OriginAccessControl.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_origin_access_control_origin_access_control_args_doc}
class OriginAccessControlArgs {
  /// The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  final pulumi.Input<String>? description;

  /// A name that identifies the Origin Access Control.
  final pulumi.Input<String>? name;

  /// The type of origin that this Origin Access Control is for. Valid values are `lambda`, `mediapackagev2`, `mediastore`, and `s3`.
  final pulumi.Input<String> originAccessControlOriginType;

  /// Specifies which requests CloudFront signs. Specify `always` for the most common use case. Allowed values: `always`, `never`, and `no-override`.
  final pulumi.Input<String> signingBehavior;

  /// Determines how CloudFront signs (authenticates) requests. The only valid value is `sigv4`.
  final pulumi.Input<String> signingProtocol;

  /// Creates a new [OriginAccessControlArgs].
  /// [description] The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  /// [name] A name that identifies the Origin Access Control.
  /// [originAccessControlOriginType] The type of origin that this Origin Access Control is for. Valid values are `lambda`, `mediapackagev2`, `mediastore`, and `s3`.
  /// [signingBehavior] Specifies which requests CloudFront signs. Specify `always` for the most common use case. Allowed values: `always`, `never`, and `no-override`.
  /// [signingProtocol] Determines how CloudFront signs (authenticates) requests. The only valid value is `sigv4`.
  OriginAccessControlArgs({
    this.description,
    this.name,
    required this.originAccessControlOriginType,
    required this.signingBehavior,
    required this.signingProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'originAccessControlOriginType': originAccessControlOriginType,
      'signingBehavior': signingBehavior,
      'signingProtocol': signingProtocol,
    };
  }

  factory OriginAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return OriginAccessControlArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      originAccessControlOriginType: pulumi.Input.fromValue(
        map['originAccessControlOriginType'] as String,
      ),
      signingBehavior: pulumi.Input.fromValue(map['signingBehavior'] as String),
      signingProtocol: pulumi.Input.fromValue(map['signingProtocol'] as String),
    );
  }
}
