// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nest_service_instance_commodity.dart';
import 'nest_service_instance_operation_metadata.dart';

/// {@template pulumi_compute_nest_service_instance_nest_service_instance_args_doc}
/// The set of arguments for NestServiceInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_nest_service_instance_nest_service_instance_args_doc}
class NestServiceInstanceArgs {
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
  final pulumi.Input<String> serviceId;
  /// The name of the Service Instance.
  final pulumi.Input<String>? serviceInstanceName;
  /// The version of the service.
  final pulumi.Input<String> serviceVersion;
  /// The name of the specification.
  final pulumi.Input<String>? specificationName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the template.
  final pulumi.Input<String>? templateName;

  /// Creates a new [NestServiceInstanceArgs].
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
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateName] The name of the template.
  NestServiceInstanceArgs({
    this.commodity,
    this.enableInstanceOps,
    this.enableUserPrometheus,
    this.operationMetadata,
    this.parameters,
    this.paymentType,
    this.resourceGroupId,
    required this.serviceId,
    this.serviceInstanceName,
    required this.serviceVersion,
    this.specificationName,
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
      'serviceId': serviceId,
      'serviceInstanceName': ?serviceInstanceName,
      'serviceVersion': serviceVersion,
      'specificationName': ?specificationName,
      'tags': ?tags,
      'templateName': ?templateName,
    };
  }

  factory NestServiceInstanceArgs.fromMap(Map<String, dynamic> map) {
    return NestServiceInstanceArgs(
      commodity: map['commodity'] == null ? null : (NestServiceInstanceCommodity.fromMap((map['commodity']! as Map).cast<String, dynamic>())).input(),
      enableInstanceOps: map['enableInstanceOps'] == null ? null : (map['enableInstanceOps']! as bool).input(),
      enableUserPrometheus: map['enableUserPrometheus'] == null ? null : (map['enableUserPrometheus']! as bool).input(),
      operationMetadata: map['operationMetadata'] == null ? null : (NestServiceInstanceOperationMetadata.fromMap((map['operationMetadata']! as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      serviceId: (map['serviceId'] as String).input(),
      serviceInstanceName: map['serviceInstanceName'] == null ? null : (map['serviceInstanceName']! as String).input(),
      serviceVersion: (map['serviceVersion'] as String).input(),
      specificationName: map['specificationName'] == null ? null : (map['specificationName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateName: map['templateName'] == null ? null : (map['templateName']! as String).input(),
    );
  }
}

