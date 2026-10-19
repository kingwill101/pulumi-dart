// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustProviderDeviceOptions {
  /// ID of the tenant application with the device-identity provider.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [TrustProviderDeviceOptions].
  /// [tenantId] ID of the tenant application with the device-identity provider.
  const TrustProviderDeviceOptions({
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': ?tenantId,
    };
  }

  factory TrustProviderDeviceOptions.fromMap(Map<String, dynamic> map) {
    return TrustProviderDeviceOptions(
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
