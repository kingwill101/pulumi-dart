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
  NestServiceInstanceState({
    pulumi.Output<NestServiceInstanceCommodity>? commodity,
    pulumi.Output<bool>? enableInstanceOps,
    pulumi.Output<bool>? enableUserPrometheus,
    pulumi.Output<NestServiceInstanceOperationMetadata>? operationMetadata,
    pulumi.Output<String>? parameters,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? serviceId,
    pulumi.Output<String>? serviceInstanceName,
    pulumi.Output<String>? serviceVersion,
    pulumi.Output<String>? specificationName,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateName,
  }) :
      commodity = pulumi.Input.asOptionalInput<NestServiceInstanceCommodity>(commodity),
      enableInstanceOps = pulumi.Input.asOptionalInput<bool>(enableInstanceOps),
      enableUserPrometheus = pulumi.Input.asOptionalInput<bool>(enableUserPrometheus),
      operationMetadata = pulumi.Input.asOptionalInput<NestServiceInstanceOperationMetadata>(operationMetadata),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      serviceInstanceName = pulumi.Input.asOptionalInput<String>(serviceInstanceName),
      serviceVersion = pulumi.Input.asOptionalInput<String>(serviceVersion),
      specificationName = pulumi.Input.asOptionalInput<String>(specificationName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateName = pulumi.Input.asOptionalInput<String>(templateName);

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
      commodity: map['commodity'] == null ? null : pulumi.Output.create<NestServiceInstanceCommodity>(NestServiceInstanceCommodity.fromMap((map['commodity'] as Map).cast<String, dynamic>())),
      enableInstanceOps: map['enableInstanceOps'] == null ? null : pulumi.Output.create<bool>(map['enableInstanceOps'] as bool),
      enableUserPrometheus: map['enableUserPrometheus'] == null ? null : pulumi.Output.create<bool>(map['enableUserPrometheus'] as bool),
      operationMetadata: map['operationMetadata'] == null ? null : pulumi.Output.create<NestServiceInstanceOperationMetadata>(NestServiceInstanceOperationMetadata.fromMap((map['operationMetadata'] as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<String>(map['parameters'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      serviceInstanceName: map['serviceInstanceName'] == null ? null : pulumi.Output.create<String>(map['serviceInstanceName'] as String),
      serviceVersion: map['serviceVersion'] == null ? null : pulumi.Output.create<String>(map['serviceVersion'] as String),
      specificationName: map['specificationName'] == null ? null : pulumi.Output.create<String>(map['specificationName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
    );
  }
}

