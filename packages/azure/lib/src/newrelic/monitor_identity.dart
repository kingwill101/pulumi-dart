// ignore_for_file: unused_element, unnecessary_cast


class MonitorIdentity {
  /// The Principal ID for the Service Principal associated with the Identity of this Azure Native New Relic Monitor.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Azure Native New Relic Monitor.
  final String? tenantId;
  /// Specifies the identity type of the Azure Native New Relic Monitor. The only possible value is `SystemAssigned`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String type;

  /// Creates a new [MonitorIdentity].
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Azure Native New Relic Monitor.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Azure Native New Relic Monitor.
  /// [type] Specifies the identity type of the Azure Native New Relic Monitor. The only possible value is `SystemAssigned`. Changing this forces a new Azure Native New Relic Monitor to be created.
  MonitorIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory MonitorIdentity.fromMap(Map<String, dynamic> map) {
    return MonitorIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

