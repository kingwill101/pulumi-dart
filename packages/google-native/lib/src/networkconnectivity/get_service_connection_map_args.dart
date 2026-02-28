// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_connection_map_args_doc}
/// Arguments for getServiceConnectionMap.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_connection_map_args_doc}
class GetServiceConnectionMapArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionMapId;

  /// Creates a new [GetServiceConnectionMapArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceConnectionMapId] Required.
  GetServiceConnectionMapArgs({
    required String location,
    String? project,
    required String serviceConnectionMapId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceConnectionMapId =
            pulumi.Input.asInput<String>(serviceConnectionMapId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceConnectionMapId'] = serviceConnectionMapId;
    return map;
  }

  factory GetServiceConnectionMapArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionMapArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceConnectionMapId: map['serviceConnectionMapId'] as String,
    );
  }
}
