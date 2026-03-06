// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group_eci_security_context_sysctl.dart';

class GetContainerGroupsGroupEciSecurityContext {
  /// The system information.
  final pulumi.Input<List<GetContainerGroupsGroupEciSecurityContextSysctl>> sysctls;

  /// Creates a new [GetContainerGroupsGroupEciSecurityContext].
  /// [sysctls] The system information.
  const GetContainerGroupsGroupEciSecurityContext({
    required this.sysctls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sysctls': pulumi.Input.mapInputValue<List<GetContainerGroupsGroupEciSecurityContextSysctl>, List<Map<String, dynamic>>>(sysctls, (value) => pulumi.Input.encodeList<GetContainerGroupsGroupEciSecurityContextSysctl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetContainerGroupsGroupEciSecurityContext.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupEciSecurityContext(
      sysctls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetContainerGroupsGroupEciSecurityContextSysctl>(map['sysctls']!, (value) => GetContainerGroupsGroupEciSecurityContextSysctl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

