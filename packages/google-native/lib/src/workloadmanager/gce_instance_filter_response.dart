// ignore_for_file: unused_element, unnecessary_cast

/// Message describing compute engine instance filter
class GceInstanceFilterResponse {
  /// Service account of compute engine
  final List<String> serviceAccounts;

  /// Creates a new [GceInstanceFilterResponse].
  /// [serviceAccounts] Service account of compute engine
  GceInstanceFilterResponse({required this.serviceAccounts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceAccounts': serviceAccounts};
  }

  factory GceInstanceFilterResponse.fromMap(Map<String, dynamic> map) {
    return GceInstanceFilterResponse(
      serviceAccounts: (map['serviceAccounts'] as List).cast<String>(),
    );
  }
}
