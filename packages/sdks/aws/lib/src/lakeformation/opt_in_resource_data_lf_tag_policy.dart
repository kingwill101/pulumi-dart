// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataLfTagPolicy {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// If provided, permissions are granted to the Data Catalog resources whose assigned LF-Tags match the expression body of the saved expression under the provided ExpressionName .
  final pulumi.Input<String>? expressionName;
  /// List of LF-tag conditions or a saved expression that apply to the resource's LF-Tag policy.
  final pulumi.Input<List<String>>? expressions;
  /// Resource type for which the LF-tag policy applies.
  final pulumi.Input<String> resourceType;

  /// Creates a new [OptInResourceDataLfTagPolicy].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [expressionName] If provided, permissions are granted to the Data Catalog resources whose assigned LF-Tags match the expression body of the saved expression under the provided ExpressionName .
  /// [expressions] List of LF-tag conditions or a saved expression that apply to the resource's LF-Tag policy.
  /// [resourceType] Resource type for which the LF-tag policy applies.
  const OptInResourceDataLfTagPolicy({
    this.catalogId,
    this.expressionName,
    this.expressions,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'expressionName': ?expressionName,
      'expressions': ?expressions,
      'resourceType': resourceType,
    };
  }

  factory OptInResourceDataLfTagPolicy.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataLfTagPolicy(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressionName: (() { final guardedValue = map['expressionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressions: (() { final guardedValue = map['expressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

