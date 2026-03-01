// ignore_for_file: unused_element, unnecessary_cast


/// Edge action attachment information
class EdgeActionAttachmentResponse {
  /// The attached resource Id
  final String attachedResourceId;
  /// The edge action attachment id
  final String id;

  /// Creates a new [EdgeActionAttachmentResponse].
  /// [attachedResourceId] The attached resource Id
  /// [id] The edge action attachment id
  EdgeActionAttachmentResponse({
    required this.attachedResourceId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedResourceId': attachedResourceId,
      'id': id,
    };
  }

  factory EdgeActionAttachmentResponse.fromMap(Map<String, dynamic> map) {
    return EdgeActionAttachmentResponse(
      attachedResourceId: map['attachedResourceId'] as String,
      id: map['id'] as String,
    );
  }
}

