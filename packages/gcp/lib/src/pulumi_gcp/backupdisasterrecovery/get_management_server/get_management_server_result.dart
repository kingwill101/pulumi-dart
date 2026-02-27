// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_management_server_management_uri/get_management_server_management_uri.dart';
import '../get_management_server_network/get_management_server_network.dart';

/// Result data returned by getManagementServer.
class GetManagementServerResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final List<GetManagementServerManagementUri> managementUris;
  final String name;
  final List<GetManagementServerNetwork> networks;
  final String oauth2ClientId;
  final String project;
  final String type;

  GetManagementServerResult({
    required this.id,
    required this.location,
    required this.managementUris,
    required this.name,
    required this.networks,
    required this.oauth2ClientId,
    required this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['location'] = location;
    map['managementUris'] = pulumi.Input.encodeList<
        GetManagementServerManagementUri,
        Map<String, dynamic>>(managementUris, (value) => value.toMap());
    map['name'] = name;
    map['networks'] = pulumi.Input.encodeList<GetManagementServerNetwork,
        Map<String, dynamic>>(networks, (value) => value.toMap());
    map['oauth2ClientId'] = oauth2ClientId;
    map['project'] = project;
    map['type'] = type;
    return map;
  }

  factory GetManagementServerResult.fromMap(Map<String, dynamic> map) {
    return GetManagementServerResult(
      id: map['id'] as String,
      location: map['location'] as String,
      managementUris: pulumi.Input.decodeList<GetManagementServerManagementUri>(
          map['managementUris'],
          (value) => GetManagementServerManagementUri.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<GetManagementServerNetwork>(
          map['networks'],
          (value) => GetManagementServerNetwork.fromMap(
              (value as Map).cast<String, dynamic>())),
      oauth2ClientId: map['oauth2ClientId'] as String,
      project: map['project'] as String,
      type: map['type'] as String,
    );
  }
}
