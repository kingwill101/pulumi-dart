// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Cognitive Services Project'.
class ProjectPropertiesResponse {
  /// The description of the Cognitive Services Project.
  final pulumi.Input<String>? description;
  /// The display name of the Cognitive Services Project.
  final pulumi.Input<String>? displayName;
  /// The list of endpoint for this Cognitive Services Project.
  final pulumi.Input<Map<String, String>> endpoints;
  /// Indicates whether the project is the default project for the account.
  final pulumi.Input<bool> isDefault;
  /// Gets the status of the cognitive services project at the time the operation was called.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ProjectPropertiesResponse].
  /// [description] The description of the Cognitive Services Project.
  /// [displayName] The display name of the Cognitive Services Project.
  /// [endpoints] The list of endpoint for this Cognitive Services Project.
  /// [isDefault] Indicates whether the project is the default project for the account.
  /// [provisioningState] Gets the status of the cognitive services project at the time the operation was called.
  ProjectPropertiesResponse({
    this.description,
    this.displayName,
    required this.endpoints,
    required this.isDefault,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'endpoints': endpoints,
      'isDefault': isDefault,
      'provisioningState': provisioningState,
    };
  }

  factory ProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProjectPropertiesResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      endpoints: ((map['endpoints'] as Map).cast<String, String>()).input(),
      isDefault: (map['isDefault'] as bool).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

