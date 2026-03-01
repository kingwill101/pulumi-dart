// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nest_service_instances_filter.dart';
import 'get_nest_service_instances_service_instance.dart';

/// Result data returned by getNestServiceInstances.
class GetNestServiceInstancesResult {
  final List<GetNestServiceInstancesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Service Instance names.
  final List<String> names;
  final String? outputFile;
  /// A list of Service Instances. Each element contains the following attributes:
  final List<GetNestServiceInstancesServiceInstance> serviceInstances;
  /// The status of the Service Instance.
  final String? status;
  /// The tag of the Service Instance.
  final Map<String, String>? tags;

  /// Creates a new [GetNestServiceInstancesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Service Instance names.
  /// [outputFile] Optional.
  /// [serviceInstances] A list of Service Instances. Each element contains the following attributes:
  /// [status] The status of the Service Instance.
  /// [tags] The tag of the Service Instance.
  GetNestServiceInstancesResult({
    this.filters,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.serviceInstances,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetNestServiceInstancesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'serviceInstances': pulumi.Input.encodeList<GetNestServiceInstancesServiceInstance, Map<String, dynamic>>(serviceInstances, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetNestServiceInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetNestServiceInstancesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNestServiceInstancesFilter>(map['filters'], (value) => GetNestServiceInstancesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      serviceInstances: pulumi.Input.decodeList<GetNestServiceInstancesServiceInstance>(map['serviceInstances'], (value) => GetNestServiceInstancesServiceInstance.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

