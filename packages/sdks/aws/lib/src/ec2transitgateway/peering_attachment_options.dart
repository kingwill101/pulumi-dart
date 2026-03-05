// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PeeringAttachmentOptions {
  /// Indicates whether dynamic routing is enabled or disabled.. Supports `enable` and `disable`.
  final pulumi.Input<String>? dynamicRouting;

  /// Creates a new [PeeringAttachmentOptions].
  /// [dynamicRouting] Indicates whether dynamic routing is enabled or disabled.. Supports `enable` and `disable`.
  PeeringAttachmentOptions({
    this.dynamicRouting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicRouting': ?dynamicRouting,
    };
  }

  factory PeeringAttachmentOptions.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentOptions(
      dynamicRouting: (() { final guardedValue = map['dynamicRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

