// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_input_properties.dart';

/// The set of arguments for Input.
class InputArgsType {
  /// The name of the input.
  final pulumi.Input<String>? inputName;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// Resource name
  final pulumi.Input<String>? name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<ReferenceInputProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [InputArgsType].
  /// [inputName] The name of the input.
  /// [jobName] The name of the streaming job.
  /// [name] Resource name
  /// [properties] The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  InputArgsType({
    String? inputName,
    required String jobName,
    String? name,
    ReferenceInputProperties? properties,
    required String resourceGroupName,
  }) :
      inputName = pulumi.Input.asOptionalInput<String>(inputName),
      jobName = pulumi.Input.asInput<String>(jobName),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<ReferenceInputProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputName': ?inputName,
      'jobName': jobName,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ReferenceInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory InputArgsType.fromMap(Map<String, dynamic> map) {
    return InputArgsType(
      inputName: map['inputName'] == null ? null : map['inputName'] as String,
      jobName: map['jobName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : ReferenceInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

