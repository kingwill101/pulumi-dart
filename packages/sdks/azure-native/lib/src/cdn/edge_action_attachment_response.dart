// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Edge action attachment information
class EdgeActionAttachmentResponse {
  /// The attached resource Id
  final pulumi.Input<String> attachedResourceId;
  /// The edge action attachment id
  final pulumi.Input<String> id;

  /// Creates a new [EdgeActionAttachmentResponse].
  /// [attachedResourceId] The attached resource Id
  /// [id] The edge action attachment id
  const EdgeActionAttachmentResponse({
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
      attachedResourceId: pulumi.Input.fromValue(map['attachedResourceId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

