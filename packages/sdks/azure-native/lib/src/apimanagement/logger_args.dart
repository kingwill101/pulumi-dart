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
    pulumi.Output<Map<String, String>>? credentials,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isBuffered,
    pulumi.Output<String>? loggerId,
    required pulumi.Output<String> loggerType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceId,
    required pulumi.Output<String> serviceName,
  }) :
      credentials = pulumi.Input.asOptionalInput<Map<String, String>>(credentials),
      description = pulumi.Input.asOptionalInput<String>(description),
      isBuffered = pulumi.Input.asOptionalInput<bool>(isBuffered),
      loggerId = pulumi.Input.asOptionalInput<String>(loggerId),
      loggerType = pulumi.Input.asInput<String>(loggerType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      credentials: map['credentials'] == null ? null : pulumi.Output.create<Map<String, String>>((map['credentials'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isBuffered: map['isBuffered'] == null ? null : pulumi.Output.create<bool>(map['isBuffered'] as bool),
      loggerId: map['loggerId'] == null ? null : pulumi.Output.create<String>(map['loggerId'] as String),
      loggerType: pulumi.Output.create<String>(map['loggerType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

