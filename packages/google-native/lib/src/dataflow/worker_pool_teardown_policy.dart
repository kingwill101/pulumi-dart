/// Sets the policy for determining when to turndown worker pool. Allowed values are: `TEARDOWN_ALWAYS`, `TEARDOWN_ON_SUCCESS`, and `TEARDOWN_NEVER`. `TEARDOWN_ALWAYS` means workers are always torn down regardless of whether the job succeeds. `TEARDOWN_ON_SUCCESS` means workers are torn down if the job succeeds. `TEARDOWN_NEVER` means the workers are never torn down. If the workers are not torn down by the service, they will continue to run and use Google Compute Engine VM resources in the user's project until they are explicitly terminated by the user. Because of this, Google recommends using the `TEARDOWN_ALWAYS` policy except for small, manually supervised test jobs. If unknown or unspecified, the service will attempt to choose a reasonable default.
enum WorkerPoolTeardownPolicy {
  teardownPolicyUnknown("TEARDOWN_POLICY_UNKNOWN"),
  teardownAlways("TEARDOWN_ALWAYS"),
  teardownOnSuccess("TEARDOWN_ON_SUCCESS"),
  teardownNever("TEARDOWN_NEVER");

  const WorkerPoolTeardownPolicy(this.value);
  final String value;

  static WorkerPoolTeardownPolicy fromValue(String value) {
    for (final item in WorkerPoolTeardownPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkerPoolTeardownPolicy value: $value');
  }
}

