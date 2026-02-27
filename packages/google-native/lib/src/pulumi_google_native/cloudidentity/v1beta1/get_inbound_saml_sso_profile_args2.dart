// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInboundSamlSsoProfile.
class GetInboundSamlSsoProfileArgs2 {
  final Input<String> inboundSamlSsoProfileId;

  GetInboundSamlSsoProfileArgs2({
    required this.inboundSamlSsoProfileId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSamlSsoProfileId'] = inboundSamlSsoProfileId;
    return map;
  }

  factory GetInboundSamlSsoProfileArgs2.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlSsoProfileArgs2(
      inboundSamlSsoProfileId:
          Input.asInput<String>(map['inboundSamlSsoProfileId']),
    );
  }
}
