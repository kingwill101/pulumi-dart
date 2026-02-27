// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Dataset.
class DatasetHealthcareV1beta1Args {
  /// The ID of the dataset that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  final pulumi.Input<String>? datasetId;
  final pulumi.Input<String>? location;

  /// Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  final pulumi.Input<String>? timeZone;

  DatasetHealthcareV1beta1Args({
    this.datasetId,
    this.location,
    this.name,
    this.project,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetIdValue = datasetId;
    if (datasetIdValue != null) {
      map['datasetId'] = datasetIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory DatasetHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return DatasetHealthcareV1beta1Args(
      datasetId: pulumi.Input.asOptionalInput<String>(map['datasetId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
