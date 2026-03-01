enum LegacyOperation {
  notSpecified("NotSpecified"),
  create("Create"),
  delete("Delete"),
  waiting("Waiting"),
  azureAsyncOperationWaiting("AzureAsyncOperationWaiting"),
  resourceCacheWaiting("ResourceCacheWaiting"),
  action("Action"),
  read("Read"),
  evaluateDeploymentOutput("EvaluateDeploymentOutput"),
  deploymentCleanup("DeploymentCleanup");

  const LegacyOperation(this.value);
  final String value;

  static LegacyOperation fromValue(String value) {
    for (final item in LegacyOperation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LegacyOperation value: $value');
  }
}

