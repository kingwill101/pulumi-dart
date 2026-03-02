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
    this.arn,
    this.description,
    this.etag,
    this.name,
    this.originAccessControlOriginType,
    this.signingBehavior,
    this.signingProtocol,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      etag: map['etag'] == null ? null : ((map['etag'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      originAccessControlOriginType: map['originAccessControlOriginType'] == null ? null : ((map['originAccessControlOriginType'] as String).input()).input(),
      signingBehavior: map['signingBehavior'] == null ? null : ((map['signingBehavior'] as String).input()).input(),
      signingProtocol: map['signingProtocol'] == null ? null : ((map['signingProtocol'] as String).input()).input(),
    );
  }
}

