// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enterprise_crm_eventbus_proto_parameter_entry_response.dart';

/// LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see
class EnterpriseCrmEventbusProtoEventParametersResponse {
  /// Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.
  final List<EnterpriseCrmEventbusProtoParameterEntryResponse> parameters;

  EnterpriseCrmEventbusProtoEventParametersResponse({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] = Input.encodeList<
        EnterpriseCrmEventbusProtoParameterEntryResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    return map;
  }

  factory EnterpriseCrmEventbusProtoEventParametersResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoEventParametersResponse(
      parameters:
          Input.decodeList<EnterpriseCrmEventbusProtoParameterEntryResponse>(
              map['parameters'],
              (value) =>
                  EnterpriseCrmEventbusProtoParameterEntryResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
