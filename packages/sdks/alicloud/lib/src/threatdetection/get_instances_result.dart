// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Instance IDs.
  final List<String> ids;

  /// The first ID of the resource
  final String? instanceId;

  /// A list of Instance Entries. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? renewStatus;

  /// Creates a new [GetInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Instance IDs.
  /// [instanceId] The first ID of the resource
  /// [instances] A list of Instance Entries. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [renewStatus] Optional.
  GetInstancesResult({
    required this.id,
    required this.ids,
    this.instanceId,
    required this.instances,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.renewStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'instances':
          pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(
            instances,
            (value) => value.toMap(),
          ),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'renewStatus': ?renewStatus,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(
        map['instances']!,
        (value) => GetInstancesInstance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      renewStatus: (() {
        final guardedValue = map['renewStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
