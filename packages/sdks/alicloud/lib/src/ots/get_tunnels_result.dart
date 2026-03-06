// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tunnels_tunnel.dart';

/// Result data returned by getTunnels.
class GetTunnelsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of tunnel IDs.
  final List<String> ids;
  /// The OTS instance name.
  final String instanceName;
  final String? nameRegex;
  /// A list of tunnel names.
  final List<String> names;
  final String? outputFile;
  /// The table name of the OTS which could not be changed.
  final String tableName;
  /// A list of tunnels. Each element contains the following attributes:
  final List<GetTunnelsTunnel> tunnels;

  /// Creates a new [GetTunnelsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of tunnel IDs.
  /// [instanceName] The OTS instance name.
  /// [nameRegex] Optional.
  /// [names] A list of tunnel names.
  /// [outputFile] Optional.
  /// [tableName] The table name of the OTS which could not be changed.
  /// [tunnels] A list of tunnels. Each element contains the following attributes:
  const GetTunnelsResult({
    required this.id,
    required this.ids,
    required this.instanceName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.tableName,
    required this.tunnels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tableName': tableName,
      'tunnels': pulumi.Input.encodeList<GetTunnelsTunnel, Map<String, dynamic>>(tunnels, (value) => value.toMap()),
    };
  }

  factory GetTunnelsResult.fromMap(Map<String, dynamic> map) {
    return GetTunnelsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceName: map['instanceName'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableName: map['tableName'] as String,
      tunnels: pulumi.Input.decodeList<GetTunnelsTunnel>(map['tunnels']!, (value) => GetTunnelsTunnel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

