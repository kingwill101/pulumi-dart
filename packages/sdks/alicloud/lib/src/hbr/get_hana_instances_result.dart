// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hana_instances_instance.dart';

/// Result data returned by getHanaInstances.
class GetHanaInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetHanaInstancesInstance> instances;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? status;
  final String? vaultId;

  /// Creates a new [GetHanaInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] Optional.
  /// [vaultId] Optional.
  GetHanaInstancesResult({
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetHanaInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'vaultId': ?vaultId,
    };
  }

  factory GetHanaInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetHanaInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetHanaInstancesInstance>(map['instances'], (value) => GetHanaInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      status: map['status'] == null ? null : map['status']! as String,
      vaultId: map['vaultId'] == null ? null : map['vaultId']! as String,
    );
  }
}

