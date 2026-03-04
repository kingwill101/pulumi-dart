// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketUserDefinedLogFields resources.
class BucketUserDefinedLogFieldsState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;

  /// Container for custom request header configuration information.
  final pulumi.Input<List<String>>? headerSets;

  /// Container for custom request parameters configuration information.
  final pulumi.Input<List<String>>? paramSets;

  /// Creates a new [BucketUserDefinedLogFieldsState].
  /// [bucket] The name of the bucket.
  /// [headerSets] Container for custom request header configuration information.
  /// [paramSets] Container for custom request parameters configuration information.
  BucketUserDefinedLogFieldsState({
    this.bucket,
    this.headerSets,
    this.paramSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'headerSets': ?headerSets,
      'paramSets': ?paramSets,
    };
  }

  factory BucketUserDefinedLogFieldsState.fromMap(Map<String, dynamic> map) {
    return BucketUserDefinedLogFieldsState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      headerSets: (() {
        final guardedValue = map['headerSets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      paramSets: (() {
        final guardedValue = map['paramSets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
