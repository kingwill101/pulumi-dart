// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetInstancesInstance> instances;
  final String? outputFile;
  final String? paymentType;

  /// Creates a new [GetInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instances] Required.
  /// [outputFile] Optional.
  /// [paymentType] Optional.
  const GetInstancesResult({
    required this.id,
    required this.instances,
    this.outputFile,
    this.paymentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      id: map['id'] as String,
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances']!, (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

