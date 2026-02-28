// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_dataset_healthcare_v1beta1_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_dataset_healthcare_v1beta1_args_doc}
class DatasetHealthcareV1beta1Args {
  /// The ID of the dataset that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  final pulumi.Input<String>? datasetId;
  final pulumi.Input<String>? location;
  /// Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [DatasetHealthcareV1beta1Args].
  /// [datasetId] The ID of the dataset that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  /// [location] Optional.
  /// [name] Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// [project] Optional.
  /// [timeZone] The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  DatasetHealthcareV1beta1Args({
    String? datasetId,
    String? location,
    String? name,
    String? project,
    String? timeZone,
  }) :
      datasetId = pulumi.Input.asOptionalInput<String>(datasetId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'timeZone': ?timeZone,
    };
  }

  factory DatasetHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return DatasetHealthcareV1beta1Args(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

