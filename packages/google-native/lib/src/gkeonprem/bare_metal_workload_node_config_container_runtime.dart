/// Specifies which container runtime will be used.
enum BareMetalWorkloadNodeConfigContainerRuntime {
  containerRuntimeUnspecified("CONTAINER_RUNTIME_UNSPECIFIED"),
  containerd("CONTAINERD");

  const BareMetalWorkloadNodeConfigContainerRuntime(this.value);
  final String value;

  static BareMetalWorkloadNodeConfigContainerRuntime fromValue(String value) {
    for (final item in BareMetalWorkloadNodeConfigContainerRuntime.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BareMetalWorkloadNodeConfigContainerRuntime value: $value');
  }
}

