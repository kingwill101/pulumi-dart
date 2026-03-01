// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter.dart';

/// Action to be taken on a route matching a RouteMap criterion.
class Action {
  /// List of parameters relevant to the action.For instance if type is drop then parameters has list of prefixes to be dropped.If type is add, parameters would have list of ASN numbers to be added
  final List<Parameter>? parameters;
  /// Type of action to be taken. Supported types are 'Remove', 'Add', 'Replace', and 'Drop.'
  final String? type;

  /// Creates a new [Action].
  /// [parameters] List of parameters relevant to the action.For instance if type is drop then parameters has list of prefixes to be dropped.If type is add, parameters would have list of ASN numbers to be added
  /// [type] Type of action to be taken. Supported types are 'Remove', 'Add', 'Replace', and 'Drop.'
  Action({
    this.parameters,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<Parameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory Action.fromMap(Map<String, dynamic> map) {
    return Action(
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<Parameter>(map['parameters'], (value) => Parameter.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

