// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOriginAccessControl.
class GetOriginAccessControlResult {
  /// The origin access control ARN.
  final String? arn;
  /// A description of the origin access control.
  final String? description;
  /// Current version of the origin access control's information. For example: `E2QWRUHAPOMQZL`.
  final String? etag;
  final String? id;
  /// A name to identify the origin access control.
  final String? name;
  /// The type of origin that this origin access control is for.
  final String? originAccessControlOriginType;
  /// Specifies which requests CloudFront signs.
  final String? signingBehavior;
  /// The signing protocol of the origin access control, which determines how CloudFront signs (authenticates) requests.
  final String? signingProtocol;

  /// Creates a new [GetOriginAccessControlResult].
  /// [arn] The origin access control ARN.
  /// [description] A description of the origin access control.
  /// [etag] Current version of the origin access control's information. For example: `E2QWRUHAPOMQZL`.
  /// [id] Optional.
  /// [name] A name to identify the origin access control.
  /// [originAccessControlOriginType] The type of origin that this origin access control is for.
  /// [signingBehavior] Specifies which requests CloudFront signs.
  /// [signingProtocol] The signing protocol of the origin access control, which determines how CloudFront signs (authenticates) requests.
  const GetOriginAccessControlResult({
    this.arn,
    this.description,
    this.etag,
    this.id,
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
      'id': ?id,
      'name': ?name,
      'originAccessControlOriginType': ?originAccessControlOriginType,
      'signingBehavior': ?signingBehavior,
      'signingProtocol': ?signingProtocol,
    };
  }

  factory GetOriginAccessControlResult.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessControlResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      originAccessControlOriginType: (() { final guardedValue = map['originAccessControlOriginType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingBehavior: (() { final guardedValue = map['signingBehavior']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingProtocol: (() { final guardedValue = map['signingProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
