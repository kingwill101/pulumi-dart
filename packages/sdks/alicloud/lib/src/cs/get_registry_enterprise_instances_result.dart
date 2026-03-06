// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_enterprise_instances_instance.dart';

/// Result data returned by getRegistryEnterpriseInstances.
class GetRegistryEnterpriseInstancesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of matched Container Registry Enterprise Edition instances. Its element is an instance uuid.
  final List<String> ids;
  /// A list of matched Container Registry Enterprise Editioninstances. Each element contains the following attributes:
  final List<GetRegistryEnterpriseInstancesInstance> instances;
  final String? nameRegex;
  /// A list of instance names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetRegistryEnterpriseInstancesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of matched Container Registry Enterprise Edition instances. Its element is an instance uuid.
  /// [instances] A list of matched Container Registry Enterprise Editioninstances. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of instance names.
  /// [outputFile] Optional.
  const GetRegistryEnterpriseInstancesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetRegistryEnterpriseInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetRegistryEnterpriseInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseInstancesResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetRegistryEnterpriseInstancesInstance>(map['instances']!, (value) => GetRegistryEnterpriseInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

