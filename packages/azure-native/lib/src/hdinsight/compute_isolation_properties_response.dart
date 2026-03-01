// ignore_for_file: unused_element, unnecessary_cast


/// The compute isolation properties.
class ComputeIsolationPropertiesResponse {
  /// The flag indicates whether enable compute isolation or not.
  final bool? enableComputeIsolation;
  /// The host sku.
  final String? hostSku;

  /// Creates a new [ComputeIsolationPropertiesResponse].
  /// [enableComputeIsolation] The flag indicates whether enable compute isolation or not.
  /// [hostSku] The host sku.
  ComputeIsolationPropertiesResponse({
    this.enableComputeIsolation,
    this.hostSku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComputeIsolation': ?enableComputeIsolation,
      'hostSku': ?hostSku,
    };
  }

  factory ComputeIsolationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ComputeIsolationPropertiesResponse(
      enableComputeIsolation: map['enableComputeIsolation'] == null ? null : map['enableComputeIsolation'] as bool,
      hostSku: map['hostSku'] == null ? null : map['hostSku'] as String,
    );
  }
}

