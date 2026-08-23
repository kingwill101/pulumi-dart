// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_sli_args_doc}
/// Arguments for getSli.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_sli_args_doc}
class GetSliArgs {
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;
  /// Name of the SLI that is given by the user.
  final pulumi.Input<String> sliName;

  /// Creates a new [GetSliArgs].
  /// [serviceGroupName] The name of the service group.
  /// [sliName] Name of the SLI that is given by the user.
  const GetSliArgs({
    required this.serviceGroupName,
    required this.sliName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceGroupName': serviceGroupName,
      'sliName': sliName,
    };
  }

  factory GetSliArgs.fromMap(Map<String, dynamic> map) {
    return GetSliArgs(
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
      sliName: pulumi.Input.fromValue(map['sliName'] as String),
    );
  }
}
