// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_advisor_suppression_args_doc}
/// The set of arguments for Suppression.
/// {@endtemplate}
/// {@macro pulumi_advisor_suppression_args_doc}
class SuppressionArgs {
  /// The name of the suppression.
  final pulumi.Input<String>? name;
  /// The recommendation ID.
  final pulumi.Input<String> recommendationId;
  /// The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies.
  final pulumi.Input<String> resourceUri;
  /// The GUID of the suppression.
  final pulumi.Input<String>? suppressionId;
  /// The duration for which the suppression is valid.
  final pulumi.Input<String>? ttl;

  /// Creates a new [SuppressionArgs].
  /// [name] The name of the suppression.
  /// [recommendationId] The recommendation ID.
  /// [resourceUri] The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies.
  /// [suppressionId] The GUID of the suppression.
  /// [ttl] The duration for which the suppression is valid.
  SuppressionArgs({
    String? name,
    required String recommendationId,
    required String resourceUri,
    String? suppressionId,
    String? ttl,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recommendationId = pulumi.Input.asInput<String>(recommendationId),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      suppressionId = pulumi.Input.asOptionalInput<String>(suppressionId),
      ttl = pulumi.Input.asOptionalInput<String>(ttl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recommendationId': recommendationId,
      'resourceUri': resourceUri,
      'suppressionId': ?suppressionId,
      'ttl': ?ttl,
    };
  }

  factory SuppressionArgs.fromMap(Map<String, dynamic> map) {
    return SuppressionArgs(
      name: map['name'] == null ? null : map['name'] as String,
      recommendationId: map['recommendationId'] as String,
      resourceUri: map['resourceUri'] as String,
      suppressionId: map['suppressionId'] == null ? null : map['suppressionId'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
    );
  }
}

