// ignore_for_file: unused_element, unnecessary_cast

/// Message describing compute engine instance filter
class GceInstanceFilterResponse {
  /// Service account of compute engine
  final List<String> serviceAccounts;

  GceInstanceFilterResponse({
    required this.serviceAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccounts'] = serviceAccounts;
    return map;
  }

  factory GceInstanceFilterResponse.fromMap(Map<String, dynamic> map) {
    return GceInstanceFilterResponse(
      serviceAccounts: (map['serviceAccounts'] as List).cast<String>(),
    );
  }
}
