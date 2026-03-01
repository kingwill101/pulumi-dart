// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_service_args_doc}
class GetServiceArgs {
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Name of the service
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetServiceArgs].
  /// [groupName] Name of the resource group
  /// [serviceName] Name of the service
  GetServiceArgs({
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> serviceName,
  }) :
      groupName = pulumi.Input.asInput<String>(groupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'serviceName': serviceName,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

