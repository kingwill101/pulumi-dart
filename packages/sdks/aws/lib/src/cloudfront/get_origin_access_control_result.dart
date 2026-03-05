// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOriginAccessControl.
class GetOriginAccessControlResult {
  /// The origin access control ARN.
  final String arn;
  /// A description of the origin access control.
  final String description;
  /// Current version of the origin access control's information. For example: `E2QWRUHAPOMQZL`.
  final String etag;
  final String id;
  /// A name to identify the origin access control.
  final String name;
  /// The type of origin that this origin access control is for.
  final String originAccessControlOriginType;
  /// Specifies which requests CloudFront signs.
  final String signingBehavior;
  /// The signing protocol of the origin access control, which determines how CloudFront signs (authenticates) requests.
  final String signingProtocol;

  /// Creates a new [GetOriginAccessControlResult].
  /// [arn] The origin access control ARN.
  /// [description] A description of the origin access control.
  /// [etag] Current version of the origin access control's information. For example: `E2QWRUHAPOMQZL`.
  /// [id] Required.
  /// [name] A name to identify the origin access control.
  /// [originAccessControlOriginType] The type of origin that this origin access control is for.
  /// [signingBehavior] Specifies which requests CloudFront signs.
  /// [signingProtocol] The signing protocol of the origin access control, which determines how CloudFront signs (authenticates) requests.
  GetOriginAccessControlResult({
    required this.arn,
    required this.description,
    required this.etag,
    required this.id,
    required this.name,
    required this.originAccessControlOriginType,
    required this.signingBehavior,
    required this.signingProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'etag': etag,
      'id': id,
      'name': name,
      'originAccessControlOriginType': originAccessControlOriginType,
      'signingBehavior': signingBehavior,
      'signingProtocol': signingProtocol,
    };
  }

  factory GetOriginAccessControlResult.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessControlResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      originAccessControlOriginType: map['originAccessControlOriginType'] as String,
      signingBehavior: map['signingBehavior'] as String,
      signingProtocol: map['signingProtocol'] as String,
    );
  }
}

