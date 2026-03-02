// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// The name of the application.
  final pulumi.Input<String>? applicationName;
  /// Application group description information.
  final pulumi.Input<String>? description;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationState].
  /// [applicationName] The name of the application.
  /// [description] Application group description information.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  ApplicationState({
    this.applicationName,
    this.description,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'description': ?description,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationName: map['applicationName'] == null ? null : (map['applicationName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

