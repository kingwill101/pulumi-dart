// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_service_spec_provider.dart';

class VirtualServiceSpec {
  /// App Mesh object that is acting as the provider for a virtual service. You can specify a single virtual node or virtual router.
  final VirtualServiceSpecProvider? provider;

  /// Creates a new [VirtualServiceSpec].
  /// [provider] App Mesh object that is acting as the provider for a virtual service. You can specify a single virtual node or virtual router.
  VirtualServiceSpec({
    this.provider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final providerValue = provider;
    if (providerValue != null) {
      map['provider'] = providerValue.toMap();
    }
    return map;
  }

  factory VirtualServiceSpec.fromMap(Map<String, dynamic> map) {
    return VirtualServiceSpec(
      provider: map['provider'] == null
          ? null
          : VirtualServiceSpecProvider.fromMap(
              (map['provider'] as Map).cast<String, dynamic>()),
    );
  }
}
