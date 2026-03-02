// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Projection
class ProjectionResponse {
  /// Represents the non-key attribute names which will be projected into the index. For local secondary indexes, the total count of ``NonKeyAttributes`` summed across all of the local secondary indexes, must not exceed 100. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.
  final pulumi.Input<List<String>>? nonKeyAttributes;
  /// The set of attributes that are projected into the index:  +   ``KEYS_ONLY`` - Only the index and primary keys are projected into the index.  +   ``INCLUDE`` - In addition to the attributes described in ``KEYS_ONLY``, the secondary index will include other non-key attributes that you specify.  +   ``ALL`` - All of the table attributes are projected into the index.   When using the DynamoDB console, ``ALL`` is selected by default.
  final pulumi.Input<String>? projectionType;

  /// Creates a new [ProjectionResponse].
  /// [nonKeyAttributes] Represents the non-key attribute names which will be projected into the index. For local secondary indexes, the total count of ``NonKeyAttributes`` summed across all of the local secondary indexes, must not exceed 100. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.
  /// [projectionType] The set of attributes that are projected into the index:  +   ``KEYS_ONLY`` - Only the index and primary keys are projected into the index.  +   ``INCLUDE`` - In addition to the attributes described in ``KEYS_ONLY``, the secondary index will include other non-key attributes that you specify.  +   ``ALL`` - All of the table attributes are projected into the index.   When using the DynamoDB console, ``ALL`` is selected by default.
  ProjectionResponse({
    this.nonKeyAttributes,
    this.projectionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonKeyAttributes': ?nonKeyAttributes,
      'projectionType': ?projectionType,
    };
  }

  factory ProjectionResponse.fromMap(Map<String, dynamic> map) {
    return ProjectionResponse(
      nonKeyAttributes: map['nonKeyAttributes'] == null ? null : ((map['nonKeyAttributes']! as List).cast<String>()).input(),
      projectionType: map['projectionType'] == null ? null : (map['projectionType']! as String).input(),
    );
  }
}

