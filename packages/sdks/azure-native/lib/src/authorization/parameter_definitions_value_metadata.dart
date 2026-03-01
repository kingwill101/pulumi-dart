// ignore_for_file: unused_element, unnecessary_cast


/// General metadata for the parameter.
class ParameterDefinitionsValueMetadata {
  /// Set to true to have Azure portal create role assignments on the resource ID or resource scope value of this parameter during policy assignment. This property is useful in case you wish to assign permissions outside the assignment scope.
  final bool? assignPermissions;
  /// The description of the parameter.
  final String? description;
  /// The display name for the parameter.
  final String? displayName;
  /// Used when assigning the policy definition through the portal. Provides a context aware list of values for the user to choose from.
  final String? strongType;

  /// Creates a new [ParameterDefinitionsValueMetadata].
  /// [assignPermissions] Set to true to have Azure portal create role assignments on the resource ID or resource scope value of this parameter during policy assignment. This property is useful in case you wish to assign permissions outside the assignment scope.
  /// [description] The description of the parameter.
  /// [displayName] The display name for the parameter.
  /// [strongType] Used when assigning the policy definition through the portal. Provides a context aware list of values for the user to choose from.
  ParameterDefinitionsValueMetadata({
    this.assignPermissions,
    this.description,
    this.displayName,
    this.strongType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPermissions': ?assignPermissions,
      'description': ?description,
      'displayName': ?displayName,
      'strongType': ?strongType,
    };
  }

  factory ParameterDefinitionsValueMetadata.fromMap(Map<String, dynamic> map) {
    return ParameterDefinitionsValueMetadata(
      assignPermissions: map['assignPermissions'] == null ? null : map['assignPermissions'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      strongType: map['strongType'] == null ? null : map['strongType'] as String,
    );
  }
}

