// ignore_for_file: unused_element, unnecessary_cast

/// Allow the producer to specify which consumers can connect to it.
class ConsumerPscConfigResponse {
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final bool disableGlobalAccess;

  /// The resource path of the consumer network where PSC connections are allowed to be created in. Note, this network does not need be in the ConsumerPscConfig.project in the case of SharedVPC. Example: projects/{projectNumOrId}/global/networks/{networkId}.
  final String network;

  /// The consumer project where PSC connections are allowed to be created in.
  final String project;

  /// Overall state of PSC Connections management for this consumer psc config.
  final String state;

  ConsumerPscConfigResponse({
    required this.disableGlobalAccess,
    required this.network,
    required this.project,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableGlobalAccess'] = disableGlobalAccess;
    map['network'] = network;
    map['project'] = project;
    map['state'] = state;
    return map;
  }

  factory ConsumerPscConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConsumerPscConfigResponse(
      disableGlobalAccess: map['disableGlobalAccess'] as bool,
      network: map['network'] as String,
      project: map['project'] as String,
      state: map['state'] as String,
    );
  }
}
