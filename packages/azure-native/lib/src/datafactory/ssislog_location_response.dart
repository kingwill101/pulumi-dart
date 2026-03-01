// ignore_for_file: unused_element, unnecessary_cast

import 'ssisaccess_credential_response.dart';

/// SSIS package execution log location
class SSISLogLocationResponse {
  /// The package execution log access credential.
  final SSISAccessCredentialResponse? accessCredential;
  /// The SSIS package execution log path. Type: string (or Expression with resultType string).
  final dynamic logPath;
  /// Specifies the interval to refresh log. The default interval is 5 minutes. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic logRefreshInterval;
  /// The type of SSIS log location.
  final String type;

  /// Creates a new [SSISLogLocationResponse].
  /// [accessCredential] The package execution log access credential.
  /// [logPath] The SSIS package execution log path. Type: string (or Expression with resultType string).
  /// [logRefreshInterval] Specifies the interval to refresh log. The default interval is 5 minutes. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] The type of SSIS log location.
  SSISLogLocationResponse({
    this.accessCredential,
    required this.logPath,
    this.logRefreshInterval,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessCredential': ?accessCredential == null ? null : accessCredential!.toMap(),
      'logPath': logPath,
      'logRefreshInterval': ?logRefreshInterval,
      'type': type,
    };
  }

  factory SSISLogLocationResponse.fromMap(Map<String, dynamic> map) {
    return SSISLogLocationResponse(
      accessCredential: map['accessCredential'] == null ? null : SSISAccessCredentialResponse.fromMap((map['accessCredential'] as Map).cast<String, dynamic>()),
      logPath: map['logPath'],
      logRefreshInterval: map['logRefreshInterval'] == null ? null : map['logRefreshInterval'],
      type: map['type'] as String,
    );
  }
}

