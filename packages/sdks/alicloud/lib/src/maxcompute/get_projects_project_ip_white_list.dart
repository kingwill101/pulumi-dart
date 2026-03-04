// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectsProjectIpWhiteList {
  /// Set the IP address whitelist in the classic network. Only devices in the whitelist are allowed to access the project.&gt; **NOTE:** If you only configure a classic network IP address whitelist, access to the classic network is restricted and all access to the VPC is prohibited.
  final pulumi.Input<String> ipList;

  /// Set the IP address whitelist in the VPC network to allow only devices in the whitelist to access the project space.&gt; **NOTE:** If you only configure a VPC network IP address whitelist, access to the VPC network is restricted and access to the classic network is prohibited.
  final pulumi.Input<String> vpcIpList;

  /// Creates a new [GetProjectsProjectIpWhiteList].
  /// [ipList] Set the IP address whitelist in the classic network. Only devices in the whitelist are allowed to access the project.&gt; **NOTE:** If you only configure a classic network IP address whitelist, access to the classic network is restricted and all access to the VPC is prohibited.
  /// [vpcIpList] Set the IP address whitelist in the VPC network to allow only devices in the whitelist to access the project space.&gt; **NOTE:** If you only configure a VPC network IP address whitelist, access to the VPC network is restricted and access to the classic network is prohibited.
  GetProjectsProjectIpWhiteList({
    required this.ipList,
    required this.vpcIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipList': ipList, 'vpcIpList': vpcIpList};
  }

  factory GetProjectsProjectIpWhiteList.fromMap(Map<String, dynamic> map) {
    return GetProjectsProjectIpWhiteList(
      ipList: pulumi.Input.fromValue(map['ipList'] as String),
      vpcIpList: pulumi.Input.fromValue(map['vpcIpList'] as String),
    );
  }
}
