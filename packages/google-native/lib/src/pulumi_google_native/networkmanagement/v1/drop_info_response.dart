// ignore_for_file: unused_element, unnecessary_cast

/// Details of the final state "drop" and associated resource.
class DropInfoResponse {
  /// Cause that the packet is dropped.
  final String cause;

  /// URI of the resource that caused the drop.
  final String resourceUri;

  DropInfoResponse({
    required this.cause,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cause'] = cause;
    map['resourceUri'] = resourceUri;
    return map;
  }

  factory DropInfoResponse.fromMap(Map<String, dynamic> map) {
    return DropInfoResponse(
      cause: map['cause'] as String,
      resourceUri: map['resourceUri'] as String,
    );
  }
}
