// ignore_for_file: unused_element, unnecessary_cast

import 'identity_details_response.dart';
import 'job_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the resource identifier of the job.
  final String id;
  /// Specifies the job identity details
  final IdentityDetailsResponse? identity;
  /// Specifies the Azure location where the job is created.
  final String? location;
  /// Specifies the name of the job.
  final String name;
  /// Specifies the job properties
  final JobDetailsResponse properties;
  /// SystemData of ImportExport Jobs.
  final SystemDataResponse systemData;
  /// Specifies the tags that are assigned to the job.
  final dynamic tags;
  /// Specifies the type of the job resource.
  final String type;

  /// Creates a new [GetJobResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Specifies the resource identifier of the job.
  /// [identity] Specifies the job identity details
  /// [location] Specifies the Azure location where the job is created.
  /// [name] Specifies the name of the job.
  /// [properties] Specifies the job properties
  /// [systemData] SystemData of ImportExport Jobs.
  /// [tags] Specifies the tags that are assigned to the job.
  /// [type] Specifies the type of the job resource.
  GetJobResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityDetailsResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: JobDetailsResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : map['tags'],
      type: map['type'] as String,
    );
  }
}

