// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceSetResourceDnsTargetResourceTargetResourceR53Resource {
  /// Domain name that is targeted.
  final pulumi.Input<String>? domainName;
  /// Resource record set ID that is targeted.
  final pulumi.Input<String>? recordSetId;

  /// Creates a new [ResourceSetResourceDnsTargetResourceTargetResourceR53Resource].
  /// [domainName] Domain name that is targeted.
  /// [recordSetId] Resource record set ID that is targeted.
  const ResourceSetResourceDnsTargetResourceTargetResourceR53Resource({
    this.domainName,
    this.recordSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'recordSetId': ?recordSetId,
    };
  }

  factory ResourceSetResourceDnsTargetResourceTargetResourceR53Resource.fromMap(Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResourceTargetResourceR53Resource(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordSetId: (() { final guardedValue = map['recordSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
