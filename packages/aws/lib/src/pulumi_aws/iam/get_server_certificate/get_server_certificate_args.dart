// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServerCertificate.
class GetServerCertificateArgs {
  /// sort results by expiration date. returns the certificate with expiration date in furthest in the future.
  final Input<bool>? latest;

  /// exact name of the cert to lookup
  final Input<String>? name;

  /// prefix of cert to filter by
  final Input<String>? namePrefix;

  /// prefix of path to filter by
  final Input<String>? pathPrefix;

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
      latest: Input.asOptionalInput<bool>(map['latest']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      pathPrefix: Input.asOptionalInput<String>(map['pathPrefix']),
    );
  }
}
