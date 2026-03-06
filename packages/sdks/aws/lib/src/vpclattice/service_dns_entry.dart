// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceDnsEntry {
  final pulumi.Input<String>? domainName;
  final pulumi.Input<String>? hostedZoneId;

  /// Creates a new [ServiceDnsEntry].
  /// [domainName] Optional.
  /// [hostedZoneId] Optional.
  const ServiceDnsEntry({
    this.domainName,
    this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'hostedZoneId': ?hostedZoneId,
    };
  }

  factory ServiceDnsEntry.fromMap(Map<String, dynamic> map) {
    return ServiceDnsEntry(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

