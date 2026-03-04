// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'update_prerequisite_response.dart';

/// Result data returned by getUpdate.
class GetUpdateResult {
  /// Extensible KV pairs serialized as a string. This is currently used to report the stamp OEM family and hardware model information when an update is flagged as Invalid for the stamp based on OEM type.
  final String? additionalProperties;

  /// Indicates the way the update content can be downloaded.
  final String? availabilityType;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Description of the update.
  final String? description;

  /// Display name of the Update
  final String? displayName;

  /// Last time the package-specific checks were run.
  final String? healthCheckDate;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// Date that the update was installed.
  final String? installedDate;

  /// The geo-location where the resource lives
  final String? location;

  /// Minimum Sbe Version of the update.
  final String? minSbeVersionRequired;

  /// The name of the resource
  final String name;

  /// Brief message with instructions for updates of AvailabilityType Notify.
  final String? notifyMessage;

  /// Path where the update package is available.
  final String? packagePath;

  /// Size of the package. This value is a combination of the size from update metadata and size of the payload that results from the live scan operation for OS update content.
  final double? packageSizeInMb;

  /// Customer-visible type of the update.
  final String? packageType;

  /// If update State is HasPrerequisite, this property contains an array of objects describing prerequisite updates before installing this update. Otherwise, it is empty.
  final List<UpdatePrerequisiteResponse>? prerequisites;

  /// Progress percentage of ongoing operation. Currently this property is only valid when the update is in the Downloading state, where it maps to how much of the update content has been downloaded.
  final double? progressPercentage;

  /// Provisioning state of the Updates proxy resource.
  final String provisioningState;

  /// Publisher of the update package.
  final String? publisher;

  /// Link to release notes for the update.
  final String? releaseLink;

  /// State of the update as it relates to this stamp.
  final String? state;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Version of the update.
  final String? version;

  /// Creates a new [GetUpdateResult].
  /// [additionalProperties] Extensible KV pairs serialized as a string. This is currently used to report the stamp OEM family and hardware model information when an update is flagged as Invalid for the stamp based on OEM type.
  /// [availabilityType] Indicates the way the update content can be downloaded.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the update.
  /// [displayName] Display name of the Update
  /// [healthCheckDate] Last time the package-specific checks were run.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [installedDate] Date that the update was installed.
  /// [location] The geo-location where the resource lives
  /// [minSbeVersionRequired] Minimum Sbe Version of the update.
  /// [name] The name of the resource
  /// [notifyMessage] Brief message with instructions for updates of AvailabilityType Notify.
  /// [packagePath] Path where the update package is available.
  /// [packageSizeInMb] Size of the package. This value is a combination of the size from update metadata and size of the payload that results from the live scan operation for OS update content.
  /// [packageType] Customer-visible type of the update.
  /// [prerequisites] If update State is HasPrerequisite, this property contains an array of objects describing prerequisite updates before installing this update. Otherwise, it is empty.
  /// [progressPercentage] Progress percentage of ongoing operation. Currently this property is only valid when the update is in the Downloading state, where it maps to how much of the update content has been downloaded.
  /// [provisioningState] Provisioning state of the Updates proxy resource.
  /// [publisher] Publisher of the update package.
  /// [releaseLink] Link to release notes for the update.
  /// [state] State of the update as it relates to this stamp.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the update.
  GetUpdateResult({
    this.additionalProperties,
    this.availabilityType,
    required this.azureApiVersion,
    this.description,
    this.displayName,
    this.healthCheckDate,
    required this.id,
    this.installedDate,
    this.location,
    this.minSbeVersionRequired,
    required this.name,
    this.notifyMessage,
    this.packagePath,
    this.packageSizeInMb,
    this.packageType,
    this.prerequisites,
    this.progressPercentage,
    required this.provisioningState,
    this.publisher,
    this.releaseLink,
    this.state,
    required this.systemData,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'availabilityType': ?availabilityType,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'healthCheckDate': ?healthCheckDate,
      'id': id,
      'installedDate': ?installedDate,
      'location': ?location,
      'minSbeVersionRequired': ?minSbeVersionRequired,
      'name': name,
      'notifyMessage': ?notifyMessage,
      'packagePath': ?packagePath,
      'packageSizeInMb': ?packageSizeInMb,
      'packageType': ?packageType,
      'prerequisites': ?(() {
        final guardedValue = prerequisites;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          UpdatePrerequisiteResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'progressPercentage': ?progressPercentage,
      'provisioningState': provisioningState,
      'publisher': ?publisher,
      'releaseLink': ?releaseLink,
      'state': ?state,
      'systemData': systemData.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetUpdateResult.fromMap(Map<String, dynamic> map) {
    return GetUpdateResult(
      additionalProperties: (() {
        final guardedValue = map['additionalProperties'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      availabilityType: (() {
        final guardedValue = map['availabilityType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      healthCheckDate: (() {
        final guardedValue = map['healthCheckDate'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      installedDate: (() {
        final guardedValue = map['installedDate'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      minSbeVersionRequired: (() {
        final guardedValue = map['minSbeVersionRequired'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      notifyMessage: (() {
        final guardedValue = map['notifyMessage'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      packagePath: (() {
        final guardedValue = map['packagePath'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      packageSizeInMb: (() {
        final guardedValue = map['packageSizeInMb'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      packageType: (() {
        final guardedValue = map['packageType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      prerequisites: (() {
        final guardedValue = map['prerequisites'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<UpdatePrerequisiteResponse>(
          guardedValue,
          (value) => UpdatePrerequisiteResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      progressPercentage: (() {
        final guardedValue = map['progressPercentage'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      provisioningState: map['provisioningState'] as String,
      publisher: (() {
        final guardedValue = map['publisher'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      releaseLink: (() {
        final guardedValue = map['releaseLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
