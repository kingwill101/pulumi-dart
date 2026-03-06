// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_service_spec_provider.dart';

class VirtualServiceSpec {
  /// App Mesh object that is acting as the provider for a virtual service. You can specify a single virtual node or virtual router.
  final pulumi.Input<VirtualServiceSpecProvider>? provider;

  /// Creates a new [VirtualServiceSpec].
  /// [provider] App Mesh object that is acting as the provider for a virtual service. You can specify a single virtual node or virtual router.
  const VirtualServiceSpec({
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?pulumi.Input.mapOptionalInputValue<VirtualServiceSpecProvider, Map<String, dynamic>>(provider, (value) => value.toMap()),
    };
  }

  factory VirtualServiceSpec.fromMap(Map<String, dynamic> map) {
    return VirtualServiceSpec(
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualServiceSpecProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

