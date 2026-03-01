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
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? serviceDescription,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> serviceSpec,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      serviceDescription = pulumi.Input.asOptionalInput<String>(serviceDescription),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      serviceSpec = pulumi.Input.asInput<String>(serviceSpec);

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
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      serviceDescription: map['serviceDescription'] == null ? null : pulumi.Output.create<String>(map['serviceDescription'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      serviceSpec: pulumi.Output.create<String>(map['serviceSpec'] as String),
    );
  }
}

