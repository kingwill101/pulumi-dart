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

  const WorkflowProvisioningState(this.wireValue);
  final String wireValue;

  static WorkflowProvisioningState fromValue(String value) {
    for (final item in WorkflowProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkflowProvisioningState value: $value');
  }
}

