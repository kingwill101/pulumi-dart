// ignore_for_file: unused_element, unnecessary_cast


class GetHoneypotImagesImage {
  /// The name of the honeypot image display.
  final String honeypotImageDisplayName;
  /// The image ID of the honeypot.
  final String honeypotImageId;
  /// Honeypot mirror name.
  final String honeypotImageName;
  /// Honeypot mirror type.
  final String honeypotImageType;
  /// Honeypot Mirror version.
  final String honeypotImageVersion;
  /// The image ID of the honeypot.The value is the same as `honeypot_image_id`.
  final String id;
  /// Ports supported by honeypots. In JSON format. Contains the following fields:-**log_type**: log type-**proto**: Support Protocol-**description**: description-**ports**: supports Port collection-**port_str**: supports port strings-**type**: type
  final String multiports;
  /// Honeypot-supported protocols.
  final String proto;
  /// Honeypot service port.
  final String servicePort;
  /// Honeypot configuration parameter template.
  final String template;

  /// Creates a new [GetHoneypotImagesImage].
  /// [honeypotImageDisplayName] The name of the honeypot image display.
  /// [honeypotImageId] The image ID of the honeypot.
  /// [honeypotImageName] Honeypot mirror name.
  /// [honeypotImageType] Honeypot mirror type.
  /// [honeypotImageVersion] Honeypot Mirror version.
  /// [id] The image ID of the honeypot.The value is the same as `honeypot_image_id`.
  /// [multiports] Ports supported by honeypots. In JSON format. Contains the following fields:-**log_type**: log type-**proto**: Support Protocol-**description**: description-**ports**: supports Port collection-**port_str**: supports port strings-**type**: type
  /// [proto] Honeypot-supported protocols.
  /// [servicePort] Honeypot service port.
  /// [template] Honeypot configuration parameter template.
  GetHoneypotImagesImage({
    required this.honeypotImageDisplayName,
    required this.honeypotImageId,
    required this.honeypotImageName,
    required this.honeypotImageType,
    required this.honeypotImageVersion,
    required this.id,
    required this.multiports,
    required this.proto,
    required this.servicePort,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotImageDisplayName': honeypotImageDisplayName,
      'honeypotImageId': honeypotImageId,
      'honeypotImageName': honeypotImageName,
      'honeypotImageType': honeypotImageType,
      'honeypotImageVersion': honeypotImageVersion,
      'id': id,
      'multiports': multiports,
      'proto': proto,
      'servicePort': servicePort,
      'template': template,
    };
  }

  factory GetHoneypotImagesImage.fromMap(Map<String, dynamic> map) {
    return GetHoneypotImagesImage(
      honeypotImageDisplayName: map['honeypotImageDisplayName'] as String,
      honeypotImageId: map['honeypotImageId'] as String,
      honeypotImageName: map['honeypotImageName'] as String,
      honeypotImageType: map['honeypotImageType'] as String,
      honeypotImageVersion: map['honeypotImageVersion'] as String,
      id: map['id'] as String,
      multiports: map['multiports'] as String,
      proto: map['proto'] as String,
      servicePort: map['servicePort'] as String,
      template: map['template'] as String,
    );
  }
}

