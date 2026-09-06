// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_properties.dart';

/// {@template pulumi_billingtrust_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_billingtrust_assessment_args_doc}
class AssessmentArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<AssessmentProperties?>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [AssessmentArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const AssessmentArgs({
    this.properties,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<AssessmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
