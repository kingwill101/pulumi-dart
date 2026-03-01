enum EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType {
  unknown("UNKNOWN"),
  cloudPubsub("CLOUD_PUBSUB"),
  goops("GOOPS"),
  sfdcSync("SFDC_SYNC"),
  cron("CRON"),
  api("API"),
  manifoldTrigger("MANIFOLD_TRIGGER"),
  datalayerDataChange("DATALAYER_DATA_CHANGE"),
  sfdcChannel("SFDC_CHANNEL"),
  cloudPubsubExternal("CLOUD_PUBSUB_EXTERNAL"),
  sfdcCdcChannel("SFDC_CDC_CHANNEL"),
  sfdcPlatformEventsChannel("SFDC_PLATFORM_EVENTS_CHANNEL"),
  cloudScheduler("CLOUD_SCHEDULER"),
  integrationConnectorTrigger("INTEGRATION_CONNECTOR_TRIGGER"),
  privateTrigger("PRIVATE_TRIGGER");

  const EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType(this.value);
  final String value;

  static EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType fromValue(
    String value,
  ) {
    for (final item
        in EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType value: $value',
    );
  }
}
