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
    String? additionalProperties,
    String? availabilityType,
    required String clusterName,
    String? description,
    String? displayName,
    String? healthCheckDate,
    String? installedDate,
    String? location,
    String? minSbeVersionRequired,
    String? notifyMessage,
    String? packagePath,
    double? packageSizeInMb,
    String? packageType,
    List<UpdatePrerequisite>? prerequisites,
    double? progressPercentage,
    String? publisher,
    String? releaseLink,
    required String resourceGroupName,
    String? state,
    String? updateName,
    String? version,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<String>(additionalProperties),
      availabilityType = pulumi.Input.asOptionalInput<String>(availabilityType),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      healthCheckDate = pulumi.Input.asOptionalInput<String>(healthCheckDate),
      installedDate = pulumi.Input.asOptionalInput<String>(installedDate),
      location = pulumi.Input.asOptionalInput<String>(location),
      minSbeVersionRequired = pulumi.Input.asOptionalInput<String>(minSbeVersionRequired),
      notifyMessage = pulumi.Input.asOptionalInput<String>(notifyMessage),
      packagePath = pulumi.Input.asOptionalInput<String>(packagePath),
      packageSizeInMb = pulumi.Input.asOptionalInput<double>(packageSizeInMb),
      packageType = pulumi.Input.asOptionalInput<String>(packageType),
      prerequisites = pulumi.Input.asOptionalInput<List<UpdatePrerequisite>>(prerequisites),
      progressPercentage = pulumi.Input.asOptionalInput<double>(progressPercentage),
      publisher = pulumi.Input.asOptionalInput<String>(publisher),
      releaseLink = pulumi.Input.asOptionalInput<String>(releaseLink),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateName = pulumi.Input.asOptionalInput<String>(updateName),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      'prerequisites': ?pulumi.Input.mapOptionalInputValue<List<UpdatePrerequisite>, List<Map<String, dynamic>>>(prerequisites, (value) => pulumi.Input.encodeList<UpdatePrerequisite, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      additionalProperties: map['additionalProperties'] == null ? null : map['additionalProperties'] as String,
      availabilityType: map['availabilityType'] == null ? null : map['availabilityType'] as String,
      clusterName: map['clusterName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      healthCheckDate: map['healthCheckDate'] == null ? null : map['healthCheckDate'] as String,
      installedDate: map['installedDate'] == null ? null : map['installedDate'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      minSbeVersionRequired: map['minSbeVersionRequired'] == null ? null : map['minSbeVersionRequired'] as String,
      notifyMessage: map['notifyMessage'] == null ? null : map['notifyMessage'] as String,
      packagePath: map['packagePath'] == null ? null : map['packagePath'] as String,
      packageSizeInMb: map['packageSizeInMb'] == null ? null : map['packageSizeInMb'] as double,
      packageType: map['packageType'] == null ? null : map['packageType'] as String,
      prerequisites: map['prerequisites'] == null ? null : pulumi.Input.decodeList<UpdatePrerequisite>(map['prerequisites'], (value) => UpdatePrerequisite.fromMap((value as Map).cast<String, dynamic>())),
      progressPercentage: map['progressPercentage'] == null ? null : map['progressPercentage'] as double,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      releaseLink: map['releaseLink'] == null ? null : map['releaseLink'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      updateName: map['updateName'] == null ? null : map['updateName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

