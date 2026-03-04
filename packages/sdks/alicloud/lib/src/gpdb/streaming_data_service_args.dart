// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_streaming_data_service_streaming_data_service_args_doc}
/// The set of arguments for StreamingDataService.
/// {@endtemplate}
/// {@macro pulumi_gpdb_streaming_data_service_streaming_data_service_args_doc}
class StreamingDataServiceArgs {
  /// The ID of the associated instance.
  final pulumi.Input<String> dbInstanceId;

  /// The description of the service.
  final pulumi.Input<String>? serviceDescription;

  /// Service Name
  final pulumi.Input<String> serviceName;

  /// Resource Specifications
  final pulumi.Input<String> serviceSpec;

  /// Creates a new [StreamingDataServiceArgs].
  /// [dbInstanceId] The ID of the associated instance.
  /// [serviceDescription] The description of the service.
  /// [serviceName] Service Name
  /// [serviceSpec] Resource Specifications
  StreamingDataServiceArgs({
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

  factory StreamingDataServiceArgs.fromMap(Map<String, dynamic> map) {
    return StreamingDataServiceArgs(
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
