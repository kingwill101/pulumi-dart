// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_response.dart';
import 'tag_response.dart';

/// Definition of awsRedshiftClusterParameterGroup
class AwsRedshiftClusterParameterGroupPropertiesResponse {
  /// A description of the parameter group.
  final String? description;
  /// The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.
  final String? parameterGroupFamily;
  /// The name of the cluster parameter group.
  final String? parameterGroupName;
  /// An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.
  final List<ParameterResponse>? parameters;
  /// An array of key-value pairs to apply to this resource.
  final List<TagResponse>? tags;

  /// Creates a new [AwsRedshiftClusterParameterGroupPropertiesResponse].
  /// [description] A description of the parameter group.
  /// [parameterGroupFamily] The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.
  /// [parameterGroupName] The name of the cluster parameter group.
  /// [parameters] An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.
  /// [tags] An array of key-value pairs to apply to this resource.
  AwsRedshiftClusterParameterGroupPropertiesResponse({
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
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsRedshiftClusterParameterGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsRedshiftClusterParameterGroupPropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
      parameterGroupFamily: map['parameterGroupFamily'] == null ? null : map['parameterGroupFamily'] as String,
      parameterGroupName: map['parameterGroupName'] == null ? null : map['parameterGroupName'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ParameterResponse>(map['parameters'], (value) => ParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

