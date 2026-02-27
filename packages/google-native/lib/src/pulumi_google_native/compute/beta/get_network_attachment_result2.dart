// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'network_attachment_connected_endpoint_response2.dart';

/// Result data returned by getNetworkAttachment.
class GetNetworkAttachmentResult2 {
  /// An array of connections for all the producers connected to this network attachment.
  final List<NetworkAttachmentConnectedEndpointResponse2> connectionEndpoints;
  final String connectionPreference;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. An up-to-date fingerprint must be provided in order to patch.
  final String fingerprint;

  /// Type of the resource.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated. Because it is required that all the subnetworks must be from the same network, it is assured that the Network Attachment belongs to the same network as all the subnetworks.
  final String network;

  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  final List<String> producerAcceptLists;

  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  final List<String> producerRejectLists;

  /// URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL for this resource's resource id.
  final String selfLinkWithId;

  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  final List<String> subnetworks;

  GetNetworkAttachmentResult2({
    required this.connectionEndpoints,
    required this.connectionPreference,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.kind,
    required this.name,
    required this.network,
    required this.producerAcceptLists,
    required this.producerRejectLists,
    required this.region,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionEndpoints'] = Input.encodeList<
        NetworkAttachmentConnectedEndpointResponse2,
        Map<String, dynamic>>(connectionEndpoints, (value) => value.toMap());
    map['connectionPreference'] = connectionPreference;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['kind'] = kind;
    map['name'] = name;
    map['network'] = network;
    map['producerAcceptLists'] = producerAcceptLists;
    map['producerRejectLists'] = producerRejectLists;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['subnetworks'] = subnetworks;
    return map;
  }

  factory GetNetworkAttachmentResult2.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentResult2(
      connectionEndpoints:
          Input.decodeList<NetworkAttachmentConnectedEndpointResponse2>(
              map['connectionEndpoints'],
              (value) => NetworkAttachmentConnectedEndpointResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      connectionPreference: map['connectionPreference'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      producerAcceptLists: (map['producerAcceptLists'] as List).cast<String>(),
      producerRejectLists: (map['producerRejectLists'] as List).cast<String>(),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      subnetworks: (map['subnetworks'] as List).cast<String>(),
    );
  }
}
