// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationMuteConfig.
class GetOrganizationMuteConfigArgs {
  final pulumi.Input<String> muteConfigId;
  final pulumi.Input<String> organizationId;

  GetOrganizationMuteConfigArgs({
    required this.muteConfigId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['muteConfigId'] = muteConfigId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMuteConfigArgs(
      muteConfigId: pulumi.Input.asInput<String>(map['muteConfigId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
