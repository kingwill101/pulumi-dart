// ignore_for_file: unused_element, unnecessary_cast

/// Message describing compute engine instance filter
class GceInstanceFilter {
  /// Service account of compute engine
  final List<String>? serviceAccounts;

  /// Creates a new [GceInstanceFilter].
  /// [serviceAccounts] Service account of compute engine
  GceInstanceFilter({
    this.serviceAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceAccountsValue = serviceAccounts;
    if (serviceAccountsValue != null) {
      map['serviceAccounts'] = serviceAccountsValue;
    }
    return map;
  }

  factory GceInstanceFilter.fromMap(Map<String, dynamic> map) {
    return GceInstanceFilter(
      serviceAccounts: map['serviceAccounts'] == null
          ? null
          : (map['serviceAccounts'] as List).cast<String>(),
    );
  }
}
