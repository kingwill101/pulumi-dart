/// Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
enum GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettingsResourceType {
  resourceTypeUnspecified("RESOURCE_TYPE_UNSPECIFIED"),
  consumerProject("CONSUMER_PROJECT"),
  consumerFolder("CONSUMER_FOLDER"),
  encryptionKeysProject("ENCRYPTION_KEYS_PROJECT"),
  keyring("KEYRING");

  const GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettingsResourceType(this.value);
  final String value;

  static GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettingsResourceType fromValue(String value) {
    for (final item in GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettingsResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettingsResourceType value: $value');
  }
}

