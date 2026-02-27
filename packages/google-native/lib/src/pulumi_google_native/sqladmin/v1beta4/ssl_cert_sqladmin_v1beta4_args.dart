// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SslCert.
class SslCertSqladminV1beta4Args {
  /// User supplied name. Must be a distinct name from the other certificates for this instance.
  final pulumi.Input<String>? commonName;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  SslCertSqladminV1beta4Args({
    this.commonName,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commonNameValue = commonName;
    if (commonNameValue != null) {
      map['commonName'] = commonNameValue;
    }
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory SslCertSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return SslCertSqladminV1beta4Args(
      commonName: pulumi.Input.asOptionalInput<String>(map['commonName']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
