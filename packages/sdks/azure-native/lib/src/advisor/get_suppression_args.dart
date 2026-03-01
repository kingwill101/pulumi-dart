// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_advisor_get_suppression_args_doc}
/// Arguments for getSuppression.
/// {@endtemplate}
/// {@macro pulumi_advisor_get_suppression_args_doc}
class GetSuppressionArgs {
  /// The name of the suppression.
  final pulumi.Input<String> name;
  /// The recommendation ID.
  final pulumi.Input<String> recommendationId;
  /// The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetSuppressionArgs].
  /// [name] The name of the suppression.
  /// [recommendationId] The recommendation ID.
  /// [resourceUri] The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies.
  GetSuppressionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> recommendationId,
    required pulumi.Output<String> resourceUri,
  }) :
      name = pulumi.Input.asInput<String>(name),
      recommendationId = pulumi.Input.asInput<String>(recommendationId),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recommendationId': recommendationId,
      'resourceUri': resourceUri,
    };
  }

  factory GetSuppressionArgs.fromMap(Map<String, dynamic> map) {
    return GetSuppressionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      recommendationId: pulumi.Output.create<String>(map['recommendationId'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

