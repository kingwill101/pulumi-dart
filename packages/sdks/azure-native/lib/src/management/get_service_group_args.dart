// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_get_service_group_args_doc}
/// Arguments for getServiceGroup.
/// {@endtemplate}
/// {@macro pulumi_management_get_service_group_args_doc}
class GetServiceGroupArgs {
  /// ServiceGroup Name.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [GetServiceGroupArgs].
  /// [serviceGroupName] ServiceGroup Name.
  const GetServiceGroupArgs({
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceGroupName': serviceGroupName,
    };
  }

  factory GetServiceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceGroupArgs(
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}

