// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforceSourceIpConfig {
  /// A list of up to 10 CIDR values.
  final pulumi.Input<List<String>> cidrs;

  /// Creates a new [WorkforceSourceIpConfig].
  /// [cidrs] A list of up to 10 CIDR values.
  const WorkforceSourceIpConfig({
    required this.cidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': cidrs,
    };
  }

  factory WorkforceSourceIpConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceSourceIpConfig(
      cidrs: pulumi.Input.fromValue((map['cidrs'] as List).cast<String>()),
    );
  }
}
