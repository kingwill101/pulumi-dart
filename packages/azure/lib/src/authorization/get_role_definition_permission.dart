// ignore_for_file: unused_element, unnecessary_cast


class GetRoleDefinitionPermission {
  /// A list of actions supported by this role.
  final List<String> actions;
  /// The conditions on this role definition, which limits the resources it can be assigned to.
  final String condition;
  /// The version of the condition.
  final String conditionVersion;
  /// A list of data actions allowed by this role.
  final List<String>? dataActions;
  /// A list of actions which are denied by this role.
  final List<String> notActions;
  /// A list of data actions which are denied by this role.
  final List<String>? notDataActions;

  /// Creates a new [GetRoleDefinitionPermission].
  /// [actions] A list of actions supported by this role.
  /// [condition] The conditions on this role definition, which limits the resources it can be assigned to.
  /// [conditionVersion] The version of the condition.
  /// [dataActions] A list of data actions allowed by this role.
  /// [notActions] A list of actions which are denied by this role.
  /// [notDataActions] A list of data actions which are denied by this role.
  GetRoleDefinitionPermission({
    required this.actions,
    required this.condition,
    required this.conditionVersion,
    this.dataActions,
    required this.notActions,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'condition': condition,
      'conditionVersion': conditionVersion,
      'dataActions': ?dataActions,
      'notActions': notActions,
      'notDataActions': ?notDataActions,
    };
  }

  factory GetRoleDefinitionPermission.fromMap(Map<String, dynamic> map) {
    return GetRoleDefinitionPermission(
      actions: (map['actions'] as List).cast<String>(),
      condition: map['condition'] as String,
      conditionVersion: map['conditionVersion'] as String,
      dataActions: map['dataActions'] == null ? null : (map['dataActions'] as List).cast<String>(),
      notActions: (map['notActions'] as List).cast<String>(),
      notDataActions: map['notDataActions'] == null ? null : (map['notDataActions'] as List).cast<String>(),
    );
  }
}

