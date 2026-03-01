// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_server_certificate_get_server_certificate_args_doc}
/// Arguments for getServerCertificate.
/// {@endtemplate}
/// {@macro pulumi_iam_get_server_certificate_get_server_certificate_args_doc}
class GetServerCertificateArgs {
  /// sort results by expiration date. returns the certificate with expiration date in furthest in the future.
  final pulumi.Input<bool>? latest;
  /// exact name of the cert to lookup
  final pulumi.Input<String>? name;
  /// prefix of cert to filter by
  final pulumi.Input<String>? namePrefix;
  /// prefix of path to filter by
  final pulumi.Input<String>? pathPrefix;

  /// Creates a new [GetServerCertificateArgs].
  /// [latest] sort results by expiration date. returns the certificate with expiration date in furthest in the future.
  /// [name] exact name of the cert to lookup
  /// [namePrefix] prefix of cert to filter by
  /// [pathPrefix] prefix of path to filter by
  GetServerCertificateArgs({
    pulumi.Output<bool>? latest,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? pathPrefix,
  }) :
      latest = pulumi.Input.asOptionalInput<bool>(latest),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      pathPrefix = pulumi.Input.asOptionalInput<String>(pathPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latest': ?latest,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'pathPrefix': ?pathPrefix,
    };
  }

  factory GetServerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetServerCertificateArgs(
      latest: map['latest'] == null ? null : pulumi.Output.create<bool>(map['latest'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      pathPrefix: map['pathPrefix'] == null ? null : pulumi.Output.create<String>(map['pathPrefix'] as String),
    );
  }
}

