// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_point_ingress_point_configuration_tls_auth_configuration_trust_store.dart';

class IngressPointIngressPointConfigurationTlsAuthConfiguration {
  /// Trust store used to validate client certificates. See `trustStore` Block for details.
  final pulumi.Input<IngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore>? trustStore;

  /// Creates a new [IngressPointIngressPointConfigurationTlsAuthConfiguration].
  /// [trustStore] Trust store used to validate client certificates. See `trustStore` Block for details.
  const IngressPointIngressPointConfigurationTlsAuthConfiguration({
    this.trustStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustStore': ?pulumi.Input.mapOptionalInputValue<IngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore, Map<String, dynamic>>(trustStore, (value) => value.toMap()),
    };
  }

  factory IngressPointIngressPointConfigurationTlsAuthConfiguration.fromMap(Map<String, dynamic> map) {
    return IngressPointIngressPointConfigurationTlsAuthConfiguration(
      trustStore: (() { final guardedValue = map['trustStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
