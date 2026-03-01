// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_assuredworkloads_v1beta1_workload_resource_settings_resource_type.dart';

/// Represent the custom settings for the resources to be created.
class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings {
  /// User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  final String? displayName;

  /// Resource identifier. For a project this represents project_id. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.
  final String? resourceId;

  /// Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
  final GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettingsResourceType?
  resourceType;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings].
  /// [displayName] User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  /// [resourceId] Resource identifier. For a project this represents project_id. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.
  /// [resourceType] Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
  GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings({
    this.displayName,
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType == null ? null : resourceType!.value,
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      resourceId: map['resourceId'] == null
          ? null
          : map['resourceId'] as String,
      resourceType: map['resourceType'] == null
          ? null
          : GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettingsResourceType.fromValue(
              map['resourceType'] as String,
            ),
    );
  }
}
