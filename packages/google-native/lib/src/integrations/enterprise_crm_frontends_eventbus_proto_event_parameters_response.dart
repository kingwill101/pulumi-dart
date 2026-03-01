// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_parameter_entry_response.dart';

/// LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see
class EnterpriseCrmFrontendsEventbusProtoEventParametersResponse {
  /// Parameters are a part of Event and can be used to communicate between different tasks that are part of the same workflow execution.
  final List<EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse>
  parameters;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoEventParametersResponse].
  /// [parameters] Parameters are a part of Event and can be used to communicate between different tasks that are part of the same workflow execution.
  EnterpriseCrmFrontendsEventbusProtoEventParametersResponse({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters':
          pulumi.Input.encodeList<
            EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoEventParametersResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoEventParametersResponse(
      parameters:
          pulumi.Input.decodeList<
            EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse
          >(
            map['parameters'],
            (value) =>
                EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
