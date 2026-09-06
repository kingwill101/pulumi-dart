// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_redshift_cluster_parameter_group_response.dart';
import 'tag_response.dart';

/// Definition of awsRedshiftClusterParameterGroup
class AwsRedshiftClusterParameterGroupPropertiesResponse {
  /// A description of the parameter group.
  final pulumi.Input<String?>? description;
  /// The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.
  final pulumi.Input<String?>? parameterGroupFamily;
  /// The name of the cluster parameter group.
  final pulumi.Input<String?>? parameterGroupName;
  /// An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.
  final pulumi.Input<List<ParameterRedshiftClusterParameterGroupResponse>?>? parameters;
  /// An array of key-value pairs to apply to this resource.
  final pulumi.Input<List<TagResponse>?>? tags;

  /// Creates a new [AwsRedshiftClusterParameterGroupPropertiesResponse].
  /// [description] A description of the parameter group.
  /// [parameterGroupFamily] The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.
  /// [parameterGroupName] The name of the cluster parameter group.
  /// [parameters] An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.
  /// [tags] An array of key-value pairs to apply to this resource.
  const AwsRedshiftClusterParameterGroupPropertiesResponse({
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
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterRedshiftClusterParameterGroupResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterRedshiftClusterParameterGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsRedshiftClusterParameterGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsRedshiftClusterParameterGroupPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupFamily: (() { final guardedValue = map['parameterGroupFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterRedshiftClusterParameterGroupResponse>(guardedValue, (value) => ParameterRedshiftClusterParameterGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
