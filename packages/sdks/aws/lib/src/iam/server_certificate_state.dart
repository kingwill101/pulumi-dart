// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerCertificate resources.
class ServerCertificateState {
  /// The Amazon Resource Name (ARN) specifying the server certificate.
  final pulumi.Input<String>? arn;

  /// The contents of the public key certificate in
  /// PEM-encoded format.
  final pulumi.Input<String>? certificateBody;

  /// The contents of the certificate chain.
  /// This is typically a concatenation of the PEM-encoded public key certificates
  /// of the chain.
  final pulumi.Input<String>? certificateChain;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) on which the certificate is set to expire.
  final pulumi.Input<String>? expiration;

  /// The name of the Server Certificate. Do not include the path in this value. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// The IAM path for the server certificate.  If it is not
  /// included, it defaults to a slash (/). If this certificate is for use with
  /// AWS CloudFront, the path must be in format `/cloudfront/your_path_here`.
  /// See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more details on IAM Paths.
  final pulumi.Input<String>? path;

  /// The contents of the private key in PEM-encoded format.
  final pulumi.Input<String>? privateKey;

  /// Map of resource tags for the server certificate. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **NOTE:** AWS performs behind-the-scenes modifications to some certificate files if they do not adhere to a specific format. These modifications will result in this provider forever believing that it needs to update the resources since the local and AWS file contents will not match after theses modifications occur. In order to prevent this from happening you must ensure that all your PEM-encoded files use UNIX line-breaks and that `certificate_body` contains only one certificate. All other certificates should go in `certificate_chain`. It is common for some Certificate Authorities to issue certificate files that have DOS line-breaks and that are actually multiple certificates concatenated together in order to form a full certificate chain.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the server certificate was uploaded.
  final pulumi.Input<String>? uploadDate;

  /// Creates a new [ServerCertificateState].
  /// [arn] The Amazon Resource Name (ARN) specifying the server certificate.
  /// [certificateBody] The contents of the public key certificate in
  /// [certificateChain] The contents of the certificate chain.
  /// [expiration] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) on which the certificate is set to expire.
  /// [name] The name of the Server Certificate. Do not include the path in this value. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [path] The IAM path for the server certificate.  If it is not
  /// [privateKey] The contents of the private key in PEM-encoded format.
  /// [tags] Map of resource tags for the server certificate. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uploadDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the server certificate was uploaded.
  ServerCertificateState({
    this.arn,
    this.certificateBody,
    this.certificateChain,
    this.expiration,
    this.name,
    this.namePrefix,
    this.path,
    this.privateKey,
    this.tags,
    this.tagsAll,
    this.uploadDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificateBody': ?certificateBody,
      'certificateChain': ?certificateChain,
      'expiration': ?expiration,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'privateKey': ?privateKey,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uploadDate': ?uploadDate,
    };
  }

  factory ServerCertificateState.fromMap(Map<String, dynamic> map) {
    return ServerCertificateState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateBody: (() {
        final guardedValue = map['certificateBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateChain: (() {
        final guardedValue = map['certificateChain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expiration: (() {
        final guardedValue = map['expiration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      uploadDate: (() {
        final guardedValue = map['uploadDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
