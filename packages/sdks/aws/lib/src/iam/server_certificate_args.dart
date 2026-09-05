// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_server_certificate_server_certificate_args_doc}
/// The set of arguments for ServerCertificate.
/// {@endtemplate}
/// {@macro pulumi_iam_server_certificate_server_certificate_args_doc}
class ServerCertificateArgs {
  /// The contents of the public key certificate in
  /// PEM-encoded format.
  final pulumi.Input<String> certificateBody;
  /// The contents of the certificate chain.
  /// This is typically a concatenation of the PEM-encoded public key certificates
  /// of the chain.
  final pulumi.Input<String?>? certificateChain;
  /// The name of the Server Certificate. Do not include the path in this value. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// The IAM path for the server certificate.  If it is not
  /// included, it defaults to a slash (/). If this certificate is for use with
  /// AWS CloudFront, the path must be in format `/cloudfront/your_path_here`.
  /// See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more details on IAM Paths.
  final pulumi.Input<String?>? path;
  /// The contents of the private key in PEM-encoded format.
  final pulumi.Input<String> privateKey;
  /// Map of resource tags for the server certificate. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **NOTE:** AWS performs behind-the-scenes modifications to some certificate files if they do not adhere to a specific format. These modifications will result in this provider forever believing that it needs to update the resources since the local and AWS file contents will not match after theses modifications occur. In order to prevent this from happening you must ensure that all your PEM-encoded files use UNIX line-breaks and that `certificateBody` contains only one certificate. All other certificates should go in `certificateChain`. It is common for some Certificate Authorities to issue certificate files that have DOS line-breaks and that are actually multiple certificates concatenated together in order to form a full certificate chain.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ServerCertificateArgs].
  /// [certificateBody] The contents of the public key certificate in
  /// [certificateChain] The contents of the certificate chain.
  /// [name] The name of the Server Certificate. Do not include the path in this value. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [path] The IAM path for the server certificate.  If it is not
  /// [privateKey] The contents of the private key in PEM-encoded format.
  /// [tags] Map of resource tags for the server certificate. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ServerCertificateArgs({
    required this.certificateBody,
    this.certificateChain,
    this.name,
    this.namePrefix,
    this.path,
    required this.privateKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBody': certificateBody,
      'certificateChain': ?certificateChain,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'privateKey': privateKey,
      'tags': ?tags,
    };
  }

  factory ServerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ServerCertificateArgs(
      certificateBody: pulumi.Input.fromValue(map['certificateBody'] as String),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
