// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getInstanceAttachment.
class GetInstanceAttachmentResult {
  /// Time the attachment was created in milliseconds since epoch.
  final String createdAt;

  /// ID of the attached environment.
  final String environment;

  /// ID of the attachment.
  final String name;

  GetInstanceAttachmentResult({
    required this.createdAt,
    required this.environment,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createdAt'] = createdAt;
    map['environment'] = environment;
    map['name'] = name;
    return map;
  }

  factory GetInstanceAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentResult(
      createdAt: map['createdAt'] as String,
      environment: map['environment'] as String,
      name: map['name'] as String,
    );
  }
}
