/// The provisioning state of the resource.
///
/// Pending - Provisioning pending.
/// Failed - Provisioning failed.
/// Succeeded - Successful provisioning.
/// Canceled - Provisioning canceled.
/// PendingDeletion - Deletion pending.
/// DeletionSuccess - Deletion successful.
/// DeletionFailure - Deletion failure.
enum DevOpsProvisioningState {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valuePending("Pending"),
  valuePendingDeletion("PendingDeletion"),
  valueDeletionSuccess("DeletionSuccess"),
  valueDeletionFailure("DeletionFailure");

  const DevOpsProvisioningState(this.value);
  final String value;

  static DevOpsProvisioningState fromValue(String value) {
    for (final item in DevOpsProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevOpsProvisioningState value: $value');
  }
}

