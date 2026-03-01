// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'ipaddress_networking_k8s_io_v1beta1_resource.dart';

/// {@template pulumi_networking_k8s_io_v1beta1_ipaddress_list_networking_k8s_io_v1beta1_args_doc}
/// The set of arguments for IPAddressList.
/// {@endtemplate}
/// {@macro pulumi_networking_k8s_io_v1beta1_ipaddress_list_networking_k8s_io_v1beta1_args_doc}
class IPAddressListNetworkingK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// items is the list of IPAddresses.
  final pulumi.Input<List<IPAddressNetworkingK8sIoV1beta1Resource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [IPAddressListNetworkingK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is the list of IPAddresses.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  IPAddressListNetworkingK8sIoV1beta1Args({
    String? apiVersion,
    required List<IPAddressNetworkingK8sIoV1beta1Resource> items,
    String? kind,
    ListMeta? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<IPAddressNetworkingK8sIoV1beta1Resource>>(items),
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

  factory IPAddressListNetworkingK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return IPAddressListNetworkingK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      items: (map['items'] as List).cast<IPAddressNetworkingK8sIoV1beta1Resource>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

