// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_prerequisite.dart';

/// {@template pulumi_azurestackhci_update_args_doc}
/// The set of arguments for Update.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_update_args_doc}
class UpdateArgs {
  /// Extensible KV pairs serialized as a string. This is currently used to report the stamp OEM family and hardware model information when an update is flagged as Invalid for the stamp based on OEM type.
  final pulumi.Input<String>? additionalProperties;

  /// Indicates the way the update content can be downloaded.
  final pulumi.Input<String>? availabilityType;

  /// The name of the cluster.
  final pulumi.Input<String> clusterName;

  /// Description of the update.
  final pulumi.Input<String>? description;

  /// Display name of the Update
  final pulumi.Input<String>? displayName;

  /// Last time the package-specific checks were run.
  final pulumi.Input<String>? healthCheckDate;

  /// Date that the update was installed.
  final pulumi.Input<String>? installedDate;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Minimum Sbe Version of the update.
  final pulumi.Input<String>? minSbeVersionRequired;

  /// Brief message with instructions for updates of AvailabilityType Notify.
  final pulumi.Input<String>? notifyMessage;

  /// Path where the update package is available.
  final pulumi.Input<String>? packagePath;

  /// Size of the package. This value is a combination of the size from update metadata and size of the payload that results from the live scan operation for OS update content.
  final pulumi.Input<double>? packageSizeInMb;

  /// Customer-visible type of the update.
  final pulumi.Input<String>? packageType;

  /// If update State is HasPrerequisite, this property contains an array of objects describing prerequisite updates before installing this update. Otherwise, it is empty.
  final pulumi.Input<List<UpdatePrerequisite>>? prerequisites;

  /// Progress percentage of ongoing operation. Currently this property is only valid when the update is in the Downloading state, where it maps to how much of the update content has been downloaded.
  final pulumi.Input<double>? progressPercentage;

  /// Publisher of the update package.
  final pulumi.Input<String>? publisher;

  /// Link to release notes for the update.
  final pulumi.Input<String>? releaseLink;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// State of the update as it relates to this stamp.
  final pulumi.Input<String>? state;

  /// The name of the Update
  final pulumi.Input<String>? updateName;

  /// Version of the update.
  final pulumi.Input<String>? version;

  /// Creates a new [UpdateArgs].
  /// [additionalProperties] Extensible KV pairs serialized as a string. This is currently used to report the stamp OEM family and hardware model information when an update is flagged as Invalid for the stamp based on OEM type.
  /// [availabilityType] Indicates the way the update content can be downloaded.
  /// [clusterName] The name of the cluster.
  /// [description] Description of the update.
  /// [displayName] Display name of the Update
  /// [healthCheckDate] Last time the package-specific checks were run.
  /// [installedDate] Date that the update was installed.
  /// [location] The geo-location where the resource lives
  /// [minSbeVersionRequired] Minimum Sbe Version of the update.
  /// [notifyMessage] Brief message with instructions for updates of AvailabilityType Notify.
  /// [packagePath] Path where the update package is available.
  /// [packageSizeInMb] Size of the package. This value is a combination of the size from update metadata and size of the payload that results from the live scan operation for OS update content.
  /// [packageType] Customer-visible type of the update.
  /// [prerequisites] If update State is HasPrerequisite, this property contains an array of objects describing prerequisite updates before installing this update. Otherwise, it is empty.
  /// [progressPercentage] Progress percentage of ongoing operation. Currently this property is only valid when the update is in the Downloading state, where it maps to how much of the update content has been downloaded.
  /// [publisher] Publisher of the update package.
  /// [releaseLink] Link to release notes for the update.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [state] State of the update as it relates to this stamp.
  /// [updateName] The name of the Update
  /// [version] Version of the update.
  UpdateArgs({
    this.additionalProperties,
    this.availabilityType,
    required this.clusterName,
    this.description,
    this.displayName,
    this.healthCheckDate,
    this.installedDate,
    this.location,
    this.minSbeVersionRequired,
    this.notifyMessage,
    this.packagePath,
    this.packageSizeInMb,
    this.packageType,
    this.prerequisites,
    this.progressPercentage,
    this.publisher,
    this.releaseLink,
    required this.resourceGroupName,
    this.state,
    this.updateName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'availabilityType': ?availabilityType,
      'clusterName': clusterName,
      'description': ?description,
      'displayName': ?displayName,
      'healthCheckDate': ?healthCheckDate,
      'installedDate': ?installedDate,
      'location': ?location,
      'minSbeVersionRequired': ?minSbeVersionRequired,
      'notifyMessage': ?notifyMessage,
      'packagePath': ?packagePath,
      'packageSizeInMb': ?packageSizeInMb,
      'packageType': ?packageType,
      'prerequisites':
          ?pulumi.Input.mapOptionalInputValue<
            List<UpdatePrerequisite>,
            List<Map<String, dynamic>>
          >(
            prerequisites,
            (value) =>
                pulumi.Input.encodeList<
                  UpdatePrerequisite,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'progressPercentage': ?progressPercentage,
      'publisher': ?publisher,
      'releaseLink': ?releaseLink,
      'resourceGroupName': resourceGroupName,
      'state': ?state,
      'updateName': ?updateName,
      'version': ?version,
    };
  }

  factory UpdateArgs.fromMap(Map<String, dynamic> map) {
    return UpdateArgs(
      additionalProperties: (() {
        final guardedValue = map['additionalProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityType: (() {
        final guardedValue = map['availabilityType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckDate: (() {
        final guardedValue = map['healthCheckDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      installedDate: (() {
        final guardedValue = map['installedDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minSbeVersionRequired: (() {
        final guardedValue = map['minSbeVersionRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notifyMessage: (() {
        final guardedValue = map['notifyMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packagePath: (() {
        final guardedValue = map['packagePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageSizeInMb: (() {
        final guardedValue = map['packageSizeInMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      packageType: (() {
        final guardedValue = map['packageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prerequisites: (() {
        final guardedValue = map['prerequisites'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UpdatePrerequisite>(
            guardedValue,
            (value) => UpdatePrerequisite.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      progressPercentage: (() {
        final guardedValue = map['progressPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      publisher: (() {
        final guardedValue = map['publisher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseLink: (() {
        final guardedValue = map['releaseLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateName: (() {
        final guardedValue = map['updateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
