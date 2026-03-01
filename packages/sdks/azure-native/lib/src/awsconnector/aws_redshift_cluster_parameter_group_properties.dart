// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter.dart';
import 'tag.dart';

/// Definition of awsRedshiftClusterParameterGroup
class AwsRedshiftClusterParameterGroupProperties {
  /// A description of the parameter group.
  final String? description;
  /// The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.
  final String? parameterGroupFamily;
  /// The name of the cluster parameter group.
  final String? parameterGroupName;
  /// An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.
  final List<Parameter>? parameters;
  /// An array of key-value pairs to apply to this resource.
  final List<Tag>? tags;

  /// Creates a new [AwsRedshiftClusterParameterGroupProperties].
  /// [description] A description of the parameter group.
  /// [parameterGroupFamily] The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.
  /// [parameterGroupName] The name of the cluster parameter group.
  /// [parameters] An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.
  /// [tags] An array of key-value pairs to apply to this resource.
  AwsRedshiftClusterParameterGroupProperties({
    this.description,
    this.parameterGroupFamily,
    this.parameterGroupName,
    this.parameters,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'parameterGroupFamily': ?parameterGroupFamily,
      'parameterGroupName': ?parameterGroupName,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<Parameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsRedshiftClusterParameterGroupProperties.fromMap(Map<String, dynamic> map) {
    return AwsRedshiftClusterParameterGroupProperties(
      description: map['description'] == null ? null : map['description'] as String,
      parameterGroupFamily: map['parameterGroupFamily'] == null ? null : map['parameterGroupFamily'] as String,
      parameterGroupName: map['parameterGroupName'] == null ? null : map['parameterGroupName'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<Parameter>(map['parameters'], (value) => Parameter.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

