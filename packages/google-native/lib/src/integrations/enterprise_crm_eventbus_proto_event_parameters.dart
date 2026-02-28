// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_parameter_entry.dart';

/// LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see
class EnterpriseCrmEventbusProtoEventParameters {
  /// Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.
  final List<EnterpriseCrmEventbusProtoParameterEntry>? parameters;

  /// Creates a new [EnterpriseCrmEventbusProtoEventParameters].
  /// [parameters] Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.
  EnterpriseCrmEventbusProtoEventParameters({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          EnterpriseCrmEventbusProtoParameterEntry,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoEventParameters.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoEventParameters(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<EnterpriseCrmEventbusProtoParameterEntry>(
              map['parameters'],
              (value) => EnterpriseCrmEventbusProtoParameterEntry.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
