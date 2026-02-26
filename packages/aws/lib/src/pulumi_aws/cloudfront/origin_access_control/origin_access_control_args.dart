// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OriginAccessControl.
class OriginAccessControlArgs {
  /// The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  final Input<String>? description;

  /// A name that identifies the Origin Access Control.
  final Input<String>? name;

  /// The type of origin that this Origin Access Control is for. Valid values are <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>, <span pulumi-lang-nodejs="`mediapackagev2`" pulumi-lang-dotnet="`Mediapackagev2`" pulumi-lang-go="`mediapackagev2`" pulumi-lang-python="`mediapackagev2`" pulumi-lang-yaml="`mediapackagev2`" pulumi-lang-java="`mediapackagev2`">`mediapackagev2`</span>, <span pulumi-lang-nodejs="`mediastore`" pulumi-lang-dotnet="`Mediastore`" pulumi-lang-go="`mediastore`" pulumi-lang-python="`mediastore`" pulumi-lang-yaml="`mediastore`" pulumi-lang-java="`mediastore`">`mediastore`</span>, and <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>.
  final Input<String> originAccessControlOriginType;

  /// Specifies which requests CloudFront signs. Specify <span pulumi-lang-nodejs="`always`" pulumi-lang-dotnet="`Always`" pulumi-lang-go="`always`" pulumi-lang-python="`always`" pulumi-lang-yaml="`always`" pulumi-lang-java="`always`">`always`</span> for the most common use case. Allowed values: <span pulumi-lang-nodejs="`always`" pulumi-lang-dotnet="`Always`" pulumi-lang-go="`always`" pulumi-lang-python="`always`" pulumi-lang-yaml="`always`" pulumi-lang-java="`always`">`always`</span>, <span pulumi-lang-nodejs="`never`" pulumi-lang-dotnet="`Never`" pulumi-lang-go="`never`" pulumi-lang-python="`never`" pulumi-lang-yaml="`never`" pulumi-lang-java="`never`">`never`</span>, and `no-override`.
  final Input<String> signingBehavior;

  /// Determines how CloudFront signs (authenticates) requests. The only valid value is <span pulumi-lang-nodejs="`sigv4`" pulumi-lang-dotnet="`Sigv4`" pulumi-lang-go="`sigv4`" pulumi-lang-python="`sigv4`" pulumi-lang-yaml="`sigv4`" pulumi-lang-java="`sigv4`">`sigv4`</span>.
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
