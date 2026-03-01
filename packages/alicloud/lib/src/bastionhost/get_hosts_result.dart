// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosts_host.dart';

/// Result data returned by getHosts.
class GetHostsResult {
  final bool? enableDetails;
  final String? hostAddress;
  final String? hostName;
  final List<GetHostsHost> hosts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? osType;
  final String? outputFile;
  final String? source;
  final String? sourceInstanceId;
  final String? sourceInstanceState;

  /// Creates a new [GetHostsResult].
  /// [enableDetails] Optional.
  /// [hostAddress] Optional.
  /// [hostName] Optional.
  /// [hosts] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [osType] Optional.
  /// [outputFile] Optional.
  /// [source] Optional.
  /// [sourceInstanceId] Optional.
  /// [sourceInstanceState] Optional.
  GetHostsResult({
    this.enableDetails,
    this.hostAddress,
    this.hostName,
    required this.hosts,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.osType,
    this.outputFile,
    this.source,
    this.sourceInstanceId,
    this.sourceInstanceState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'hostAddress': ?hostAddress,
      'hostName': ?hostName,
      'hosts': pulumi.Input.encodeList<GetHostsHost, Map<String, dynamic>>(hosts, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'osType': ?osType,
      'outputFile': ?outputFile,
      'source': ?source,
      'sourceInstanceId': ?sourceInstanceId,
      'sourceInstanceState': ?sourceInstanceState,
    };
  }

  factory GetHostsResult.fromMap(Map<String, dynamic> map) {
    return GetHostsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      hostAddress: map['hostAddress'] == null ? null : map['hostAddress'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      hosts: pulumi.Input.decodeList<GetHostsHost>(map['hosts'], (value) => GetHostsHost.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      osType: map['osType'] == null ? null : map['osType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceInstanceId: map['sourceInstanceId'] == null ? null : map['sourceInstanceId'] as String,
      sourceInstanceState: map['sourceInstanceState'] == null ? null : map['sourceInstanceState'] as String,
    );
  }
}

