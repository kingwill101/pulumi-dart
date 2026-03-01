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
  final pulumi.Input<String>? certificateChain;
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
  final pulumi.Input<String> privateKey;
  /// Map of resource tags for the server certificate. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** AWS performs behind-the-scenes modifications to some certificate files if they do not adhere to a specific format. These modifications will result in this provider forever believing that it needs to update the resources since the local and AWS file contents will not match after theses modifications occur. In order to prevent this from happening you must ensure that all your PEM-encoded files use UNIX line-breaks and that `certificate_body` contains only one certificate. All other certificates should go in `certificate_chain`. It is common for some Certificate Authorities to issue certificate files that have DOS line-breaks and that are actually multiple certificates concatenated together in order to form a full certificate chain.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerCertificateArgs].
  /// [certificateBody] The contents of the public key certificate in
  /// [certificateChain] The contents of the certificate chain.
  /// [name] The name of the Server Certificate. Do not include the path in this value. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [path] The IAM path for the server certificate.  If it is not
  /// [privateKey] The contents of the private key in PEM-encoded format.
  /// [tags] Map of resource tags for the server certificate. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ServerCertificateArgs({
    required pulumi.Output<String> certificateBody,
    pulumi.Output<String>? certificateChain,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? path,
    required pulumi.Output<String> privateKey,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      certificateBody = pulumi.Input.asInput<String>(certificateBody),
      certificateChain = pulumi.Input.asOptionalInput<String>(certificateChain),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      path = pulumi.Input.asOptionalInput<String>(path),
      privateKey = pulumi.Input.asInput<String>(privateKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      certificateBody: pulumi.Output.create<String>(map['certificateBody'] as String),
      certificateChain: map['certificateChain'] == null ? null : pulumi.Output.create<String>(map['certificateChain'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      privateKey: pulumi.Output.create<String>(map['privateKey'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

