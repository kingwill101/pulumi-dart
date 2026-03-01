// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_oos_application_application_args_doc}
class ApplicationArgs {
  /// The name of the application.
  final pulumi.Input<String> applicationName;
  /// Application group description information.
  final pulumi.Input<String>? description;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationName] The name of the application.
  /// [description] Application group description information.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  ApplicationArgs({
    required pulumi.Output<String> applicationName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'description': ?description,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

