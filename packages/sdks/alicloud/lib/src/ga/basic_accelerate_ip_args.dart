// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_basic_accelerate_ip_basic_accelerate_ip_args_doc}
/// The set of arguments for BasicAccelerateIp.
/// {@endtemplate}
/// {@macro pulumi_ga_basic_accelerate_ip_basic_accelerate_ip_args_doc}
class BasicAccelerateIpArgs {
  /// The ID of the Basic GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the Basic Ip Set.
  final pulumi.Input<String> ipSetId;

  /// Creates a new [BasicAccelerateIpArgs].
  /// [acceleratorId] The ID of the Basic GA instance.
  /// [ipSetId] The ID of the Basic Ip Set.
  BasicAccelerateIpArgs({
    required this.acceleratorId,
    required this.ipSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'ipSetId': ipSetId,
    };
  }

  factory BasicAccelerateIpArgs.fromMap(Map<String, dynamic> map) {
    return BasicAccelerateIpArgs(
      acceleratorId: (map['acceleratorId'] as String).input(),
      ipSetId: (map['ipSetId'] as String).input(),
    );
  }
}

