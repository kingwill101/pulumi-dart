// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final String? availabilityZone;
  final String? dbInstanceCategories;
  final String? dbInstanceModes;
  final String? description;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceNetworkType;
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? resourceGroupId;
  final String? status;
  final Map<String, String>? tags;
  final String? vswitchId;

  /// Creates a new [GetInstancesResult].
  /// [availabilityZone] Optional.
  /// [dbInstanceCategories] Optional.
  /// [dbInstanceModes] Optional.
  /// [description] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceNetworkType] Optional.
  /// [instances] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [vswitchId] Optional.
  GetInstancesResult({
    this.availabilityZone,
    this.dbInstanceCategories,
    this.dbInstanceModes,
    this.description,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.instanceNetworkType,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'dbInstanceCategories': ?dbInstanceCategories,
      'dbInstanceModes': ?dbInstanceModes,
      'description': ?description,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceNetworkType': ?instanceNetworkType,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstanceCategories: (() { final guardedValue = map['dbInstanceCategories']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstanceModes: (() { final guardedValue = map['dbInstanceModes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceNetworkType: (() { final guardedValue = map['instanceNetworkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances']!, (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

