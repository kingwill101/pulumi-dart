// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_version_properties_response.dart';

class KubernetesVersionProfileResponseProperties {
  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;
  /// List of supported Kubernetes versions
  final pulumi.Input<List<KubernetesVersionPropertiesResponse>>? values;

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
      'values': ?pulumi.Input.mapOptionalInputValue<List<KubernetesVersionPropertiesResponse>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<KubernetesVersionPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KubernetesVersionProfileResponseProperties.fromMap(Map<String, dynamic> map) {
    return KubernetesVersionProfileResponseProperties(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesVersionPropertiesResponse>(guardedValue, (value) => KubernetesVersionPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

