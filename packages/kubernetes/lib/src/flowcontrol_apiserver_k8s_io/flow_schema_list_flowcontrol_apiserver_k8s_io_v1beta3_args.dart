// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'flow_schema_flowcontrol_apiserver_k8s_io_v1beta3_resource.dart';

/// {@template pulumi_flowcontrol_apiserver_k8s_io_v1beta3_flow_schema_list_flowcontrol_apiserver_k8s_io_v1beta3_args_doc}
/// The set of arguments for FlowSchemaList.
/// {@endtemplate}
/// {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta3_flow_schema_list_flowcontrol_apiserver_k8s_io_v1beta3_args_doc}
class FlowSchemaListFlowcontrolApiserverK8sIoV1beta3Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// `items` is a list of FlowSchemas.
  final pulumi.Input<List<FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// `metadata` is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [FlowSchemaListFlowcontrolApiserverK8sIoV1beta3Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] `items` is a list of FlowSchemas.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] `metadata` is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  FlowSchemaListFlowcontrolApiserverK8sIoV1beta3Args({
    String? apiVersion,
    required List<FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource> items,
    String? kind,
    ListMeta? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource>>(items),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ListMeta>(metadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory FlowSchemaListFlowcontrolApiserverK8sIoV1beta3Args.fromMap(Map<String, dynamic> map) {
    return FlowSchemaListFlowcontrolApiserverK8sIoV1beta3Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      items: (map['items'] as List).cast<FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

