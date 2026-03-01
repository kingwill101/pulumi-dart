// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'project_properties.dart';

/// {@template pulumi_cognitiveservices_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_project_args_doc}
class ProjectArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String>? projectName;
  /// Properties of Cognitive Services project.
  final pulumi.Input<ProjectProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [identity] Identity for the resource.
  /// [location] The geo-location where the resource lives
  /// [projectName] The name of Cognitive Services account's project.
  /// [properties] Properties of Cognitive Services project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ProjectArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? projectName,
    pulumi.Output<ProjectProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<ProjectProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'projectName': ?projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProjectProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ProjectProperties>(ProjectProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

