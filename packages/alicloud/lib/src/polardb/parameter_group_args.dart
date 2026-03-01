// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// {@template pulumi_polardb_parameter_group_parameter_group_args_doc}
/// The set of arguments for ParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_polardb_parameter_group_parameter_group_args_doc}
class ParameterGroupArgs {
  /// The type of the database engine. Only `MySQL` is supported.
  final pulumi.Input<String> dbType;
  /// The version of the database engine. Valid values:
  /// - **5.6**
  /// - **5.7**
  /// - **8.0**
  final pulumi.Input<String> dbVersion;
  /// The description of the parameter template.
  final pulumi.Input<String>? description;
  /// . Field 'name' has been deprecated from provider version 1.263.0. New field 'parameter_group_name' instead.
  final pulumi.Input<String>? name;
  /// The name of the parameter template. The name must meet the following requirements:
  ///
  /// - It must start with a letter and can contain letters, digits, and underscores (_). It cannot contain Chinese characters or end with an underscore (_).
  ///
  /// - It must be 8 to 64 characters in length.
  final pulumi.Input<String>? parameterGroupName;
  /// Details about the parameters. See `parameters` below.
  ///
  /// > **NOTE:**  You can view all parameter details for the target database engine version database cluster through the [DescribeParameterTemplates](https://next.api.alibabacloud.com/document/polardb/2017-08-01/DescribeParameterTemplates), including parameter name, value.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<List<ParameterGroupParameter>> parameters;

  /// Creates a new [ParameterGroupArgs].
  /// [dbType] The type of the database engine. Only `MySQL` is supported.
  /// [dbVersion] The version of the database engine. Valid values:
  /// [description] The description of the parameter template.
  /// [name] . Field 'name' has been deprecated from provider version 1.263.0. New field 'parameter_group_name' instead.
  /// [parameterGroupName] The name of the parameter template. The name must meet the following requirements:
  /// [parameters] Details about the parameters. See `parameters` below.
  ParameterGroupArgs({
    required String dbType,
    required String dbVersion,
    String? description,
    String? name,
    String? parameterGroupName,
    required List<ParameterGroupParameter> parameters,
  }) :
      dbType = pulumi.Input.asInput<String>(dbType),
      dbVersion = pulumi.Input.asInput<String>(dbVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameterGroupName = pulumi.Input.asOptionalInput<String>(parameterGroupName),
      parameters = pulumi.Input.asInput<List<ParameterGroupParameter>>(parameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbType': dbType,
      'dbVersion': dbVersion,
      'description': ?description,
      'name': ?name,
      'parameterGroupName': ?parameterGroupName,
      'parameters': pulumi.Input.mapInputValue<List<ParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return ParameterGroupArgs(
      dbType: map['dbType'] as String,
      dbVersion: map['dbVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameterGroupName: map['parameterGroupName'] == null ? null : map['parameterGroupName'] as String,
      parameters: pulumi.Input.decodeList<ParameterGroupParameter>(map['parameters'], (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

