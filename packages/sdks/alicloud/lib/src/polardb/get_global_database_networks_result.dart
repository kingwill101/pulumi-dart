// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_database_networks_network.dart';

/// Result data returned by getGlobalDatabaseNetworks.
class GetGlobalDatabaseNetworksResult {
  /// The ID of the PolarDB cluster.
  final String? dbClusterId;
  /// The description of the Global Database Network.
  final String? description;
  /// The ID of the Global Database Network.
  final String? gdnId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of PolarDB Global Database Networks. Each element contains the following attributes:
  final List<GetGlobalDatabaseNetworksNetwork> networks;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The status of the Global Database Network.
  final String? status;

  /// Creates a new [GetGlobalDatabaseNetworksResult].
  /// [dbClusterId] The ID of the PolarDB cluster.
  /// [description] The description of the Global Database Network.
  /// [gdnId] The ID of the Global Database Network.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [networks] A list of PolarDB Global Database Networks. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the Global Database Network.
  const GetGlobalDatabaseNetworksResult({
    this.dbClusterId,
    this.description,
    this.gdnId,
    required this.id,
    required this.ids,
    required this.networks,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': ?dbClusterId,
      'description': ?description,
      'gdnId': ?gdnId,
      'id': id,
      'ids': ids,
      'networks': pulumi.Input.encodeList<GetGlobalDatabaseNetworksNetwork, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetGlobalDatabaseNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalDatabaseNetworksResult(
      dbClusterId: (() { final guardedValue = map['dbClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gdnId: (() { final guardedValue = map['gdnId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      networks: pulumi.Input.decodeList<GetGlobalDatabaseNetworksNetwork>(map['networks']!, (value) => GetGlobalDatabaseNetworksNetwork.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

