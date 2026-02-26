// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enterprise_crm_eventbus_proto_attributes.dart';
import 'enterprise_crm_eventbus_proto_node_identifier.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameter_entry_data_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameter_entry_in_out_type.dart';

class EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry {
  /// Metadata information about the parameters.
  final EnterpriseCrmEventbusProtoAttributes? attributes;

  /// Child parameters nested within this parameter. This field only applies to protobuf parameters
  final List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>?
      children;

  /// The data type of the parameter.
  final EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType?
      dataType;

  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final EnterpriseCrmFrontendsEventbusProtoParameterValueType? defaultValue;

  /// Optional. The description about the parameter
  final String? description;

  /// Specifies the input/output type for the parameter.
  final EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType?
      inOutType;

  /// Whether this parameter is a transient parameter.
  final bool? isTransient;

  /// This schema will be used to validate runtime JSON-typed values of this parameter.
  final String? jsonSchema;

  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  final String? key;

  /// The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  final String? name;

  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  final EnterpriseCrmEventbusProtoNodeIdentifier? producedBy;
  final String? producer;

  /// The name of the protobuf type if the parameter has a protobuf data type.
  final String? protoDefName;

  /// If the data type is of type proto or proto array, this field needs to be populated with the fully qualified proto name. This message, for example, would be "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
  final String? protoDefPath;

  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry({
    this.attributes,
    this.children,
    this.dataType,
    this.defaultValue,
    this.description,
    this.inOutType,
    this.isTransient,
    this.jsonSchema,
    this.key,
    this.name,
    this.producedBy,
    this.producer,
    this.protoDefName,
    this.protoDefPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue.toMap();
    }
    final childrenValue = children;
    if (childrenValue != null) {
      map['children'] = Input.encodeList<
          EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry,
          Map<String, dynamic>>(childrenValue, (value) => value.toMap());
    }
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue.value;
    }
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final inOutTypeValue = inOutType;
    if (inOutTypeValue != null) {
      map['inOutType'] = inOutTypeValue.value;
    }
    final isTransientValue = isTransient;
    if (isTransientValue != null) {
      map['isTransient'] = isTransientValue;
    }
    final jsonSchemaValue = jsonSchema;
    if (jsonSchemaValue != null) {
      map['jsonSchema'] = jsonSchemaValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final producedByValue = producedBy;
    if (producedByValue != null) {
      map['producedBy'] = producedByValue.toMap();
    }
    final producerValue = producer;
    if (producerValue != null) {
      map['producer'] = producerValue;
    }
    final protoDefNameValue = protoDefName;
    if (protoDefNameValue != null) {
      map['protoDefName'] = protoDefNameValue;
    }
    final protoDefPathValue = protoDefPath;
    if (protoDefPathValue != null) {
      map['protoDefPath'] = protoDefPathValue;
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(
      attributes: map['attributes'] == null
          ? null
          : EnterpriseCrmEventbusProtoAttributes.fromMap(
              (map['attributes'] as Map).cast<String, dynamic>()),
      children: map['children'] == null
          ? null
          : Input.decodeList<
                  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>(
              map['children'],
              (value) =>
                  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry
                      .fromMap((value as Map).cast<String, dynamic>())),
      dataType: map['dataType'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType
              .fromValue(map['dataType'] as String),
      defaultValue: map['defaultValue'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromMap(
              (map['defaultValue'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      inOutType: map['inOutType'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType
              .fromValue(map['inOutType'] as String),
      isTransient:
          map['isTransient'] == null ? null : map['isTransient'] as bool,
      jsonSchema:
          map['jsonSchema'] == null ? null : map['jsonSchema'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      producedBy: map['producedBy'] == null
          ? null
          : EnterpriseCrmEventbusProtoNodeIdentifier.fromMap(
              (map['producedBy'] as Map).cast<String, dynamic>()),
      producer: map['producer'] == null ? null : map['producer'] as String,
      protoDefName:
          map['protoDefName'] == null ? null : map['protoDefName'] as String,
      protoDefPath:
          map['protoDefPath'] == null ? null : map['protoDefPath'] as String,
    );
  }
}
