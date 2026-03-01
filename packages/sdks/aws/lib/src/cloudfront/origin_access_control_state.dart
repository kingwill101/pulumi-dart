// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OriginAccessControl resources.
class OriginAccessControlState {
  /// The Origin Access Control ARN.
  final pulumi.Input<String>? arn;
  /// The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  final pulumi.Input<String>? description;
  /// The current version of this Origin Access Control.
  final pulumi.Input<String>? etag;
  /// A name that identifies the Origin Access Control.
  final pulumi.Input<String>? name;
  /// The type of origin that this Origin Access Control is for. Valid values are `lambda`, `mediapackagev2`, `mediastore`, and `s3`.
  final pulumi.Input<String>? originAccessControlOriginType;
  /// Specifies which requests CloudFront signs. Specify `always` for the most common use case. Allowed values: `always`, `never`, and `no-override`.
  final pulumi.Input<String>? signingBehavior;
  /// Determines how CloudFront signs (authenticates) requests. The only valid value is `sigv4`.
  final pulumi.Input<String>? signingProtocol;

  /// Creates a new [OriginAccessControlState].
  /// [arn] The Origin Access Control ARN.
  /// [description] The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  /// [etag] The current version of this Origin Access Control.
  /// [name] A name that identifies the Origin Access Control.
  /// [originAccessControlOriginType] The type of origin that this Origin Access Control is for. Valid values are `lambda`, `mediapackagev2`, `mediastore`, and `s3`.
  /// [signingBehavior] Specifies which requests CloudFront signs. Specify `always` for the most common use case. Allowed values: `always`, `never`, and `no-override`.
  /// [signingProtocol] Determines how CloudFront signs (authenticates) requests. The only valid value is `sigv4`.
  OriginAccessControlState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? originAccessControlOriginType,
    pulumi.Output<String>? signingBehavior,
    pulumi.Output<String>? signingProtocol,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      name = pulumi.Input.asOptionalInput<String>(name),
      originAccessControlOriginType = pulumi.Input.asOptionalInput<String>(originAccessControlOriginType),
      signingBehavior = pulumi.Input.asOptionalInput<String>(signingBehavior),
      signingProtocol = pulumi.Input.asOptionalInput<String>(signingProtocol);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'etag': ?etag,
      'name': ?name,
      'originAccessControlOriginType': ?originAccessControlOriginType,
      'signingBehavior': ?signingBehavior,
      'signingProtocol': ?signingProtocol,
    };
  }

  factory OriginAccessControlState.fromMap(Map<String, dynamic> map) {
    return OriginAccessControlState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      originAccessControlOriginType: map['originAccessControlOriginType'] == null ? null : pulumi.Output.create<String>(map['originAccessControlOriginType'] as String),
      signingBehavior: map['signingBehavior'] == null ? null : pulumi.Output.create<String>(map['signingBehavior'] as String),
      signingProtocol: map['signingProtocol'] == null ? null : pulumi.Output.create<String>(map['signingProtocol'] as String),
    );
  }
}

