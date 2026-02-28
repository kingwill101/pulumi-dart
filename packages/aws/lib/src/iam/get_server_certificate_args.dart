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
    bool? latest,
    String? name,
    String? namePrefix,
    String? pathPrefix,
  })  : latest = pulumi.Input.asOptionalInput<bool>(latest),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        pathPrefix = pulumi.Input.asOptionalInput<String>(pathPrefix);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final latestValue = latest;
    if (latestValue != null) {
      map['latest'] = latestValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final pathPrefixValue = pathPrefix;
    if (pathPrefixValue != null) {
      map['pathPrefix'] = pathPrefixValue;
    }
    return map;
  }

  factory GetServerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetServerCertificateArgs(
      latest: map['latest'] == null ? null : map['latest'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      pathPrefix:
          map['pathPrefix'] == null ? null : map['pathPrefix'] as String,
    );
  }
}
