// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'project_catalog_settings.dart';

/// {@template pulumi_devcenter_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_devcenter_project_args_doc}
class ProjectArgs {
  /// Settings to be used when associating a project with a catalog.
  final pulumi.Input<ProjectCatalogSettings>? catalogSettings;
  /// Description of the project.
  final pulumi.Input<String>? description;
  /// Resource Id of an associated DevCenter
  final pulumi.Input<String>? devCenterId;
  /// The display name of the project.
  final pulumi.Input<String>? displayName;
  /// Managed identity properties
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. This will have no effect on existing Dev Boxes when reduced.
  final pulumi.Input<int>? maxDevBoxesPerUser;
  /// The name of the project.
  final pulumi.Input<String>? projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [catalogSettings] Settings to be used when associating a project with a catalog.
  /// [description] Description of the project.
  /// [devCenterId] Resource Id of an associated DevCenter
  /// [displayName] The display name of the project.
  /// [identity] Managed identity properties
  /// [location] The geo-location where the resource lives
  /// [maxDevBoxesPerUser] When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. This will have no effect on existing Dev Boxes when reduced.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ProjectArgs({
    this.catalogSettings,
    this.description,
    this.devCenterId,
    this.displayName,
    this.identity,
    this.location,
    this.maxDevBoxesPerUser,
    this.projectName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogSettings': ?pulumi.Input.mapOptionalInputValue<ProjectCatalogSettings, Map<String, dynamic>>(catalogSettings, (value) => value.toMap()),
      'description': ?description,
      'devCenterId': ?devCenterId,
      'displayName': ?displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maxDevBoxesPerUser': ?maxDevBoxesPerUser,
      'projectName': ?projectName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      catalogSettings: map['catalogSettings'] == null ? null : (ProjectCatalogSettings.fromMap((map['catalogSettings'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      devCenterId: map['devCenterId'] == null ? null : (map['devCenterId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxDevBoxesPerUser: map['maxDevBoxesPerUser'] == null ? null : (map['maxDevBoxesPerUser'] as int).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

