// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_attribute.dart';
import 'google_cloud_apigee_v1_quota.dart';

/// Binds the resources in a proxy or remote service with the gRPC operation and its associated quota enforcement.
class GoogleCloudApigeeV1GrpcOperationConfig {
  /// Name of the API proxy with which the gRPC operation and quota are associated.
  final String apiSource;

  /// Custom attributes associated with the operation.
  final List<GoogleCloudApigeeV1Attribute>? attributes;

  /// List of unqualified gRPC method names for the proxy to which quota will be applied. If this field is empty, the Quota will apply to all operations on the gRPC service defined on the proxy. Example: Given a proxy that is configured to serve com.petstore.PetService, the methods com.petstore.PetService.ListPets and com.petstore.PetService.GetPet would be specified here as simply ["ListPets", "GetPet"].
  final List<String>? methods;

  /// Quota parameters to be enforced for the methods and API source combination. If none are specified, quota enforcement will not be done.
  final GoogleCloudApigeeV1Quota? quota;

  /// gRPC Service name associated to be associated with the API proxy, on which quota rules can be applied upon.
  final String service;

  GoogleCloudApigeeV1GrpcOperationConfig({
    required this.apiSource,
    this.attributes,
    this.methods,
    this.quota,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiSource'] = apiSource;
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] =
          Input.encodeList<GoogleCloudApigeeV1Attribute, Map<String, dynamic>>(
              attributesValue, (value) => value.toMap());
    }
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final quotaValue = quota;
    if (quotaValue != null) {
      map['quota'] = quotaValue.toMap();
    }
    map['service'] = service;
    return map;
  }

  factory GoogleCloudApigeeV1GrpcOperationConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GrpcOperationConfig(
      apiSource: map['apiSource'] as String,
      attributes: map['attributes'] == null
          ? null
          : Input.decodeList<GoogleCloudApigeeV1Attribute>(
              map['attributes'],
              (value) => GoogleCloudApigeeV1Attribute.fromMap(
                  (value as Map).cast<String, dynamic>())),
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      quota: map['quota'] == null
          ? null
          : GoogleCloudApigeeV1Quota.fromMap(
              (map['quota'] as Map).cast<String, dynamic>()),
      service: map['service'] as String,
    );
  }
}
