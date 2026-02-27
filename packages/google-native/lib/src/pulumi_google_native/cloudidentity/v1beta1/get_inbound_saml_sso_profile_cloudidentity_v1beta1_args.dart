// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInboundSamlSsoProfile.
class GetInboundSamlSsoProfileCloudidentityV1beta1Args {
  final pulumi.Input<String> inboundSamlSsoProfileId;

  GetInboundSamlSsoProfileCloudidentityV1beta1Args({
    required this.inboundSamlSsoProfileId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSamlSsoProfileId'] = inboundSamlSsoProfileId;
    return map;
  }

  factory GetInboundSamlSsoProfileCloudidentityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetInboundSamlSsoProfileCloudidentityV1beta1Args(
      inboundSamlSsoProfileId:
          pulumi.Input.asInput<String>(map['inboundSamlSsoProfileId']),
    );
  }
}
