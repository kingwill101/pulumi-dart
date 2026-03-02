// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_center_project_catalog_settings.dart';
import 'encryption.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_devcenter_dev_center_args_doc}
/// The set of arguments for DevCenter.
/// {@endtemplate}
/// {@macro pulumi_devcenter_dev_center_args_doc}
class DevCenterArgs {
  /// The name of the devcenter.
  final pulumi.Input<String>? devCenterName;
  /// The display name of the devcenter.
  final pulumi.Input<String>? displayName;
  /// Encryption settings to be used for server-side encryption for proprietary content (such as catalogs, logs, customizations).
  final pulumi.Input<Encryption>? encryption;
  /// Managed identity properties
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Dev Center settings to be used when associating a project with a catalog.
  final pulumi.Input<DevCenterProjectCatalogSettings>? projectCatalogSettings;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DevCenterArgs].
  /// [devCenterName] The name of the devcenter.
  /// [displayName] The display name of the devcenter.
  /// [encryption] Encryption settings to be used for server-side encryption for proprietary content (such as catalogs, logs, customizations).
  /// [identity] Managed identity properties
  /// [location] The geo-location where the resource lives
  /// [projectCatalogSettings] Dev Center settings to be used when associating a project with a catalog.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DevCenterArgs({
    this.devCenterName,
    this.displayName,
    this.encryption,
    this.identity,
    this.location,
    this.projectCatalogSettings,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': ?devCenterName,
      'displayName': ?displayName,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'projectCatalogSettings': ?pulumi.Input.mapOptionalInputValue<DevCenterProjectCatalogSettings, Map<String, dynamic>>(projectCatalogSettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DevCenterArgs.fromMap(Map<String, dynamic> map) {
    return DevCenterArgs(
      devCenterName: map['devCenterName'] == null ? null : (map['devCenterName']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      projectCatalogSettings: map['projectCatalogSettings'] == null ? null : (DevCenterProjectCatalogSettings.fromMap((map['projectCatalogSettings']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

