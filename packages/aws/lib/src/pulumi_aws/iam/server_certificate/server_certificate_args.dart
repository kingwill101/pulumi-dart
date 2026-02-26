// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServerCertificate.
class ServerCertificateArgs {
  /// The contents of the public key certificate in
  /// PEM-encoded format.
  final Input<String> certificateBody;

  /// The contents of the certificate chain.
  /// This is typically a concatenation of the PEM-encoded public key certificates
  /// of the chain.
  final Input<String>? certificateChain;

  /// The name of the Server Certificate. Do not include the path in this value. If omitted, the provider will assign a random, unique name.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// The IAM path for the server certificate.  If it is not
  /// included, it defaults to a slash (/). If this certificate is for use with
  /// AWS CloudFront, the path must be in format `/cloudfront/your_path_here`.
  /// See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more details on IAM Paths.
  final Input<String>? path;

  /// The contents of the private key in PEM-encoded format.
  final Input<String> privateKey;

  /// Map of resource tags for the server certificate. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** AWS performs behind-the-scenes modifications to some certificate files if they do not adhere to a specific format. These modifications will result in this provider forever believing that it needs to update the resources since the local and AWS file contents will not match after theses modifications occur. In order to prevent this from happening you must ensure that all your PEM-encoded files use UNIX line-breaks and that <span pulumi-lang-nodejs="`certificateBody`" pulumi-lang-dotnet="`CertificateBody`" pulumi-lang-go="`certificateBody`" pulumi-lang-python="`certificate_body`" pulumi-lang-yaml="`certificateBody`" pulumi-lang-java="`certificateBody`">`certificate_body`</span> contains only one certificate. All other certificates should go in <span pulumi-lang-nodejs="`certificateChain`" pulumi-lang-dotnet="`CertificateChain`" pulumi-lang-go="`certificateChain`" pulumi-lang-python="`certificate_chain`" pulumi-lang-yaml="`certificateChain`" pulumi-lang-java="`certificateChain`">`certificate_chain`</span>. It is common for some Certificate Authorities to issue certificate files that have DOS line-breaks and that are actually multiple certificates concatenated together in order to form a full certificate chain.
  final Input<Map<String, String>>? tags;

  ServerCertificateArgs({
    required this.certificateBody,
    this.certificateChain,
    this.name,
    this.namePrefix,
    this.path,
    required this.privateKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateBody'] = certificateBody;
    final certificateChainValue = certificateChain;
    if (certificateChainValue != null) {
      map['certificateChain'] = certificateChainValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    map['privateKey'] = privateKey;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ServerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ServerCertificateArgs(
      certificateBody: Input.asInput<String>(map['certificateBody']),
      certificateChain: Input.asOptionalInput<String>(map['certificateChain']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      path: Input.asOptionalInput<String>(map['path']),
      privateKey: Input.asInput<String>(map['privateKey']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
