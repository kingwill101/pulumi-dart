// ignore_for_file: unused_element, unnecessary_cast

class PeeringAttachmentOptions {
  /// Indicates whether dynamic routing is enabled or disabled.. Supports `enable` and `disable`.
  final String? dynamicRouting;

  /// Creates a new [PeeringAttachmentOptions].
  /// [dynamicRouting] Indicates whether dynamic routing is enabled or disabled.. Supports `enable` and `disable`.
  PeeringAttachmentOptions({
    this.dynamicRouting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dynamicRoutingValue = dynamicRouting;
    if (dynamicRoutingValue != null) {
      map['dynamicRouting'] = dynamicRoutingValue;
    }
    return map;
  }

  factory PeeringAttachmentOptions.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentOptions(
      dynamicRouting: map['dynamicRouting'] == null
          ? null
          : map['dynamicRouting'] as String,
    );
  }
}
