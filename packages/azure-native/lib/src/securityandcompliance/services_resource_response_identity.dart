// ignore_for_file: unused_element, unnecessary_cast


/// Setting indicating whether the service has a managed identity associated with it.
class ServicesResourceResponseIdentity {
  /// The principal ID of the resource identity.
  final String principalId;
  /// The tenant ID of the resource.
  final String tenantId;
  /// Type of identity being specified, currently SystemAssigned and None are allowed.
  final String? type;

  /// Creates a new [ServicesResourceResponseIdentity].
  /// [principalId] The principal ID of the resource identity.
  /// [tenantId] The tenant ID of the resource.
  /// [type] Type of identity being specified, currently SystemAssigned and None are allowed.
  ServicesResourceResponseIdentity({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory ServicesResourceResponseIdentity.fromMap(Map<String, dynamic> map) {
    return ServicesResourceResponseIdentity(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

