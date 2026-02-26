// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'grpchealth_check3.dart';
import 'health_check_log_config3.dart';
import 'http2_health_check3.dart';
import 'httphealth_check3.dart';
import 'httpshealth_check3.dart';
import 'region_health_check_type3.dart';
import 'sslhealth_check3.dart';
import 'tcphealth_check3.dart';

/// The set of arguments for RegionHealthCheck.
class RegionHealthCheckArgs3 {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final Input<int>? checkIntervalSec;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;
  final Input<GRPCHealthCheck3>? grpcHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final Input<int>? healthyThreshold;
  final Input<HTTP2HealthCheck3>? http2HealthCheck;
  final Input<HTTPHealthCheck3>? httpHealthCheck;
  final Input<HTTPSHealthCheck3>? httpsHealthCheck;

  /// Type of the resource.
  final Input<String>? kind;

  /// Configure logging on this health check.
  final Input<HealthCheckLogConfig3>? logConfig;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;
  final Input<SSLHealthCheck3>? sslHealthCheck;
  final Input<TCPHealthCheck3>? tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final Input<int>? timeoutSec;

  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final Input<RegionHealthCheckType3>? type;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final Input<int>? unhealthyThreshold;

  RegionHealthCheckArgs3({
    this.checkIntervalSec,
    this.description,
    this.grpcHealthCheck,
    this.healthyThreshold,
    this.http2HealthCheck,
    this.httpHealthCheck,
    this.httpsHealthCheck,
    this.kind,
    this.logConfig,
    this.name,
    this.project,
    required this.region,
    this.requestId,
    this.sslHealthCheck,
    this.tcpHealthCheck,
    this.timeoutSec,
    this.type,
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
    final grpcHealthCheckValue = grpcHealthCheck;
    if (grpcHealthCheckValue != null) {
      map['grpcHealthCheck'] =
          Input.mapOptionalInputValue<GRPCHealthCheck3, Map<String, dynamic>>(
              grpcHealthCheckValue, (value) => value.toMap());
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final http2HealthCheckValue = http2HealthCheck;
    if (http2HealthCheckValue != null) {
      map['http2HealthCheck'] =
          Input.mapOptionalInputValue<HTTP2HealthCheck3, Map<String, dynamic>>(
              http2HealthCheckValue, (value) => value.toMap());
    }
    final httpHealthCheckValue = httpHealthCheck;
    if (httpHealthCheckValue != null) {
      map['httpHealthCheck'] =
          Input.mapOptionalInputValue<HTTPHealthCheck3, Map<String, dynamic>>(
              httpHealthCheckValue, (value) => value.toMap());
    }
    final httpsHealthCheckValue = httpsHealthCheck;
    if (httpsHealthCheckValue != null) {
      map['httpsHealthCheck'] =
          Input.mapOptionalInputValue<HTTPSHealthCheck3, Map<String, dynamic>>(
              httpsHealthCheckValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<HealthCheckLogConfig3,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final sslHealthCheckValue = sslHealthCheck;
    if (sslHealthCheckValue != null) {
      map['sslHealthCheck'] =
          Input.mapOptionalInputValue<SSLHealthCheck3, Map<String, dynamic>>(
              sslHealthCheckValue, (value) => value.toMap());
    }
    final tcpHealthCheckValue = tcpHealthCheck;
    if (tcpHealthCheckValue != null) {
      map['tcpHealthCheck'] =
          Input.mapOptionalInputValue<TCPHealthCheck3, Map<String, dynamic>>(
              tcpHealthCheckValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<RegionHealthCheckType3, String>(
          typeValue, (value) => value.value);
    }
    final unhealthyThresholdValue = unhealthyThreshold;
    if (unhealthyThresholdValue != null) {
      map['unhealthyThreshold'] = unhealthyThresholdValue;
    }
    return map;
  }

  factory RegionHealthCheckArgs3.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckArgs3(
      checkIntervalSec: Input.asOptionalInput<int>(map['checkIntervalSec']),
      description: Input.asOptionalInput<String>(map['description']),
      grpcHealthCheck:
          Input.asOptionalInput<GRPCHealthCheck3>(map['grpcHealthCheck']),
      healthyThreshold: Input.asOptionalInput<int>(map['healthyThreshold']),
      http2HealthCheck:
          Input.asOptionalInput<HTTP2HealthCheck3>(map['http2HealthCheck']),
      httpHealthCheck:
          Input.asOptionalInput<HTTPHealthCheck3>(map['httpHealthCheck']),
      httpsHealthCheck:
          Input.asOptionalInput<HTTPSHealthCheck3>(map['httpsHealthCheck']),
      kind: Input.asOptionalInput<String>(map['kind']),
      logConfig: Input.asOptionalInput<HealthCheckLogConfig3>(map['logConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sslHealthCheck:
          Input.asOptionalInput<SSLHealthCheck3>(map['sslHealthCheck']),
      tcpHealthCheck:
          Input.asOptionalInput<TCPHealthCheck3>(map['tcpHealthCheck']),
      timeoutSec: Input.asOptionalInput<int>(map['timeoutSec']),
      type: Input.asOptionalInput<RegionHealthCheckType3>(map['type']),
      unhealthyThreshold: Input.asOptionalInput<int>(map['unhealthyThreshold']),
    );
  }
}
