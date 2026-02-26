// ignore_for_file: unused_element, unnecessary_cast

class TrustProviderDeviceOptions {
  final String? tenantId;

  TrustProviderDeviceOptions({
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tenantIdValue = tenantId;
    if (tenantIdValue != null) {
      map['tenantId'] = tenantIdValue;
    }
    return map;
  }

  factory TrustProviderDeviceOptions.fromMap(Map<String, dynamic> map) {
    return TrustProviderDeviceOptions(
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}
