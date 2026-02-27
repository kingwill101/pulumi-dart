// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'logging_server_protocol.dart';
import 'logging_server_source_type.dart';

/// The set of arguments for LoggingServer.
class LoggingServerArgs {
  /// Fully-qualified domain name (FQDN) or IP Address of the logging server.
  final Input<String> hostname;
  final Input<String>? location;

  /// Required. The user-provided identifier of the `LoggingServer` to be created. This identifier must be unique among `LoggingServer` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final Input<String> loggingServerId;

  /// Port number at which the logging server receives logs.
  final Input<int> port;
  final Input<String> privateCloudId;
  final Input<String>? project;

  /// Protocol used by vCenter to send logs to a logging server.
  final Input<LoggingServerProtocol> protocol;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The type of component that produces logs that will be forwarded to this logging server.
  final Input<LoggingServerSourceType> sourceType;

  LoggingServerArgs({
    required this.hostname,
    this.location,
    required this.loggingServerId,
    required this.port,
    required this.privateCloudId,
    this.project,
    required this.protocol,
    this.requestId,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostname'] = hostname;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['loggingServerId'] = loggingServerId;
    map['port'] = port;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['protocol'] = Input.mapInputValue<LoggingServerProtocol, String>(
        protocol, (value) => value.value);
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['sourceType'] = Input.mapInputValue<LoggingServerSourceType, String>(
        sourceType, (value) => value.value);
    return map;
  }

  factory LoggingServerArgs.fromMap(Map<String, dynamic> map) {
    return LoggingServerArgs(
      hostname: Input.asInput<String>(map['hostname']),
      location: Input.asOptionalInput<String>(map['location']),
      loggingServerId: Input.asInput<String>(map['loggingServerId']),
      port: Input.asInput<int>(map['port']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
      protocol: Input.asInput<LoggingServerProtocol>(map['protocol']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sourceType: Input.asInput<LoggingServerSourceType>(map['sourceType']),
    );
  }
}
