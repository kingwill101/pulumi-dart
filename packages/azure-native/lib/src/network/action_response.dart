// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_response.dart';

/// Action to be taken on a route matching a RouteMap criterion.
class ActionResponse {
  /// List of parameters relevant to the action.For instance if type is drop then parameters has list of prefixes to be dropped.If type is add, parameters would have list of ASN numbers to be added
  final List<ParameterResponse>? parameters;
  /// Type of action to be taken. Supported types are 'Remove', 'Add', 'Replace', and 'Drop.'
  final String? type;

  /// Creates a new [ActionResponse].
  /// [parameters] List of parameters relevant to the action.For instance if type is drop then parameters has list of prefixes to be dropped.If type is add, parameters would have list of ASN numbers to be added
  /// [type] Type of action to be taken. Supported types are 'Remove', 'Add', 'Replace', and 'Drop.'
  ActionResponse({
    this.parameters,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ActionResponse.fromMap(Map<String, dynamic> map) {
    return ActionResponse(
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ParameterResponse>(map['parameters'], (value) => ParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

