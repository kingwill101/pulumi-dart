// ignore_for_file: unused_element, unnecessary_cast

class NotebookExecutionCustomEnvironmentSpecNetworkSpec {
  /// Enable public internet access for the runtime.
  final bool? enableInternetAccess;

  /// The name of the VPC that this runtime is in.
  final String? network;

  /// The name of the subnetwork that this runtime is in.
  final String? subnetwork;

  /// Creates a new [NotebookExecutionCustomEnvironmentSpecNetworkSpec].
  /// [enableInternetAccess] Enable public internet access for the runtime.
  /// [network] The name of the VPC that this runtime is in.
  /// [subnetwork] The name of the subnetwork that this runtime is in.
  NotebookExecutionCustomEnvironmentSpecNetworkSpec({
    this.enableInternetAccess,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableInternetAccessValue = enableInternetAccess;
    if (enableInternetAccessValue != null) {
      map['enableInternetAccess'] = enableInternetAccessValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory NotebookExecutionCustomEnvironmentSpecNetworkSpec.fromMap(
      Map<String, dynamic> map) {
    return NotebookExecutionCustomEnvironmentSpecNetworkSpec(
      enableInternetAccess: map['enableInternetAccess'] == null
          ? null
          : map['enableInternetAccess'] as bool,
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
