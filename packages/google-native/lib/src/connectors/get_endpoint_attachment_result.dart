// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEndpointAttachment.
class GetEndpointAttachmentResult {
  /// Created time.
  final String createTime;
  /// Optional. Description of the resource.
  final String description;
  /// The Private Service Connect connection endpoint ip
  final String endpointIp;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;
  /// Resource name of the Endpoint Attachment. Format: projects/{project}/locations/{location}/endpointAttachments/{endpoint_attachment}
  final String name;
  /// The path of the service attachment
  final String serviceAttachment;
  /// Updated time.
  final String updateTime;

  /// Creates a new [GetEndpointAttachmentResult].
  /// [createTime] Created time.
  /// [description] Optional. Description of the resource.
  /// [endpointIp] The Private Service Connect connection endpoint ip
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [name] Resource name of the Endpoint Attachment. Format: projects/{project}/locations/{location}/endpointAttachments/{endpoint_attachment}
  /// [serviceAttachment] The path of the service attachment
  /// [updateTime] Updated time.
  GetEndpointAttachmentResult({
    required this.createTime,
    required this.description,
    required this.endpointIp,
    required this.labels,
    required this.name,
    required this.serviceAttachment,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'endpointIp': endpointIp,
      'labels': labels,
      'name': name,
      'serviceAttachment': serviceAttachment,
      'updateTime': updateTime,
    };
  }

  factory GetEndpointAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointAttachmentResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      endpointIp: map['endpointIp'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

