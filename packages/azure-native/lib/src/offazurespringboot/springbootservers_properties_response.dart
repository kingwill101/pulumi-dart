// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response.dart';

/// The springbootservers resource definition.
class SpringbootserversPropertiesResponse {
  /// The list of errors.
  final List<ErrorResponse>? errors;
  /// The alternative FQDN or IP addresses to discover for this server
  final List<String>? fqdnAndIpAddressList;
  /// Resource labels
  final Map<String, String>? labels;
  /// The machine Id from ARM
  final String? machineArmId;
  /// Target server port for remote login
  final int? port;
  /// The resource provisioning state.
  final String? provisioningState;
  /// Server is the target server name or ip address to discover of SpringBootServer.
  final String server;
  /// The total number of spring boot apps been discovered
  final int? springBootApps;
  /// The total number of apps been discovered
  final int? totalApps;

  /// Creates a new [SpringbootserversPropertiesResponse].
  /// [errors] The list of errors.
  /// [fqdnAndIpAddressList] The alternative FQDN or IP addresses to discover for this server
  /// [labels] Resource labels
  /// [machineArmId] The machine Id from ARM
  /// [port] Target server port for remote login
  /// [provisioningState] The resource provisioning state.
  /// [server] Server is the target server name or ip address to discover of SpringBootServer.
  /// [springBootApps] The total number of spring boot apps been discovered
  /// [totalApps] The total number of apps been discovered
  SpringbootserversPropertiesResponse({
    this.errors,
    this.fqdnAndIpAddressList,
    this.labels,
    this.machineArmId,
    this.port,
    this.provisioningState,
    required this.server,
    this.springBootApps,
    this.totalApps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ErrorResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'fqdnAndIpAddressList': ?fqdnAndIpAddressList,
      'labels': ?labels,
      'machineArmId': ?machineArmId,
      'port': ?port,
      'provisioningState': ?provisioningState,
      'server': server,
      'springBootApps': ?springBootApps,
      'totalApps': ?totalApps,
    };
  }

  factory SpringbootserversPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SpringbootserversPropertiesResponse(
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ErrorResponse>(map['errors'], (value) => ErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      fqdnAndIpAddressList: map['fqdnAndIpAddressList'] == null ? null : (map['fqdnAndIpAddressList'] as List).cast<String>(),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      machineArmId: map['machineArmId'] == null ? null : map['machineArmId'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      server: map['server'] as String,
      springBootApps: map['springBootApps'] == null ? null : map['springBootApps'] as int,
      totalApps: map['totalApps'] == null ? null : map['totalApps'] as int,
    );
  }
}

