// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nest_service_instance_commodity.dart';
import 'nest_service_instance_operation_metadata.dart';

/// Input properties used for looking up and filtering NestServiceInstance resources.
class NestServiceInstanceState {
  /// The order information of cloud market. See `commodity` below.
  final pulumi.Input<NestServiceInstanceCommodity>? commodity;
  /// Whether the service instance has the O&M function. Default value: `false`. Valid values:
  final pulumi.Input<bool>? enableInstanceOps;
  /// Whether Prometheus monitoring is enabled. Default value: `false`. Valid values:
  final pulumi.Input<bool>? enableUserPrometheus;
  /// The configuration of O&M. See `operation_metadata` below.
  final pulumi.Input<NestServiceInstanceOperationMetadata>? operationMetadata;
  /// The parameters entered by the deployment service instance.
  final pulumi.Input<String>? parameters;
  /// The type of payment. Valid values: `Permanent`, `Subscription`, `PayAsYouGo`, `CustomFixTime`.
  final pulumi.Input<String>? paymentType;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the service.
  final pulumi.Input<String>? serviceId;
  /// The name of the Service Instance.
  final pulumi.Input<String>? serviceInstanceName;
  /// The version of the service.
  final pulumi.Input<String>? serviceVersion;
  /// The name of the specification.
  final pulumi.Input<String>? specificationName;
  /// The status of the Service Instance.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the template.
  final pulumi.Input<String>? templateName;

  /// Creates a new [NestServiceInstanceState].
  /// [commodity] The order information of cloud market. See `commodity` below.
  /// [enableInstanceOps] Whether the service instance has the O&M function. Default value: `false`. Valid values:
  /// [enableUserPrometheus] Whether Prometheus monitoring is enabled. Default value: `false`. Valid values:
  /// [operationMetadata] The configuration of O&M. See `operation_metadata` below.
  /// [parameters] The parameters entered by the deployment service instance.
  /// [paymentType] The type of payment. Valid values: `Permanent`, `Subscription`, `PayAsYouGo`, `CustomFixTime`.
  /// [resourceGroupId] The ID of the resource group.
  /// [serviceId] The ID of the service.
  /// [serviceInstanceName] The name of the Service Instance.
  /// [serviceVersion] The version of the service.
  /// [specificationName] The name of the specification.
  /// [status] The status of the Service Instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateName] The name of the template.
  const NestServiceInstanceState({
    this.commodity,
    this.enableInstanceOps,
    this.enableUserPrometheus,
    this.operationMetadata,
    this.parameters,
    this.paymentType,
    this.resourceGroupId,
    this.serviceId,
    this.serviceInstanceName,
    this.serviceVersion,
    this.specificationName,
    this.status,
    this.tags,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commodity': ?pulumi.Input.mapOptionalInputValue<NestServiceInstanceCommodity, Map<String, dynamic>>(commodity, (value) => value.toMap()),
      'enableInstanceOps': ?enableInstanceOps,
      'enableUserPrometheus': ?enableUserPrometheus,
      'operationMetadata': ?pulumi.Input.mapOptionalInputValue<NestServiceInstanceOperationMetadata, Map<String, dynamic>>(operationMetadata, (value) => value.toMap()),
      'parameters': ?parameters,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'serviceId': ?serviceId,
      'serviceInstanceName': ?serviceInstanceName,
      'serviceVersion': ?serviceVersion,
      'specificationName': ?specificationName,
      'status': ?status,
      'tags': ?tags,
      'templateName': ?templateName,
    };
  }

  factory NestServiceInstanceState.fromMap(Map<String, dynamic> map) {
    return NestServiceInstanceState(
      commodity: (() { final guardedValue = map['commodity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NestServiceInstanceCommodity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableInstanceOps: (() { final guardedValue = map['enableInstanceOps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableUserPrometheus: (() { final guardedValue = map['enableUserPrometheus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operationMetadata: (() { final guardedValue = map['operationMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NestServiceInstanceOperationMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceInstanceName: (() { final guardedValue = map['serviceInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceVersion: (() { final guardedValue = map['serviceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specificationName: (() { final guardedValue = map['specificationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

