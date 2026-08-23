// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureresiliencemanagement_get_drill_args_doc}
/// Arguments for getDrill.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_get_drill_args_doc}
class GetDrillArgs {
  /// The name of the Drill
  final pulumi.Input<String> drillName;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [GetDrillArgs].
  /// [drillName] The name of the Drill
  /// [serviceGroupName] The name of the service group.
  const GetDrillArgs({
    required this.drillName,
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drillName': drillName,
      'serviceGroupName': serviceGroupName,
    };
  }

  factory GetDrillArgs.fromMap(Map<String, dynamic> map) {
    return GetDrillArgs(
      drillName: pulumi.Input.fromValue(map['drillName'] as String),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}
