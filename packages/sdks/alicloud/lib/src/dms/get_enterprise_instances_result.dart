// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enterprise_instances_instance.dart';

/// Result data returned by getEnterpriseInstances.
class GetEnterpriseInstancesResult {
  /// The type of the environment to which the database instance belongs..
  final String? envType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of DMS Enterprise IDs (Each of them consists of host:port).
  final List<String> ids;
  final String? instanceAliasRegex;
  /// The ID of the database instance.
  final String? instanceSource;
  /// The ID of the database instance.
  final String? instanceType;
  /// A list of KMS keys. Each element contains the following attributes:
  final List<GetEnterpriseInstancesInstance> instances;
  final String? nameRegex;
  /// A list of DMS Enterprise names.
  final List<String> names;
  final String? netType;
  final String? outputFile;
  final String? searchKey;
  /// The status of the database instance.
  final String? status;
  final int? tid;

  /// Creates a new [GetEnterpriseInstancesResult].
  /// [envType] The type of the environment to which the database instance belongs..
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of DMS Enterprise IDs (Each of them consists of host:port).
  /// [instanceAliasRegex] Optional.
  /// [instanceSource] The ID of the database instance.
  /// [instanceType] The ID of the database instance.
  /// [instances] A list of KMS keys. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of DMS Enterprise names.
  /// [netType] Optional.
  /// [outputFile] Optional.
  /// [searchKey] Optional.
  /// [status] The status of the database instance.
  /// [tid] Optional.
  GetEnterpriseInstancesResult({
    this.envType,
    required this.id,
    required this.ids,
    this.instanceAliasRegex,
    this.instanceSource,
    this.instanceType,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.netType,
    this.outputFile,
    this.searchKey,
    this.status,
    this.tid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envType': ?envType,
      'id': id,
      'ids': ids,
      'instanceAliasRegex': ?instanceAliasRegex,
      'instanceSource': ?instanceSource,
      'instanceType': ?instanceType,
      'instances': pulumi.Input.encodeList<GetEnterpriseInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'netType': ?netType,
      'outputFile': ?outputFile,
      'searchKey': ?searchKey,
      'status': ?status,
      'tid': ?tid,
    };
  }

  factory GetEnterpriseInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseInstancesResult(
      envType: (() { final guardedValue = map['envType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceAliasRegex: (() { final guardedValue = map['instanceAliasRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceSource: (() { final guardedValue = map['instanceSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: pulumi.Input.decodeList<GetEnterpriseInstancesInstance>(map['instances']!, (value) => GetEnterpriseInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      netType: (() { final guardedValue = map['netType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      searchKey: (() { final guardedValue = map['searchKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tid: (() { final guardedValue = map['tid']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

