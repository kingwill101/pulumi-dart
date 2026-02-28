// ignore_for_file: unused_element, unnecessary_cast


/// Network spec.
class GoogleCloudAiplatformV1NetworkSpecResponse {
  /// Whether to enable public internet access. Default false.
  final bool enableInternetAccess;
  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks)
  final String network;
  /// The name of the subnet that this instance is in. Format: `projects/{project_id_or_number}/regions/{region}/subnetworks/{subnetwork_id}`
  final String subnetwork;

  /// Creates a new [GoogleCloudAiplatformV1NetworkSpecResponse].
  /// [enableInternetAccess] Whether to enable public internet access. Default false.
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks)
  /// [subnetwork] The name of the subnet that this instance is in. Format: `projects/{project_id_or_number}/regions/{region}/subnetworks/{subnetwork_id}`
  GoogleCloudAiplatformV1NetworkSpecResponse({
    required this.enableInternetAccess,
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInternetAccess': enableInternetAccess,
      'network': network,
      'subnetwork': subnetwork,
    };
  }

  factory GoogleCloudAiplatformV1NetworkSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NetworkSpecResponse(
      enableInternetAccess: map['enableInternetAccess'] as bool,
      network: map['network'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}

