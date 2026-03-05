// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Optional) A list of WAF instance IDs.
  final List<String> ids;
  final String? instanceSource;
  /// A list of WAF instances. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? outputFile;
  final String? resourceGroupId;
  /// Indicates whether the WAF instance has expired.
  final int? status;

  /// Creates a new [GetInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] (Optional) A list of WAF instance IDs.
  /// [instanceSource] Optional.
  /// [instances] A list of WAF instances. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [status] Indicates whether the WAF instance has expired.
  GetInstancesResult({
    required this.id,
    required this.ids,
    this.instanceSource,
    required this.instances,
    this.outputFile,
    this.resourceGroupId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceSource': ?instanceSource,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceSource: (() { final guardedValue = map['instanceSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances']!, (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

