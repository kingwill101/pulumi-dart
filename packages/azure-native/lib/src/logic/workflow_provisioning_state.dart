/// The provisioning state.
enum WorkflowProvisioningState {
  valueNotSpecified("NotSpecified"),
  valueAccepted("Accepted"),
  valueRunning("Running"),
  valueReady("Ready"),
  valueCreating("Creating"),
  valueCreated("Created"),
  valueDeleting("Deleting"),
  valueDeleted("Deleted"),
  valueCanceled("Canceled"),
  valueFailed("Failed"),
  valueSucceeded("Succeeded"),
  valueMoving("Moving"),
  valueUpdating("Updating"),
  valueRegistering("Registering"),
  valueRegistered("Registered"),
  valueUnregistering("Unregistering"),
  valueUnregistered("Unregistered"),
  valueCompleted("Completed"),
  valueRenewing("Renewing"),
  valuePending("Pending"),
  valueWaiting("Waiting"),
  valueInProgress("InProgress");

  const WorkflowProvisioningState(this.value);
  final String value;

  static WorkflowProvisioningState fromValue(String value) {
    for (final item in WorkflowProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkflowProvisioningState value: $value');
  }
}

