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
  const GetHostsResult({
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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostAddress: (() { final guardedValue = map['hostAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hosts: pulumi.Input.decodeList<GetHostsHost>(map['hosts']!, (value) => GetHostsHost.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstanceId: (() { final guardedValue = map['sourceInstanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstanceState: (() { final guardedValue = map['sourceInstanceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

