// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_instances_instance.dart';

/// Result data returned by getStackInstances.
class GetStackInstancesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetStackInstancesInstance> instances;
  final String? outputFile;
  final String stackGroupName;
  final String? stackInstanceAccountId;
  final String? stackInstanceRegionId;
  final String? status;

  /// Creates a new [GetStackInstancesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [outputFile] Optional.
  /// [stackGroupName] Required.
  /// [stackInstanceAccountId] Optional.
  /// [stackInstanceRegionId] Optional.
  /// [status] Optional.
  GetStackInstancesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instances,
    this.outputFile,
    required this.stackGroupName,
    this.stackInstanceAccountId,
    this.stackInstanceRegionId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetStackInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'stackGroupName': stackGroupName,
      'stackInstanceAccountId': ?stackInstanceAccountId,
      'stackInstanceRegionId': ?stackInstanceRegionId,
      'status': ?status,
    };
  }

  factory GetStackInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetStackInstancesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetStackInstancesInstance>(map['instances'], (value) => GetStackInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      stackGroupName: map['stackGroupName'] as String,
      stackInstanceAccountId: map['stackInstanceAccountId'] == null ? null : map['stackInstanceAccountId'] as String,
      stackInstanceRegionId: map['stackInstanceRegionId'] == null ? null : map['stackInstanceRegionId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

