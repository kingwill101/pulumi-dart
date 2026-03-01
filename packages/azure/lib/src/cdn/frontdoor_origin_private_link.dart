// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorOriginPrivateLink {
  /// Specifies the location where the Private Link resource should exist. Changing this forces a new resource to be created.
  final String location;
  /// The ID of the Azure Resource to connect to via the Private Link.
  ///
  /// > **Note:** the `private_link_target_id` property must specify the Resource ID of the Private Link Service when using Load Balancer as an Origin.
  final String privateLinkTargetId;
  /// Specifies the request message that will be submitted to the `private_link_target_id` when requesting the private link endpoint connection. Values must be between `1` and `140` characters in length. Defaults to `Access request for CDN FrontDoor Private Link Origin`.
  final String? requestMessage;
  /// Specifies the type of target for this Private Link Endpoint. Possible values are `blob`, `blob_secondary`, `Gateway`, `managedEnvironments`, `sites`, `web` and `web_secondary`.
  ///
  /// > **Note:** `target_type` cannot be specified when using a Load Balancer as an Origin.
  final String? targetType;

  /// Creates a new [FrontdoorOriginPrivateLink].
  /// [location] Specifies the location where the Private Link resource should exist. Changing this forces a new resource to be created.
  /// [privateLinkTargetId] The ID of the Azure Resource to connect to via the Private Link.
  /// [requestMessage] Specifies the request message that will be submitted to the `private_link_target_id` when requesting the private link endpoint connection. Values must be between `1` and `140` characters in length. Defaults to `Access request for CDN FrontDoor Private Link Origin`.
  /// [targetType] Specifies the type of target for this Private Link Endpoint. Possible values are `blob`, `blob_secondary`, `Gateway`, `managedEnvironments`, `sites`, `web` and `web_secondary`.
  FrontdoorOriginPrivateLink({
    required this.location,
    required this.privateLinkTargetId,
    this.requestMessage,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'privateLinkTargetId': privateLinkTargetId,
      'requestMessage': ?requestMessage,
      'targetType': ?targetType,
    };
  }

  factory FrontdoorOriginPrivateLink.fromMap(Map<String, dynamic> map) {
    return FrontdoorOriginPrivateLink(
      location: map['location'] as String,
      privateLinkTargetId: map['privateLinkTargetId'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
    );
  }
}

