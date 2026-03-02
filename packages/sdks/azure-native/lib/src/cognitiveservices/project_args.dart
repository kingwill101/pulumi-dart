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
    required this.accountName,
    this.identity,
    this.location,
    this.projectName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      accountName: (map['accountName'] as String).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (ProjectProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

