// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alidns_instances_instance.dart';

/// Result data returned by getAlidnsInstances.
class GetAlidnsInstancesResult {
  final String? domainType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of instance IDs.
  final List<String> ids;
  /// A list of instances. Each element contains the following attributes:
  final List<GetAlidnsInstancesInstance> instances;
  final String? lang;
  final String? outputFile;
  final String? userClientIp;

  /// Creates a new [GetAlidnsInstancesResult].
  /// [domainType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of instance IDs.
  /// [instances] A list of instances. Each element contains the following attributes:
  /// [lang] Optional.
  /// [outputFile] Optional.
  /// [userClientIp] Optional.
  const GetAlidnsInstancesResult({
    this.domainType,
    required this.id,
    required this.ids,
    required this.instances,
    this.lang,
    this.outputFile,
    this.userClientIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainType': ?domainType,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetAlidnsInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'lang': ?lang,
      'outputFile': ?outputFile,
      'userClientIp': ?userClientIp,
    };
  }

  factory GetAlidnsInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetAlidnsInstancesResult(
      domainType: (() { final guardedValue = map['domainType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetAlidnsInstancesInstance>(map['instances']!, (value) => GetAlidnsInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userClientIp: (() { final guardedValue = map['userClientIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

