// ignore_for_file: unused_element, unnecessary_cast


class HadoopClusterNetwork {
  /// The direction of the resource provider connection. Possible values include `Inbound` or `Outbound`. Defaults to `Inbound`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** To enabled the private link the `connection_direction` must be set to `Outbound`.
  final String? connectionDirection;
  /// Is the private link enabled? Possible values include `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final bool? privateLinkEnabled;

  /// Creates a new [HadoopClusterNetwork].
  /// [connectionDirection] The direction of the resource provider connection. Possible values include `Inbound` or `Outbound`. Defaults to `Inbound`. Changing this forces a new resource to be created.
  /// [privateLinkEnabled] Is the private link enabled? Possible values include `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  HadoopClusterNetwork({
    this.connectionDirection,
    this.privateLinkEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDirection': ?connectionDirection,
      'privateLinkEnabled': ?privateLinkEnabled,
    };
  }

  factory HadoopClusterNetwork.fromMap(Map<String, dynamic> map) {
    return HadoopClusterNetwork(
      connectionDirection: map['connectionDirection'] == null ? null : map['connectionDirection'] as String,
      privateLinkEnabled: map['privateLinkEnabled'] == null ? null : map['privateLinkEnabled'] as bool,
    );
  }
}

