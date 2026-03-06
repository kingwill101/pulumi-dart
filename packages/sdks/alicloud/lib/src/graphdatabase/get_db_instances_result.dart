// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instances_instance.dart';

/// Result data returned by getDbInstances.
class GetDbInstancesResult {
  final String? dbInstanceDescription;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetDbInstancesInstance> instances;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetDbInstancesResult].
  /// [dbInstanceDescription] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  const GetDbInstancesResult({
    this.dbInstanceDescription,
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instances,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceDescription': ?dbInstanceDescription,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetDbInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDbInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetDbInstancesResult(
      dbInstanceDescription: (() { final guardedValue = map['dbInstanceDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetDbInstancesInstance>(map['instances']!, (value) => GetDbInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

