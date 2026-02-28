// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameter_entry_response.dart';

/// LINT.IfChange This is the frontend version of WorkflowParameters. It's exactly like the backend version except that instead of flattening protobuf parameters and treating every field and subfield of a protobuf parameter as a separate parameter, the fields/subfields of a protobuf parameter will be nested as "children" (see 'children' field below) parameters of the parent parameter. Please refer to enterprise/crm/eventbus/proto/workflow_parameters.proto for more information about WorkflowParameters.
class EnterpriseCrmFrontendsEventbusProtoWorkflowParametersResponse {
  /// Parameters are a part of Event and can be used to communiticate between different tasks that are part of the same workflow execution.
  final List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse>
      parameters;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoWorkflowParametersResponse].
  /// [parameters] Parameters are a part of Event and can be used to communiticate between different tasks that are part of the same workflow execution.
  EnterpriseCrmFrontendsEventbusProtoWorkflowParametersResponse({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] = pulumi.Input.encodeList<
        EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoWorkflowParametersResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoWorkflowParametersResponse(
      parameters: pulumi.Input.decodeList<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse>(
          map['parameters'],
          (value) =>
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
