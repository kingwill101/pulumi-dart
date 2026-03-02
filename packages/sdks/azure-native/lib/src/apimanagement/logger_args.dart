// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_logger_args_doc}
/// The set of arguments for Logger.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_logger_args_doc}
class LoggerArgs {
  /// The name and SendRule connection string of the event hub for azureEventHub logger.
  /// Instrumentation key for applicationInsights logger.
  final pulumi.Input<Map<String, String>>? credentials;
  /// Logger description.
  final pulumi.Input<String>? description;
  /// Whether records are buffered in the logger before publishing. Default is assumed to be true.
  final pulumi.Input<bool>? isBuffered;
  /// Logger identifier. Must be unique in the API Management service instance.
  final pulumi.Input<String>? loggerId;
  /// Logger type.
  final pulumi.Input<String> loggerType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Resource Id of a log target (either Azure Event Hub resource or Azure Application Insights resource).
  final pulumi.Input<String>? resourceId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [LoggerArgs].
  /// [credentials] The name and SendRule connection string of the event hub for azureEventHub logger.
  /// [description] Logger description.
  /// [isBuffered] Whether records are buffered in the logger before publishing. Default is assumed to be true.
  /// [loggerId] Logger identifier. Must be unique in the API Management service instance.
  /// [loggerType] Logger type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] Azure Resource Id of a log target (either Azure Event Hub resource or Azure Application Insights resource).
  /// [serviceName] The name of the API Management service.
  LoggerArgs({
    this.credentials,
    this.description,
    this.isBuffered,
    this.loggerId,
    required this.loggerType,
    required this.resourceGroupName,
    this.resourceId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?credentials,
      'description': ?description,
      'isBuffered': ?isBuffered,
      'loggerId': ?loggerId,
      'loggerType': loggerType,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'serviceName': serviceName,
    };
  }

  factory LoggerArgs.fromMap(Map<String, dynamic> map) {
    return LoggerArgs(
      credentials: map['credentials'] == null ? null : ((map['credentials']! as Map).cast<String, String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      isBuffered: map['isBuffered'] == null ? null : (map['isBuffered']! as bool).input(),
      loggerId: map['loggerId'] == null ? null : (map['loggerId']! as String).input(),
      loggerType: (map['loggerType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

