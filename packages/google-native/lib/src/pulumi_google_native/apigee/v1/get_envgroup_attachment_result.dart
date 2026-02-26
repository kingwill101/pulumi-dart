// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEnvgroupAttachment.
class GetEnvgroupAttachmentResult {
  /// The time at which the environment group attachment was created as milliseconds since epoch.
  final String createdAt;

  /// ID of the attached environment.
  final String environment;

  /// ID of the environment group.
  final String environmentGroupId;

  /// ID of the environment group attachment.
  final String name;

  GetEnvgroupAttachmentResult({
    required this.createdAt,
    required this.environment,
    required this.environmentGroupId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createdAt'] = createdAt;
    map['environment'] = environment;
    map['environmentGroupId'] = environmentGroupId;
    map['name'] = name;
    return map;
  }

  factory GetEnvgroupAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupAttachmentResult(
      createdAt: map['createdAt'] as String,
      environment: map['environment'] as String,
      environmentGroupId: map['environmentGroupId'] as String,
      name: map['name'] as String,
    );
  }
}
