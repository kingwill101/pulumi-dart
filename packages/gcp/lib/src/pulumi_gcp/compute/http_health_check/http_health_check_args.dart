// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HttpHealthCheck.
class HttpHealthCheckArgs {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  final Input<int>? checkIntervalSec;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final Input<String>? description;

  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  final Input<int>? healthyThreshold;

  /// The value of the host header in the HTTP health check request. If
  /// left empty (default value), the public IP on behalf of which this
  /// health check is performed will be used.
  final Input<String>? host;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final Input<String>? name;

  /// The TCP port number for the HTTP health check request.
  /// The default value is 80.
  final Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The request path of the HTTP health check request.
  /// The default value is /.
  final Input<String>? requestPath;

  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  final Input<int>? timeoutSec;

  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  final Input<int>? unhealthyThreshold;

  HttpHealthCheckArgs({
    this.checkIntervalSec,
    this.description,
    this.healthyThreshold,
    this.host,
    this.name,
    this.port,
    this.project,
    this.requestPath,
    this.timeoutSec,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkIntervalSecValue = checkIntervalSec;
    if (checkIntervalSecValue != null) {
      map['checkIntervalSec'] = checkIntervalSecValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestPathValue = requestPath;
    if (requestPathValue != null) {
      map['requestPath'] = requestPathValue;
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final unhealthyThresholdValue = unhealthyThreshold;
    if (unhealthyThresholdValue != null) {
      map['unhealthyThreshold'] = unhealthyThresholdValue;
    }
    return map;
  }

  factory HttpHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return HttpHealthCheckArgs(
      checkIntervalSec: Input.asOptionalInput<int>(map['checkIntervalSec']),
      description: Input.asOptionalInput<String>(map['description']),
      healthyThreshold: Input.asOptionalInput<int>(map['healthyThreshold']),
      host: Input.asOptionalInput<String>(map['host']),
      name: Input.asOptionalInput<String>(map['name']),
      port: Input.asOptionalInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
      requestPath: Input.asOptionalInput<String>(map['requestPath']),
      timeoutSec: Input.asOptionalInput<int>(map['timeoutSec']),
      unhealthyThreshold: Input.asOptionalInput<int>(map['unhealthyThreshold']),
    );
  }
}
