// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_attachment_connection_endpoint/get_network_attachment_connection_endpoint.dart';

/// Result data returned by getNetworkAttachment.
class GetNetworkAttachmentResult {
  final List<GetNetworkAttachmentConnectionEndpoint> connectionEndpoints;
  final String connectionPreference;
  final String creationTimestamp;
  final String description;
  final String fingerprint;
  final String id;
  final String kind;
  final String name;
  final String network;
  final List<String> producerAcceptLists;
  final List<String> producerRejectLists;
  final String? project;
  final String region;
  final String selfLink;
  final String selfLinkWithId;
  final List<String> subnetworks;

  GetNetworkAttachmentResult({
    required this.connectionEndpoints,
    required this.connectionPreference,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.id,
    required this.kind,
    required this.name,
    required this.network,
    required this.producerAcceptLists,
    required this.producerRejectLists,
    this.project,
    required this.region,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionEndpoints'] = Input.encodeList<
        GetNetworkAttachmentConnectionEndpoint,
        Map<String, dynamic>>(connectionEndpoints, (value) => value.toMap());
    map['connectionPreference'] = connectionPreference;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['id'] = id;
    map['kind'] = kind;
    map['name'] = name;
    map['network'] = network;
    map['producerAcceptLists'] = producerAcceptLists;
    map['producerRejectLists'] = producerRejectLists;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['subnetworks'] = subnetworks;
    return map;
  }

  factory GetNetworkAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentResult(
      connectionEndpoints:
          Input.decodeList<GetNetworkAttachmentConnectionEndpoint>(
              map['connectionEndpoints'],
              (value) => GetNetworkAttachmentConnectionEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      connectionPreference: map['connectionPreference'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      producerAcceptLists: (map['producerAcceptLists'] as List).cast<String>(),
      producerRejectLists: (map['producerRejectLists'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      subnetworks: (map['subnetworks'] as List).cast<String>(),
    );
  }
}
