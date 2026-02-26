// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResourceCollection.
class GetResourceCollectionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  final Input<String> type;

  GetResourceCollectionArgs({
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetResourceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceCollectionArgs(
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
