// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_get_global_database_networks_get_global_database_networks_args_doc}
/// Arguments for getGlobalDatabaseNetworks.
/// {@endtemplate}
/// {@macro pulumi_polardb_get_global_database_networks_get_global_database_networks_args_doc}
class GetGlobalDatabaseNetworksArgs {
  /// The ID of the cluster.
  final pulumi.Input<String>? dbClusterId;
  /// The description of the Global Database Network.
  final pulumi.Input<String>? description;
  /// The ID of the Global Database Network.
  final pulumi.Input<String>? gdnId;
  /// A list of Global Database Network IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The status of the Global Database Network. Valid values:
  final pulumi.Input<String>? status;

  /// Creates a new [GetGlobalDatabaseNetworksArgs].
  /// [dbClusterId] The ID of the cluster.
  /// [description] The description of the Global Database Network.
  /// [gdnId] The ID of the Global Database Network.
  /// [ids] A list of Global Database Network IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the Global Database Network. Valid values:
  GetGlobalDatabaseNetworksArgs({
    String? dbClusterId,
    String? description,
    String? gdnId,
    List<String>? ids,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? status,
  }) :
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      description = pulumi.Input.asOptionalInput<String>(description),
      gdnId = pulumi.Input.asOptionalInput<String>(gdnId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': ?dbClusterId,
      'description': ?description,
      'gdnId': ?gdnId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetGlobalDatabaseNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalDatabaseNetworksArgs(
      dbClusterId: map['dbClusterId'] == null ? null : map['dbClusterId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      gdnId: map['gdnId'] == null ? null : map['gdnId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

