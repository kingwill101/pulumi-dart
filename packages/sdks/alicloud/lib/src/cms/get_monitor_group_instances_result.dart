// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_group_instances_instance.dart';

/// Result data returned by getMonitorGroupInstances.
class GetMonitorGroupInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ids;
  final List<GetMonitorGroupInstancesInstance> instances;
  final String? keyword;
  final String? outputFile;

  /// Creates a new [GetMonitorGroupInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [keyword] Optional.
  /// [outputFile] Optional.
  const GetMonitorGroupInstancesResult({
    required this.id,
    required this.ids,
    required this.instances,
    this.keyword,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetMonitorGroupInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'keyword': ?keyword,
      'outputFile': ?outputFile,
    };
  }

  factory GetMonitorGroupInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupInstancesResult(
      id: map['id'] as String,
      ids: map['ids'] as String,
      instances: pulumi.Input.decodeList<GetMonitorGroupInstancesInstance>(map['instances']!, (value) => GetMonitorGroupInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

