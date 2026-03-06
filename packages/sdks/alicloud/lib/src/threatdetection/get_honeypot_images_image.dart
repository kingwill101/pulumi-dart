// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHoneypotImagesImage {
  /// The name of the honeypot image display.
  final pulumi.Input<String> honeypotImageDisplayName;
  /// The image ID of the honeypot.
  final pulumi.Input<String> honeypotImageId;
  /// Honeypot mirror name.
  final pulumi.Input<String> honeypotImageName;
  /// Honeypot mirror type.
  final pulumi.Input<String> honeypotImageType;
  /// Honeypot Mirror version.
  final pulumi.Input<String> honeypotImageVersion;
  /// The image ID of the honeypot.The value is the same as `honeypot_image_id`.
  final pulumi.Input<String> id;
  /// Ports supported by honeypots. In JSON format. Contains the following fields:-**log_type**: log type-**proto**: Support Protocol-**description**: description-**ports**: supports Port collection-**port_str**: supports port strings-**type**: type
  final pulumi.Input<String> multiports;
  /// Honeypot-supported protocols.
  final pulumi.Input<String> proto;
  /// Honeypot service port.
  final pulumi.Input<String> servicePort;
  /// Honeypot configuration parameter template.
  final pulumi.Input<String> template;

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
  const GetHoneypotImagesImage({
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
      honeypotImageDisplayName: pulumi.Input.fromValue(map['honeypotImageDisplayName'] as String),
      honeypotImageId: pulumi.Input.fromValue(map['honeypotImageId'] as String),
      honeypotImageName: pulumi.Input.fromValue(map['honeypotImageName'] as String),
      honeypotImageType: pulumi.Input.fromValue(map['honeypotImageType'] as String),
      honeypotImageVersion: pulumi.Input.fromValue(map['honeypotImageVersion'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      multiports: pulumi.Input.fromValue(map['multiports'] as String),
      proto: pulumi.Input.fromValue(map['proto'] as String),
      servicePort: pulumi.Input.fromValue(map['servicePort'] as String),
      template: pulumi.Input.fromValue(map['template'] as String),
    );
  }
}

