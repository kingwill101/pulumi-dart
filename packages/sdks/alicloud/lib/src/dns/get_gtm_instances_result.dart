// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gtm_instances_instance.dart';

/// Result data returned by getGtmInstances.
class GetGtmInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetGtmInstancesInstance> instances;
  final String? lang;
  final String outputFile;
  final String? resourceGroupId;

  /// Creates a new [GetGtmInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [lang] Optional.
  /// [outputFile] Required.
  /// [resourceGroupId] Optional.
  GetGtmInstancesResult({
    required this.id,
    required this.ids,
    required this.instances,
    this.lang,
    required this.outputFile,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetGtmInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'lang': ?lang,
      'outputFile': outputFile,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetGtmInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetGtmInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetGtmInstancesInstance>(map['instances']!, (value) => GetGtmInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: map['outputFile'] as String,
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

