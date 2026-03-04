// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ddos_bgp_instances_instance.dart';

/// Result data returned by getDdosBgpInstances.
class GetDdosBgpInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of instance IDs.
  final List<String> ids;

  /// A list of apis. Each element contains the following attributes:
  final List<GetDdosBgpInstancesInstance> instances;
  final String? nameRegex;

  /// A list of instance names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetDdosBgpInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of instance IDs.
  /// [instances] A list of apis. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of instance names.
  /// [outputFile] Optional.
  GetDdosBgpInstancesResult({
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
      'instances':
          pulumi.Input.encodeList<
            GetDdosBgpInstancesInstance,
            Map<String, dynamic>
          >(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetDdosBgpInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetDdosBgpInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetDdosBgpInstancesInstance>(
        map['instances']!,
        (value) => GetDdosBgpInstancesInstance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
