// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_version_properties_response.dart';

class KubernetesVersionProfileResponseProperties {
  /// Provisioning state of the resource
  final String provisioningState;
  /// List of supported Kubernetes versions
  final List<KubernetesVersionPropertiesResponse>? values;

  /// Creates a new [KubernetesVersionProfileResponseProperties].
  /// [provisioningState] Provisioning state of the resource
  /// [values] List of supported Kubernetes versions
  KubernetesVersionProfileResponseProperties({
    required this.provisioningState,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'values': ?values == null ? null : pulumi.Input.encodeList<KubernetesVersionPropertiesResponse, Map<String, dynamic>>(values!, (value) => value.toMap()),
    };
  }

  factory KubernetesVersionProfileResponseProperties.fromMap(Map<String, dynamic> map) {
    return KubernetesVersionProfileResponseProperties(
      provisioningState: map['provisioningState'] as String,
      values: map['values'] == null ? null : pulumi.Input.decodeList<KubernetesVersionPropertiesResponse>(map['values'], (value) => KubernetesVersionPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

