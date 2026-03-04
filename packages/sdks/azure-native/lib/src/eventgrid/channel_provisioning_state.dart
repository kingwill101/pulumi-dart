/// Provisioning state of the channel.
enum ChannelProvisioningState {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed"),
  valueIdleDueToMirroredPartnerTopicDeletion(
    "IdleDueToMirroredPartnerTopicDeletion",
  );

  const ChannelProvisioningState(this.wireValue);
  final String wireValue;

  static ChannelProvisioningState fromValue(String value) {
    for (final item in ChannelProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChannelProvisioningState value: $value');
  }
}
