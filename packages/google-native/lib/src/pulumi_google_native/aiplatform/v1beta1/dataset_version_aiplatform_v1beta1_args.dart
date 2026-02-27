// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DatasetVersion.
class DatasetVersionAiplatformV1beta1Args {
  final pulumi.Input<String> datasetId;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  DatasetVersionAiplatformV1beta1Args({
    required this.datasetId,
    this.etag,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DatasetVersionAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return DatasetVersionAiplatformV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
