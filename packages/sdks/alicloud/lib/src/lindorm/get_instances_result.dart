// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? queryStr;
  final String? status;
  final int? supportEngine;

  /// Creates a new [GetInstancesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [queryStr] Optional.
  /// [status] Optional.
  /// [supportEngine] Optional.
  GetInstancesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.queryStr,
    this.status,
    this.supportEngine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'queryStr': ?queryStr,
      'status': ?status,
      'supportEngine': ?supportEngine,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      queryStr: map['queryStr'] == null ? null : map['queryStr'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      supportEngine: map['supportEngine'] == null ? null : map['supportEngine'] as int,
    );
  }
}

