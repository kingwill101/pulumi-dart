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
      'catalogSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectCatalogSettings,
            Map<String, dynamic>
          >(catalogSettings, (value) => value.toMap()),
      'description': ?description,
      'devCenterId': ?devCenterId,
      'displayName': ?displayName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'maxDevBoxesPerUser': ?maxDevBoxesPerUser,
      'projectName': ?projectName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      catalogSettings: (() {
        final guardedValue = map['catalogSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProjectCatalogSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      devCenterId: (() {
        final guardedValue = map['devCenterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxDevBoxesPerUser: (() {
        final guardedValue = map['maxDevBoxesPerUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      projectName: (() {
        final guardedValue = map['projectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
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
