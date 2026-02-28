// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metadata.dart';
import 'get_service_status.dart';
import 'get_service_template.dart';
import 'get_service_traffic.dart';

/// Result data returned by getService.
class GetServiceResult {
  final bool autogenerateRevisionName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final List<GetServiceMetadata> metadatas;
  final String name;
  final String? project;
  final List<GetServiceStatus> statuses;
  final List<GetServiceTemplate> templates;
  final List<GetServiceTraffic> traffics;

  /// Creates a new [GetServiceResult].
  /// [autogenerateRevisionName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [metadatas] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [statuses] Required.
  /// [templates] Required.
  /// [traffics] Required.
  GetServiceResult({
    required this.autogenerateRevisionName,
    required this.id,
    required this.location,
    required this.metadatas,
    required this.name,
    this.project,
    required this.statuses,
    required this.templates,
    required this.traffics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autogenerateRevisionName'] = autogenerateRevisionName;
    map['id'] = id;
    map['location'] = location;
    map['metadatas'] =
        pulumi.Input.encodeList<GetServiceMetadata, Map<String, dynamic>>(
            metadatas, (value) => value.toMap());
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['statuses'] =
        pulumi.Input.encodeList<GetServiceStatus, Map<String, dynamic>>(
            statuses, (value) => value.toMap());
    map['templates'] =
        pulumi.Input.encodeList<GetServiceTemplate, Map<String, dynamic>>(
            templates, (value) => value.toMap());
    map['traffics'] =
        pulumi.Input.encodeList<GetServiceTraffic, Map<String, dynamic>>(
            traffics, (value) => value.toMap());
    return map;
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      autogenerateRevisionName: map['autogenerateRevisionName'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      metadatas: pulumi.Input.decodeList<GetServiceMetadata>(
          map['metadatas'],
          (value) => GetServiceMetadata.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      statuses: pulumi.Input.decodeList<GetServiceStatus>(
          map['statuses'],
          (value) =>
              GetServiceStatus.fromMap((value as Map).cast<String, dynamic>())),
      templates: pulumi.Input.decodeList<GetServiceTemplate>(
          map['templates'],
          (value) => GetServiceTemplate.fromMap(
              (value as Map).cast<String, dynamic>())),
      traffics: pulumi.Input.decodeList<GetServiceTraffic>(
          map['traffics'],
          (value) => GetServiceTraffic.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
