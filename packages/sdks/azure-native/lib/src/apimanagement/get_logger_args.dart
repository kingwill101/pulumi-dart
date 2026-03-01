// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_logger_args_doc}
/// Arguments for getLogger.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_logger_args_doc}
class GetLoggerArgs {
  /// Logger identifier. Must be unique in the API Management service instance.
  final pulumi.Input<String> loggerId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetLoggerArgs].
  /// [loggerId] Logger identifier. Must be unique in the API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetLoggerArgs({
    required pulumi.Output<String> loggerId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      loggerId = pulumi.Input.asInput<String>(loggerId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggerId': loggerId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetLoggerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoggerArgs(
      loggerId: pulumi.Output.create<String>(map['loggerId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

