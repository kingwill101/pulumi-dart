// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final bool? enableDetails;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of instance IDs.
  final List<String> ids;

  /// A list of instances. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? nameRegex;

  /// A list of instance names.
  final List<String> names;
  final String? outputFile;

  /// The status of the instance. Read [Fields in InstanceVO](https://www.alibabacloud.com/help/doc-detail/106351.html) for further details.
  final int? status;

  /// A map of tags assigned to the Ons instance.
  final Map<String, String>? tags;

  /// Creates a new [GetInstancesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of instance IDs.
  /// [instances] A list of instances. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of instance names.
  /// [outputFile] Optional.
  /// [status] The status of the instance. Read [Fields in InstanceVO](https://www.alibabacloud.com/help/doc-detail/106351.html) for further details.
  /// [tags] A map of tags assigned to the Ons instance.
  GetInstancesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instances':
          pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(
            instances,
            (value) => value.toMap(),
          ),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(
        map['instances']!,
        (value) => GetInstancesInstance.fromMap(
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
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
