// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_attributes_response.dart';
import 'enterprise_crm_eventbus_proto_node_identifier_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type_response.dart';

class EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse {
  /// Metadata information about the parameters.
  final EnterpriseCrmEventbusProtoAttributesResponse attributes;

  /// Child parameters nested within this parameter. This field only applies to protobuf parameters
  final List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse>
      children;

  /// The data type of the parameter.
  final String dataType;

  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse
      defaultValue;

  /// Optional. The description about the parameter
  final String description;

  /// Specifies the input/output type for the parameter.
  final String inOutType;

  /// Whether this parameter is a transient parameter.
  final bool isTransient;

  /// This schema will be used to validate runtime JSON-typed values of this parameter.
  final String jsonSchema;

  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  final String key;

  /// The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  final String name;

  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  final EnterpriseCrmEventbusProtoNodeIdentifierResponse producedBy;
  final String producer;

  /// The name of the protobuf type if the parameter has a protobuf data type.
  final String protoDefName;

  /// If the data type is of type proto or proto array, this field needs to be populated with the fully qualified proto name. This message, for example, would be "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
  final String protoDefPath;

  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse({
    required this.attributes,
    required this.children,
    required this.dataType,
    required this.defaultValue,
    required this.description,
    required this.inOutType,
    required this.isTransient,
    required this.jsonSchema,
    required this.key,
    required this.name,
    required this.producedBy,
    required this.producer,
    required this.protoDefName,
    required this.protoDefPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributes'] = attributes.toMap();
    map['children'] = pulumi.Input.encodeList<
        EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse,
        Map<String, dynamic>>(children, (value) => value.toMap());
    map['dataType'] = dataType;
    map['defaultValue'] = defaultValue.toMap();
    map['description'] = description;
    map['inOutType'] = inOutType;
    map['isTransient'] = isTransient;
    map['jsonSchema'] = jsonSchema;
    map['key'] = key;
    map['name'] = name;
    map['producedBy'] = producedBy.toMap();
    map['producer'] = producer;
    map['protoDefName'] = protoDefName;
    map['protoDefPath'] = protoDefPath;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse(
      attributes: EnterpriseCrmEventbusProtoAttributesResponse.fromMap(
          (map['attributes'] as Map).cast<String, dynamic>()),
      children: pulumi.Input.decodeList<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse>(
          map['children'],
          (value) =>
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      dataType: map['dataType'] as String,
      defaultValue:
          EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap(
              (map['defaultValue'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      inOutType: map['inOutType'] as String,
      isTransient: map['isTransient'] as bool,
      jsonSchema: map['jsonSchema'] as String,
      key: map['key'] as String,
      name: map['name'] as String,
      producedBy: EnterpriseCrmEventbusProtoNodeIdentifierResponse.fromMap(
          (map['producedBy'] as Map).cast<String, dynamic>()),
      producer: map['producer'] as String,
      protoDefName: map['protoDefName'] as String,
      protoDefPath: map['protoDefPath'] as String,
    );
  }
}
