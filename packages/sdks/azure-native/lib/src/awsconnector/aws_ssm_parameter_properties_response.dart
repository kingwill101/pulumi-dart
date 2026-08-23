// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsSsmParameter
class AwsSsmParameterPropertiesResponse {
  /// A regular expression used to validate the parameter value. For example, for ``String`` types with values restricted to numbers, you can specify the following: ``AllowedPattern=^\d+$``
  final pulumi.Input<String>? allowedPattern;
  /// The data type of the parameter, such as ``text`` or ``aws:ec2:image``. The default is ``text``.
  final pulumi.Input<String>? dataType;
  /// Information about the parameter.
  final pulumi.Input<String>? description;
  /// The name of the parameter.  The maximum length constraint listed below includes capacity for additional system attributes that aren't part of the name. The maximum length for a parameter name, including the full length of the parameter Amazon Resource Name (ARN), is 1011 characters. For example, the length of the following parameter name is 65 characters, not 20 characters: ``arn:aws:ssm:us-east-2:111222333444:parameter/ExampleParameterName``
  final pulumi.Input<String>? name;
  /// Information about the policies assigned to a parameter.  [Assigning parameter policies](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html) in the *User Guide*.
  final pulumi.Input<String>? policies;
  /// Optional metadata that you assign to a resource in the form of an arbitrary set of tags (key-value pairs). Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a SYS parameter to identify the type of resource to which it applies, the environment, or the type of configuration data referenced by the parameter.
  final pulumi.Input<dynamic>? tags;
  /// The parameter tier.
  final pulumi.Input<String>? tier;
  /// The type of parameter.
  final pulumi.Input<String>? type;
  /// The parameter value.  If type is ``StringList``, the system returns a comma-separated string with no spaces between commas in the ``Value`` field.
  final pulumi.Input<String>? value;

  /// Creates a new [AwsSsmParameterPropertiesResponse].
  /// [allowedPattern] A regular expression used to validate the parameter value. For example, for ``String`` types with values restricted to numbers, you can specify the following: ``AllowedPattern=^\d+$``
  /// [dataType] The data type of the parameter, such as ``text`` or ``aws:ec2:image``. The default is ``text``.
  /// [description] Information about the parameter.
  /// [name] The name of the parameter.  The maximum length constraint listed below includes capacity for additional system attributes that aren't part of the name. The maximum length for a parameter name, including the full length of the parameter Amazon Resource Name (ARN), is 1011 characters. For example, the length of the following parameter name is 65 characters, not 20 characters: ``arn:aws:ssm:us-east-2:111222333444:parameter/ExampleParameterName``
  /// [policies] Information about the policies assigned to a parameter.  [Assigning parameter policies](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html) in the *User Guide*.
  /// [tags] Optional metadata that you assign to a resource in the form of an arbitrary set of tags (key-value pairs). Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a SYS parameter to identify the type of resource to which it applies, the environment, or the type of configuration data referenced by the parameter.
  /// [tier] The parameter tier.
  /// [type] The type of parameter.
  /// [value] The parameter value.  If type is ``StringList``, the system returns a comma-separated string with no spaces between commas in the ``Value`` field.
  const AwsSsmParameterPropertiesResponse({
    this.allowedPattern,
    this.dataType,
    this.description,
    this.name,
    this.policies,
    this.tags,
    this.tier,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPattern': ?allowedPattern,
      'dataType': ?dataType,
      'description': ?description,
      'name': ?name,
      'policies': ?policies,
      'tags': ?tags,
      'tier': ?tier,
      'type': ?type,
      'value': ?value,
    };
  }

  factory AwsSsmParameterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSsmParameterPropertiesResponse(
      allowedPattern: (() { final guardedValue = map['allowedPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
