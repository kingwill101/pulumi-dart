// ignore_for_file: unused_element, unnecessary_cast

/// Details of the final state "forward" and associated resource.
class ForwardInfoResponse {
  /// URI of the resource that the packet is forwarded to.
  final String resourceUri;

  /// Target type where this packet is forwarded to.
  final String target;

  ForwardInfoResponse({
    required this.resourceUri,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceUri'] = resourceUri;
    map['target'] = target;
    return map;
  }

  factory ForwardInfoResponse.fromMap(Map<String, dynamic> map) {
    return ForwardInfoResponse(
      resourceUri: map['resourceUri'] as String,
      target: map['target'] as String,
    );
  }
}
