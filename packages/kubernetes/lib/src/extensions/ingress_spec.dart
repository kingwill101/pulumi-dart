// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_backend.dart';
import 'ingress_rule.dart';
import 'ingress_tls.dart';

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpec {
  /// A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
  final IngressBackend? backend;
  /// IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated `kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.
  final String? ingressClassName;
  /// A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  final List<IngressRule>? rules;
  /// TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  final List<IngressTLS>? tls;

  /// Creates a new [IngressSpec].
  /// [backend] A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
  /// [ingressClassName] IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated `kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.
  /// [rules] A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  /// [tls] TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  IngressSpec({
    this.backend,
    this.ingressClassName,
    this.rules,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': ?backend == null ? null : backend!.toMap(),
      'ingressClassName': ?ingressClassName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<IngressRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'tls': ?tls == null ? null : pulumi.Input.encodeList<IngressTLS, Map<String, dynamic>>(tls!, (value) => value.toMap()),
    };
  }

  factory IngressSpec.fromMap(Map<String, dynamic> map) {
    return IngressSpec(
      backend: map['backend'] == null ? null : IngressBackend.fromMap((map['backend'] as Map).cast<String, dynamic>()),
      ingressClassName: map['ingressClassName'] == null ? null : map['ingressClassName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<IngressRule>(map['rules'], (value) => IngressRule.fromMap((value as Map).cast<String, dynamic>())),
      tls: map['tls'] == null ? null : pulumi.Input.decodeList<IngressTLS>(map['tls'], (value) => IngressTLS.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

