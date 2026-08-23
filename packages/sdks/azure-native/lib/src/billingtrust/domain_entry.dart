// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A domain entry within an education qualification rule. `domainNames` and `tenantId` are supplied on creation; `state` and `error` are returned by the service.
class DomainEntry {
  /// Domain names associated with a tenant.
  final pulumi.Input<List<String>> domainNames;
  /// The Microsoft Entra tenant ID owning these domains. Defaults to the calling user's tenant when omitted.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DomainEntry].
  /// [domainNames] Domain names associated with a tenant.
  /// [tenantId] The Microsoft Entra tenant ID owning these domains. Defaults to the calling user's tenant when omitted.
  const DomainEntry({
    required this.domainNames,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNames': domainNames,
      'tenantId': ?tenantId,
    };
  }

  factory DomainEntry.fromMap(Map<String, dynamic> map) {
    return DomainEntry(
      domainNames: pulumi.Input.fromValue((map['domainNames'] as List).cast<String>()),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
