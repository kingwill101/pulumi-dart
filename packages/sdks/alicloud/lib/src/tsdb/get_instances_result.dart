// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final String? appKey;
  final bool? enableDetails;
  final String? engineType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetInstancesInstance> instances;
  final String? outputFile;
  final String? queryStr;
  final String? status;
  final String? statusList;

  /// Creates a new [GetInstancesResult].
  /// [appKey] Optional.
  /// [enableDetails] Optional.
  /// [engineType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [outputFile] Optional.
  /// [queryStr] Optional.
  /// [status] Optional.
  /// [statusList] Optional.
  GetInstancesResult({
    this.appKey,
    this.enableDetails,
    this.engineType,
    required this.id,
    required this.ids,
    required this.instances,
    this.outputFile,
    this.queryStr,
    this.status,
    this.statusList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appKey': ?appKey,
      'enableDetails': ?enableDetails,
      'engineType': ?engineType,
      'id': id,
      'ids': ids,
      'instances':
          pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(
            instances,
            (value) => value.toMap(),
          ),
      'outputFile': ?outputFile,
      'queryStr': ?queryStr,
      'status': ?status,
      'statusList': ?statusList,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      appKey: (() {
        final guardedValue = map['appKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      engineType: (() {
        final guardedValue = map['engineType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
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
      queryStr: (() {
        final guardedValue = map['queryStr'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      statusList: (() {
        final guardedValue = map['statusList'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
