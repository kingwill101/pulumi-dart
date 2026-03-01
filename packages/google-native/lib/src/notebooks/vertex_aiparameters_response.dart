// ignore_for_file: unused_element, unnecessary_cast

/// Parameters used in Vertex AI JobType executions.
class VertexAIParametersResponse {
  /// Environment variables. At most 100 environment variables can be specified and unique. Example: `GCP_BUCKET=gs://my-bucket/samples/`
  final Map<String, String> env;

  /// The full name of the Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the Job should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is a network name. Private services access must already be configured for the network. If left unspecified, the job is not peered with any network.
  final String network;

  /// Creates a new [VertexAIParametersResponse].
  /// [env] Environment variables. At most 100 environment variables can be specified and unique. Example: `GCP_BUCKET=gs://my-bucket/samples/`
  /// [network] The full name of the Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the Job should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is a network name. Private services access must already be configured for the network. If left unspecified, the job is not peered with any network.
  VertexAIParametersResponse({required this.env, required this.network});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'env': env, 'network': network};
  }

  factory VertexAIParametersResponse.fromMap(Map<String, dynamic> map) {
    return VertexAIParametersResponse(
      env: (map['env'] as Map).cast<String, String>(),
      network: map['network'] as String,
    );
  }
}
