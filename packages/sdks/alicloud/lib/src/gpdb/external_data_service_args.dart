// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_external_data_service_external_data_service_args_doc}
/// The set of arguments for ExternalDataService.
/// {@endtemplate}
/// {@macro pulumi_gpdb_external_data_service_external_data_service_args_doc}
class ExternalDataServiceArgs {
  /// Instance ID
  final pulumi.Input<String> dbInstanceId;

  /// Service Description
  final pulumi.Input<String>? serviceDescription;

  /// Service Name
  final pulumi.Input<String> serviceName;

  /// Service Specifications
  final pulumi.Input<String> serviceSpec;

  /// Creates a new [ExternalDataServiceArgs].
  /// [dbInstanceId] Instance ID
  /// [serviceDescription] Service Description
  /// [serviceName] Service Name
  /// [serviceSpec] Service Specifications
  ExternalDataServiceArgs({
    required this.dbInstanceId,
    this.serviceDescription,
    required this.serviceName,
    required this.serviceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'serviceDescription': ?serviceDescription,
      'serviceName': serviceName,
      'serviceSpec': serviceSpec,
    };
  }

  factory ExternalDataServiceArgs.fromMap(Map<String, dynamic> map) {
    return ExternalDataServiceArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      serviceDescription: (() {
        final guardedValue = map['serviceDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      serviceSpec: pulumi.Input.fromValue(map['serviceSpec'] as String),
    );
  }
}
