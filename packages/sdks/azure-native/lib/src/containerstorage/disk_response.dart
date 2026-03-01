// ignore_for_file: unused_element, unnecessary_cast


/// Model for disk for that pool is using
class DiskResponse {
  /// ID is the disk identifier visible to the OS. It is typically the WWN or disk ID in formats such as eui.e8238fa6bf530001001b448b45263379 or 0x5002cf6cbc5dd460
  final String id;
  /// Reference is the location of the disk in an external system.
  final String reference;

  /// Creates a new [DiskResponse].
  /// [id] ID is the disk identifier visible to the OS. It is typically the WWN or disk ID in formats such as eui.e8238fa6bf530001001b448b45263379 or 0x5002cf6cbc5dd460
  /// [reference] Reference is the location of the disk in an external system.
  DiskResponse({
    required this.id,
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'reference': reference,
    };
  }

  factory DiskResponse.fromMap(Map<String, dynamic> map) {
    return DiskResponse(
      id: map['id'] as String,
      reference: map['reference'] as String,
    );
  }
}

