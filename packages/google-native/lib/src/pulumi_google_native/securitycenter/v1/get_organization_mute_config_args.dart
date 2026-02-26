// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationMuteConfig.
class GetOrganizationMuteConfigArgs {
  final Input<String> muteConfigId;
  final Input<String> organizationId;

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
      muteConfigId: Input.asInput<String>(map['muteConfigId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
