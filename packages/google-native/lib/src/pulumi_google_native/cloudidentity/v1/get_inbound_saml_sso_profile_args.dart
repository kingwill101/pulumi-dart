// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInboundSamlSsoProfile.
class GetInboundSamlSsoProfileArgs {
  final pulumi.Input<String> inboundSamlSsoProfileId;

  GetInboundSamlSsoProfileArgs({
    required this.inboundSamlSsoProfileId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSamlSsoProfileId'] = inboundSamlSsoProfileId;
    return map;
  }

  factory GetInboundSamlSsoProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlSsoProfileArgs(
      inboundSamlSsoProfileId:
          pulumi.Input.asInput<String>(map['inboundSamlSsoProfileId']),
    );
  }
}
