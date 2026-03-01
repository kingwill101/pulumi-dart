// ignore_for_file: unused_element, unnecessary_cast

class ResourceStatusLastInstanceTerminationDetailsResponse {
  /// Reason for termination
  final String terminationReason;

  /// Creates a new [ResourceStatusLastInstanceTerminationDetailsResponse].
  /// [terminationReason] Reason for termination
  ResourceStatusLastInstanceTerminationDetailsResponse({
    required this.terminationReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'terminationReason': terminationReason};
  }

  factory ResourceStatusLastInstanceTerminationDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceStatusLastInstanceTerminationDetailsResponse(
      terminationReason: map['terminationReason'] as String,
    );
  }
}
