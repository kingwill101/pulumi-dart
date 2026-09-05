// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobInputConfigDataAttributes {
  /// Declares that your content is free of personally identifiable information or adult content. Valid values: `FreeOfPersonallyIdentifiableInformation`, `FreeOfAdultContent`.
  final pulumi.Input<List<String>?>? contentClassifiers;

  /// Creates a new [LabelingJobInputConfigDataAttributes].
  /// [contentClassifiers] Declares that your content is free of personally identifiable information or adult content. Valid values: `FreeOfPersonallyIdentifiableInformation`, `FreeOfAdultContent`.
  const LabelingJobInputConfigDataAttributes({
    this.contentClassifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentClassifiers': ?contentClassifiers,
    };
  }

  factory LabelingJobInputConfigDataAttributes.fromMap(Map<String, dynamic> map) {
    return LabelingJobInputConfigDataAttributes(
      contentClassifiers: (() { final guardedValue = map['contentClassifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
