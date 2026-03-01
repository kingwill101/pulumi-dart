// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'horizontal_pod_autoscaler_resource.dart';

/// {@template pulumi_autoscaling_v2_horizontal_pod_autoscaler_list_autoscaling_v2_args_doc}
/// The set of arguments for HorizontalPodAutoscalerList.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_v2_horizontal_pod_autoscaler_list_autoscaling_v2_args_doc}
class HorizontalPodAutoscalerListAutoscalingV2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// items is the list of horizontal pod autoscaler objects.
  final pulumi.Input<List<HorizontalPodAutoscalerResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata is the standard list metadata.
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [HorizontalPodAutoscalerListAutoscalingV2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is the list of horizontal pod autoscaler objects.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard list metadata.
  HorizontalPodAutoscalerListAutoscalingV2Args({
    String? apiVersion,
    required List<HorizontalPodAutoscalerResource> items,
    String? kind,
    ListMeta? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<HorizontalPodAutoscalerResource>>(items),
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

  factory HorizontalPodAutoscalerListAutoscalingV2Args.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerListAutoscalingV2Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      items: (map['items'] as List).cast<HorizontalPodAutoscalerResource>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

