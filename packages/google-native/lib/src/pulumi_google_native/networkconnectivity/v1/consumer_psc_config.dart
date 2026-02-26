// ignore_for_file: unused_element, unnecessary_cast

/// Allow the producer to specify which consumers can connect to it.
class ConsumerPscConfig {
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final bool? disableGlobalAccess;

  /// The resource path of the consumer network where PSC connections are allowed to be created in. Note, this network does not need be in the ConsumerPscConfig.project in the case of SharedVPC. Example: projects/{projectNumOrId}/global/networks/{networkId}.
  final String? network;

  /// The consumer project where PSC connections are allowed to be created in.
  final String? project;

  ConsumerPscConfig({
    this.disableGlobalAccess,
    this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableGlobalAccessValue = disableGlobalAccess;
    if (disableGlobalAccessValue != null) {
      map['disableGlobalAccess'] = disableGlobalAccessValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConsumerPscConfig.fromMap(Map<String, dynamic> map) {
    return ConsumerPscConfig(
      disableGlobalAccess: map['disableGlobalAccess'] == null
          ? null
          : map['disableGlobalAccess'] as bool,
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
