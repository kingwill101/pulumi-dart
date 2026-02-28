// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSfdcInstance.
class GetSfdcInstanceResult {
  /// A list of AuthConfigs that can be tried to open the channel to SFDC
  final List<String> authConfigId;

  /// Time when the instance is created
  final String createTime;

  /// Time when the instance was deleted. Empty if not deleted.
  final String deleteTime;

  /// A description of the sfdc instance.
  final String description;

  /// User selected unique name/alias to easily reference an instance.
  final String displayName;

  /// Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  final String name;

  /// URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  final String serviceAuthority;

  /// The SFDC Org Id. This is defined in salesforce.
  final String sfdcOrgId;

  /// Time when the instance was last updated
  final String updateTime;

  /// Creates a new [GetSfdcInstanceResult].
  /// [authConfigId] A list of AuthConfigs that can be tried to open the channel to SFDC
  /// [createTime] Time when the instance is created
  /// [deleteTime] Time when the instance was deleted. Empty if not deleted.
  /// [description] A description of the sfdc instance.
  /// [displayName] User selected unique name/alias to easily reference an instance.
  /// [name] Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  /// [serviceAuthority] URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  /// [sfdcOrgId] The SFDC Org Id. This is defined in salesforce.
  /// [updateTime] Time when the instance was last updated
  GetSfdcInstanceResult({
    required this.authConfigId,
    required this.createTime,
    required this.deleteTime,
    required this.description,
    required this.displayName,
    required this.name,
    required this.serviceAuthority,
    required this.sfdcOrgId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authConfigId'] = authConfigId;
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['serviceAuthority'] = serviceAuthority;
    map['sfdcOrgId'] = sfdcOrgId;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetSfdcInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSfdcInstanceResult(
      authConfigId: (map['authConfigId'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      serviceAuthority: map['serviceAuthority'] as String,
      sfdcOrgId: map['sfdcOrgId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
