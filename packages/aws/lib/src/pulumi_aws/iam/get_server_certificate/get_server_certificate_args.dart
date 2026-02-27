// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServerCertificate.
class GetServerCertificateArgs {
  /// sort results by expiration date. returns the certificate with expiration date in furthest in the future.
  final pulumi.Input<bool>? latest;

  /// exact name of the cert to lookup
  final pulumi.Input<String>? name;

  /// prefix of cert to filter by
  final pulumi.Input<String>? namePrefix;

  /// prefix of path to filter by
  final pulumi.Input<String>? pathPrefix;

  GetServerCertificateArgs({
    this.latest,
    this.name,
    this.namePrefix,
    this.pathPrefix,
  });

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
      latest: pulumi.Input.asOptionalInput<bool>(map['latest']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      pathPrefix: pulumi.Input.asOptionalInput<String>(map['pathPrefix']),
    );
  }
}
