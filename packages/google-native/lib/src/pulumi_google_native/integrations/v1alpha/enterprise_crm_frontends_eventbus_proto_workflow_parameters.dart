// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameter_entry.dart';

/// LINT.IfChange This is the frontend version of WorkflowParameters. It's exactly like the backend version except that instead of flattening protobuf parameters and treating every field and subfield of a protobuf parameter as a separate parameter, the fields/subfields of a protobuf parameter will be nested as "children" (see 'children' field below) parameters of the parent parameter. Please refer to enterprise/crm/eventbus/proto/workflow_parameters.proto for more information about WorkflowParameters.
class EnterpriseCrmFrontendsEventbusProtoWorkflowParameters {
  /// Parameters are a part of Event and can be used to communiticate between different tasks that are part of the same workflow execution.
  final List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>?
      parameters;

  EnterpriseCrmFrontendsEventbusProtoWorkflowParameters({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<
          EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoWorkflowParameters(
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<
                  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>(
              map['parameters'],
              (value) =>
                  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
