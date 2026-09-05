// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerCertificate.
class GetServerCertificateResult {
  /// is set to the ARN of the IAM Server Certificate
  final String? arn;
  /// is the public key certificate (PEM-encoded). This is useful when [configuring back-end instance authentication](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html) policy for load balancer
  final String? certificateBody;
  /// is the public key certificate chain (PEM-encoded) if exists, empty otherwise
  final String? certificateChain;
  /// is set to the expiration date of the IAM Server Certificate
  final String? expirationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? latest;
  final String? name;
  final String? namePrefix;
  /// is set to the path of the IAM Server Certificate
  final String? path;
  final String? pathPrefix;
  /// is the date when the server certificate was uploaded
  final String? uploadDate;

  /// Creates a new [GetServerCertificateResult].
  /// [arn] is set to the ARN of the IAM Server Certificate
  /// [certificateBody] is the public key certificate (PEM-encoded). This is useful when [configuring back-end instance authentication](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html) policy for load balancer
  /// [certificateChain] is the public key certificate chain (PEM-encoded) if exists, empty otherwise
  /// [expirationDate] is set to the expiration date of the IAM Server Certificate
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latest] Optional.
  /// [name] Optional.
  /// [namePrefix] Optional.
  /// [path] is set to the path of the IAM Server Certificate
  /// [pathPrefix] Optional.
  /// [uploadDate] is the date when the server certificate was uploaded
  const GetServerCertificateResult({
    this.arn,
    this.certificateBody,
    this.certificateChain,
    this.expirationDate,
    this.id,
    this.latest,
    this.name,
    this.namePrefix,
    this.path,
    this.pathPrefix,
    this.uploadDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificateBody': ?certificateBody,
      'certificateChain': ?certificateChain,
      'expirationDate': ?expirationDate,
      'id': ?id,
      'latest': ?latest,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'pathPrefix': ?pathPrefix,
      'uploadDate': ?uploadDate,
    };
  }

  factory GetServerCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetServerCertificateResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateBody: (() { final guardedValue = map['certificateBody']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latest: (() { final guardedValue = map['latest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pathPrefix: (() { final guardedValue = map['pathPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadDate: (() { final guardedValue = map['uploadDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
