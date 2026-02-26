// ignore_for_file: unused_element, unnecessary_cast

/// The PSC configurations on producer side.
class ProducerPscConfig {
  /// The resource path of a service attachment. Example: projects/{projectNumOrId}/regions/{region}/serviceAttachments/{resourceId}.
  final String? serviceAttachmentUri;

  ProducerPscConfig({
    this.serviceAttachmentUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceAttachmentUriValue = serviceAttachmentUri;
    if (serviceAttachmentUriValue != null) {
      map['serviceAttachmentUri'] = serviceAttachmentUriValue;
    }
    return map;
  }

  factory ProducerPscConfig.fromMap(Map<String, dynamic> map) {
    return ProducerPscConfig(
      serviceAttachmentUri: map['serviceAttachmentUri'] == null
          ? null
          : map['serviceAttachmentUri'] as String,
    );
  }
}
