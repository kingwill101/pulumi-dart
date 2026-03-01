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
    required String dbInstanceId,
    String? serviceDescription,
    required String serviceName,
    required String serviceSpec,
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

  factory StreamingDataServiceArgs.fromMap(Map<String, dynamic> map) {
    return StreamingDataServiceArgs(
      dbInstanceId: map['dbInstanceId'] as String,
      serviceDescription: map['serviceDescription'] == null ? null : map['serviceDescription'] as String,
      serviceName: map['serviceName'] as String,
      serviceSpec: map['serviceSpec'] as String,
    );
  }
}

