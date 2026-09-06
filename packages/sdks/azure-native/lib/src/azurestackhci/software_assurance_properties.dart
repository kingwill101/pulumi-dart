// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Software Assurance properties of the cluster.
class SoftwareAssuranceProperties {
  /// Customer Intent for Software Assurance Benefit.
  final pulumi.Input<dynamic>? softwareAssuranceIntent;

  /// Creates a new [SoftwareAssuranceProperties].
  /// [softwareAssuranceIntent] Customer Intent for Software Assurance Benefit.
  const SoftwareAssuranceProperties({
    this.softwareAssuranceIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'softwareAssuranceIntent': ?softwareAssuranceIntent,
    };
  }

  factory SoftwareAssuranceProperties.fromMap(Map<String, dynamic> map) {
    return SoftwareAssuranceProperties(
      softwareAssuranceIntent: (() { final guardedValue = map['softwareAssuranceIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
