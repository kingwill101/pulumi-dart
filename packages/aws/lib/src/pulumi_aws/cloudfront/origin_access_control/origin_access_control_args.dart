// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OriginAccessControl.
class OriginAccessControlArgs {
  /// The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  final Input<String>? description;

  /// A name that identifies the Origin Access Control.
  final Input<String>? name;

  /// The type of origin that this Origin Access Control is for. Valid values are `lambda`, `mediapackagev2`, `mediastore`, and `s3`.
  final Input<String> originAccessControlOriginType;

  /// Specifies which requests CloudFront signs. Specify `always` for the most common use case. Allowed values: `always`, `never`, and `no-override`.
  final Input<String> signingBehavior;

  /// Determines how CloudFront signs (authenticates) requests. The only valid value is `sigv4`.
  final Input<String> signingProtocol;

  OriginAccessControlArgs({
    this.description,
    this.name,
    required this.originAccessControlOriginType,
    required this.signingBehavior,
    required this.signingProtocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['originAccessControlOriginType'] = originAccessControlOriginType;
    map['signingBehavior'] = signingBehavior;
    map['signingProtocol'] = signingProtocol;
    return map;
  }

  factory OriginAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return OriginAccessControlArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      originAccessControlOriginType:
          Input.asInput<String>(map['originAccessControlOriginType']),
      signingBehavior: Input.asInput<String>(map['signingBehavior']),
      signingProtocol: Input.asInput<String>(map['signingProtocol']),
    );
  }
}
