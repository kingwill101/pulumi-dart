// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_log_stream_properties.dart';

/// {@template pulumi_awsconnector_logs_log_stream_args_doc}
/// The set of arguments for LogsLogStream.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_logs_log_stream_args_doc}
class LogsLogStreamArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of LogsLogStream
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<LogsLogStreamProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LogsLogStreamArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of LogsLogStream
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  LogsLogStreamArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<LogsLogStreamProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LogsLogStreamArgs.fromMap(Map<String, dynamic> map) {
    return LogsLogStreamArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (LogsLogStreamProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

