// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceCollectionTag {
  /// An AWS tag key that is used to identify the AWS resources that DevOps Guru analyzes.
  final pulumi.Input<String> appBoundaryKey;
  /// Array of tag values.
  final pulumi.Input<List<String>> tagValues;

  /// Creates a new [GetResourceCollectionTag].
  /// [appBoundaryKey] An AWS tag key that is used to identify the AWS resources that DevOps Guru analyzes.
  /// [tagValues] Array of tag values.
  GetResourceCollectionTag({
    required this.appBoundaryKey,
    required this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBoundaryKey': appBoundaryKey,
      'tagValues': tagValues,
    };
  }

  factory GetResourceCollectionTag.fromMap(Map<String, dynamic> map) {
    return GetResourceCollectionTag(
      appBoundaryKey: (map['appBoundaryKey'] as String).input(),
      tagValues: ((map['tagValues'] as List).cast<String>()).input(),
    );
  }
}

