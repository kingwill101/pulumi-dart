// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ddos_coo_instances_instance.dart';

/// Result data returned by getDdosCooInstances.
class GetDdosCooInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of apis. Each element contains the following attributes:
  final List<GetDdosCooInstancesInstance> instances;
  final String? nameRegex;
  /// A list of instance names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetDdosCooInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] A list of apis. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of instance names.
  /// [outputFile] Optional.
  GetDdosCooInstancesResult({
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetDdosCooInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetDdosCooInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetDdosCooInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetDdosCooInstancesInstance>(map['instances'], (value) => GetDdosCooInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

