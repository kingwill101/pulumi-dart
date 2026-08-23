// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Software Assurance properties of the cluster.
class SoftwareAssurancePropertiesResponse {
  /// TimeStamp denoting the latest SA benefit applicability is validated.
  final pulumi.Input<String> lastUpdated;
  /// Customer Intent for Software Assurance Benefit.
  final pulumi.Input<String>? softwareAssuranceIntent;
  /// Status of the Software Assurance for the cluster.
  final pulumi.Input<String> softwareAssuranceStatus;

  /// Creates a new [SoftwareAssurancePropertiesResponse].
  /// [lastUpdated] TimeStamp denoting the latest SA benefit applicability is validated.
  /// [softwareAssuranceIntent] Customer Intent for Software Assurance Benefit.
  /// [softwareAssuranceStatus] Status of the Software Assurance for the cluster.
  const SoftwareAssurancePropertiesResponse({
    required this.lastUpdated,
    this.softwareAssuranceIntent,
    required this.softwareAssuranceStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'softwareAssuranceIntent': ?softwareAssuranceIntent,
      'softwareAssuranceStatus': softwareAssuranceStatus,
    };
  }

  factory SoftwareAssurancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareAssurancePropertiesResponse(
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      softwareAssuranceIntent: (() { final guardedValue = map['softwareAssuranceIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareAssuranceStatus: pulumi.Input.fromValue(map['softwareAssuranceStatus'] as String),
    );
  }
}
