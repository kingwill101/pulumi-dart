// ignore_for_file: unused_element, unnecessary_cast


/// Identity model.
class IdentityModelResponse {
  /// Gets or sets the authority of the SPN with which MigrateAgent communicates to service.
  final String? aadAuthority;
  /// Gets or sets the client/application Id of the SPN with which MigrateAgent communicates to
  /// service.
  final String? applicationId;
  /// Gets or sets the audience of the SPN with which MigrateAgent communicates to service.
  final String? audience;
  /// Gets or sets the object Id of the SPN with which MigrateAgent communicates to service.
  final String? objectId;
  /// Gets or sets the tenant Id of the SPN with which MigrateAgent communicates to service.
  final String? tenantId;

  /// Creates a new [IdentityModelResponse].
  /// [aadAuthority] Gets or sets the authority of the SPN with which MigrateAgent communicates to service.
  /// [applicationId] Gets or sets the client/application Id of the SPN with which MigrateAgent communicates to
  /// [audience] Gets or sets the audience of the SPN with which MigrateAgent communicates to service.
  /// [objectId] Gets or sets the object Id of the SPN with which MigrateAgent communicates to service.
  /// [tenantId] Gets or sets the tenant Id of the SPN with which MigrateAgent communicates to service.
  IdentityModelResponse({
    this.aadAuthority,
    this.applicationId,
    this.audience,
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': ?aadAuthority,
      'applicationId': ?applicationId,
      'audience': ?audience,
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory IdentityModelResponse.fromMap(Map<String, dynamic> map) {
    return IdentityModelResponse(
      aadAuthority: map['aadAuthority'] == null ? null : map['aadAuthority'] as String,
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      audience: map['audience'] == null ? null : map['audience'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

