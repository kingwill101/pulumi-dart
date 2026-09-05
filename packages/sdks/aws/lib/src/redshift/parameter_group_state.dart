// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// Input properties used for looking up and filtering ParameterGroup resources.
class ParameterGroupState {
  /// ARN of parameter group
  final pulumi.Input<String?>? arn;
  /// The description of the Redshift parameter group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String?>? description;
  /// The family of the Redshift parameter group.
  final pulumi.Input<String?>? family;
  /// The name of the Redshift parameter.
  final pulumi.Input<String?>? name;
  /// A list of Redshift parameters to apply.
  final pulumi.Input<List<ParameterGroupParameter>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// You can read more about the parameters that Redshift supports in the [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ParameterGroupState].
  /// [arn] ARN of parameter group
  /// [description] The description of the Redshift parameter group. Defaults to "Managed by Pulumi".
  /// [family] The family of the Redshift parameter group.
  /// [name] The name of the Redshift parameter.
  /// [parameters] A list of Redshift parameters to apply.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  ParameterGroupState({
    this.arn,
    pulumi.Input<String?>? description,
    this.family,
    this.name,
    this.parameters,
    this.region,
    this.tags,
    this.tagsAll,
  }) : description = description ?? pulumi.Input.fromValue('Managed by Pulumi');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'family': ?family,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ParameterGroupState.fromMap(Map<String, dynamic> map) {
    return ParameterGroupState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
