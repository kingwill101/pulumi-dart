// ignore_for_file: unused_element, unnecessary_cast


class ResourceModelWithAllowedPropertySetResponseIdentity {
  /// The principal ID of resource identity. The value must be an UUID.
  final String principalId;
  /// The tenant ID of resource. The value must be an UUID.
  final String tenantId;
  /// The identity type.
  final String? type;

  /// Creates a new [ResourceModelWithAllowedPropertySetResponseIdentity].
  /// [principalId] The principal ID of resource identity. The value must be an UUID.
  /// [tenantId] The tenant ID of resource. The value must be an UUID.
  /// [type] The identity type.
  ResourceModelWithAllowedPropertySetResponseIdentity({
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

  factory ResourceModelWithAllowedPropertySetResponseIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceModelWithAllowedPropertySetResponseIdentity(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

