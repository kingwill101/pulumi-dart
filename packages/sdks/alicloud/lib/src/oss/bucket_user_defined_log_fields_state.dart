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
    pulumi.Output<String>? bucket,
    pulumi.Output<List<String>>? headerSets,
    pulumi.Output<List<String>>? paramSets,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      headerSets = pulumi.Input.asOptionalInput<List<String>>(headerSets),
      paramSets = pulumi.Input.asOptionalInput<List<String>>(paramSets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'headerSets': ?headerSets,
      'paramSets': ?paramSets,
    };
  }

  factory BucketUserDefinedLogFieldsState.fromMap(Map<String, dynamic> map) {
    return BucketUserDefinedLogFieldsState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      headerSets: map['headerSets'] == null ? null : pulumi.Output.create<List<String>>((map['headerSets'] as List).cast<String>()),
      paramSets: map['paramSets'] == null ? null : pulumi.Output.create<List<String>>((map['paramSets'] as List).cast<String>()),
    );
  }
}

