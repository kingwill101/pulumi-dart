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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> originAccessControlOriginType,
    required pulumi.Output<String> signingBehavior,
    required pulumi.Output<String> signingProtocol,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      originAccessControlOriginType = pulumi.Input.asInput<String>(originAccessControlOriginType),
      signingBehavior = pulumi.Input.asInput<String>(signingBehavior),
      signingProtocol = pulumi.Input.asInput<String>(signingProtocol);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      originAccessControlOriginType: pulumi.Output.create<String>(map['originAccessControlOriginType'] as String),
      signingBehavior: pulumi.Output.create<String>(map['signingBehavior'] as String),
      signingProtocol: pulumi.Output.create<String>(map['signingProtocol'] as String),
    );
  }
}

