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
      applicationName: (() {
        final guardedValue = map['applicationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
