// ignore_for_file: unused_element, unnecessary_cast

class RecorderRecordingModeRecordingModeOverride {
  /// A description you provide of the override.
  final String? description;

  /// The recording frequency for the resources in the override block. `CONTINUOUS` or `DAILY`.
  final String recordingFrequency;

  /// A list that specifies the types of AWS resources for which the override applies to.  See [restrictions in the AWS Docs](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingModeOverride.html)
  final List<String> resourceTypes;

  RecorderRecordingModeRecordingModeOverride({
    this.description,
    required this.recordingFrequency,
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['recordingFrequency'] = recordingFrequency;
    map['resourceTypes'] = resourceTypes;
    return map;
  }

  factory RecorderRecordingModeRecordingModeOverride.fromMap(
      Map<String, dynamic> map) {
    return RecorderRecordingModeRecordingModeOverride(
      description:
          map['description'] == null ? null : map['description'] as String,
      recordingFrequency: map['recordingFrequency'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
