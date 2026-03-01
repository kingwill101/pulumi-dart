// ignore_for_file: unused_element, unnecessary_cast


/// Identity model.
class IdentityModel {
  /// Gets or sets the authority of the SPN with which fabric agent communicates to service.
  final String aadAuthority;
  /// Gets or sets the client/application Id of the SPN with which fabric agent communicates to service.
  final String applicationId;
  /// Gets or sets the audience of the SPN with which fabric agent communicates to service.
  final String audience;
  /// Gets or sets the object Id of the SPN with which fabric agent communicates to service.
  final String objectId;
  /// Gets or sets the tenant Id of the SPN with which fabric agent communicates to service.
  final String tenantId;

  /// Creates a new [IdentityModel].
  /// [aadAuthority] Gets or sets the authority of the SPN with which fabric agent communicates to service.
  /// [applicationId] Gets or sets the client/application Id of the SPN with which fabric agent communicates to service.
  /// [audience] Gets or sets the audience of the SPN with which fabric agent communicates to service.
  /// [objectId] Gets or sets the object Id of the SPN with which fabric agent communicates to service.
  /// [tenantId] Gets or sets the tenant Id of the SPN with which fabric agent communicates to service.
  IdentityModel({
    required this.aadAuthority,
    required this.applicationId,
    required this.audience,
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': aadAuthority,
      'applicationId': applicationId,
      'audience': audience,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory IdentityModel.fromMap(Map<String, dynamic> map) {
    return IdentityModel(
      aadAuthority: map['aadAuthority'] as String,
      applicationId: map['applicationId'] as String,
      audience: map['audience'] as String,
      objectId: map['objectId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

