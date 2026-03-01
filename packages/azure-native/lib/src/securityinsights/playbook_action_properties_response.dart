// ignore_for_file: unused_element, unnecessary_cast


class PlaybookActionPropertiesResponse {
  /// The resource id of the playbook resource.
  final String logicAppResourceId;
  /// The tenant id of the playbook resource.
  final String? tenantId;

  /// Creates a new [PlaybookActionPropertiesResponse].
  /// [logicAppResourceId] The resource id of the playbook resource.
  /// [tenantId] The tenant id of the playbook resource.
  PlaybookActionPropertiesResponse({
    required this.logicAppResourceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicAppResourceId': logicAppResourceId,
      'tenantId': ?tenantId,
    };
  }

  factory PlaybookActionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PlaybookActionPropertiesResponse(
      logicAppResourceId: map['logicAppResourceId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

