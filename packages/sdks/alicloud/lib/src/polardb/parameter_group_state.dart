// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// Input properties used for looking up and filtering ParameterGroup resources.
class ParameterGroupState {
  /// The time when the parameter template was created. The time is in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;

  /// The type of the database engine. Only `MySQL` is supported.
  final pulumi.Input<String>? dbType;

  /// The version of the database engine. Valid values:
  /// - **5.6**
  /// - **5.7**
  /// - **8.0**
  final pulumi.Input<String>? dbVersion;

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
  /// &gt; **NOTE:**  You can view all parameter details for the target database engine version database cluster through the [DescribeParameterTemplates](https://next.api.alibabacloud.com/document/polardb/2017-08-01/DescribeParameterTemplates), including parameter name, value.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<List<ParameterGroupParameter>>? parameters;

  /// Creates a new [ParameterGroupState].
  /// [createTime] The time when the parameter template was created. The time is in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [dbType] The type of the database engine. Only `MySQL` is supported.
  /// [dbVersion] The version of the database engine. Valid values:
  /// [description] The description of the parameter template.
  /// [name] . Field 'name' has been deprecated from provider version 1.263.0. New field 'parameter_group_name' instead.
  /// [parameterGroupName] The name of the parameter template. The name must meet the following requirements:
  /// [parameters] Details about the parameters. See `parameters` below.
  ParameterGroupState({
    this.createTime,
    this.dbType,
    this.dbVersion,
    this.description,
    this.name,
    this.parameterGroupName,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dbType': ?dbType,
      'dbVersion': ?dbVersion,
      'description': ?description,
      'name': ?name,
      'parameterGroupName': ?parameterGroupName,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ParameterGroupParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  ParameterGroupParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ParameterGroupState.fromMap(Map<String, dynamic> map) {
    return ParameterGroupState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbType: (() {
        final guardedValue = map['dbType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbVersion: (() {
        final guardedValue = map['dbVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterGroupName: (() {
        final guardedValue = map['parameterGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ParameterGroupParameter>(
            guardedValue,
            (value) => ParameterGroupParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
