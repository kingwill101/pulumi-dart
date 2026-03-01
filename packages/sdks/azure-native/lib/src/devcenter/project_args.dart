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
    pulumi.Output<ProjectCatalogSettings>? catalogSettings,
    pulumi.Output<String>? description,
    pulumi.Output<String>? devCenterId,
    pulumi.Output<String>? displayName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maxDevBoxesPerUser,
    pulumi.Output<String>? projectName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      catalogSettings = pulumi.Input.asOptionalInput<ProjectCatalogSettings>(catalogSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      devCenterId = pulumi.Input.asOptionalInput<String>(devCenterId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxDevBoxesPerUser = pulumi.Input.asOptionalInput<int>(maxDevBoxesPerUser),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      catalogSettings: map['catalogSettings'] == null ? null : pulumi.Output.create<ProjectCatalogSettings>(ProjectCatalogSettings.fromMap((map['catalogSettings'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      devCenterId: map['devCenterId'] == null ? null : pulumi.Output.create<String>(map['devCenterId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxDevBoxesPerUser: map['maxDevBoxesPerUser'] == null ? null : pulumi.Output.create<int>(map['maxDevBoxesPerUser'] as int),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

