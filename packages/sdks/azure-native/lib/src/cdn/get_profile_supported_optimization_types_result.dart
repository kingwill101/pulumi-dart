// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProfileSupportedOptimizationTypes.
class GetProfileSupportedOptimizationTypesResult {
  /// Supported optimization types for a profile.
  final List<String>? supportedOptimizationTypes;

  /// Creates a new [GetProfileSupportedOptimizationTypesResult].
  /// [supportedOptimizationTypes] Supported optimization types for a profile.
  const GetProfileSupportedOptimizationTypesResult({
    this.supportedOptimizationTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedOptimizationTypes': ?supportedOptimizationTypes,
    };
  }

  factory GetProfileSupportedOptimizationTypesResult.fromMap(Map<String, dynamic> map) {
    return GetProfileSupportedOptimizationTypesResult(
      supportedOptimizationTypes: (() { final guardedValue = map['supportedOptimizationTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
