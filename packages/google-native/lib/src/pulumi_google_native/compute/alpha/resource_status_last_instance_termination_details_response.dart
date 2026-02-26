// ignore_for_file: unused_element, unnecessary_cast

class ResourceStatusLastInstanceTerminationDetailsResponse {
  /// Reason for termination
  final String terminationReason;

  ResourceStatusLastInstanceTerminationDetailsResponse({
    required this.terminationReason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['terminationReason'] = terminationReason;
    return map;
  }

  factory ResourceStatusLastInstanceTerminationDetailsResponse.fromMap(
      Map<String, dynamic> map) {
    return ResourceStatusLastInstanceTerminationDetailsResponse(
      terminationReason: map['terminationReason'] as String,
    );
  }
}
