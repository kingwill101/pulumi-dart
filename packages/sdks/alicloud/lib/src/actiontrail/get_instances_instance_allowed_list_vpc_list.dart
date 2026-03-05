// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceAllowedListVpcList {
  /// The allowed ip list of the internet_list.
  final pulumi.Input<List<String>> allowedIpLists;
  /// The port range of the internet_list.
  final pulumi.Input<String> portRange;

  /// Creates a new [GetInstancesInstanceAllowedListVpcList].
  /// [allowedIpLists] The allowed ip list of the internet_list.
  /// [portRange] The port range of the internet_list.
  GetInstancesInstanceAllowedListVpcList({
    required this.allowedIpLists,
    required this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpLists': allowedIpLists,
      'portRange': portRange,
    };
  }

  factory GetInstancesInstanceAllowedListVpcList.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceAllowedListVpcList(
      allowedIpLists: pulumi.Input.fromValue((map['allowedIpLists'] as List).cast<String>()),
      portRange: pulumi.Input.fromValue(map['portRange'] as String),
    );
  }
}

