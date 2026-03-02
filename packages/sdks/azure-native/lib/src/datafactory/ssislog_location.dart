// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssisaccess_credential.dart';

/// SSIS package execution log location
class SSISLogLocation {
  /// The package execution log access credential.
  final pulumi.Input<SSISAccessCredential>? accessCredential;
  /// The SSIS package execution log path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> logPath;
  /// Specifies the interval to refresh log. The default interval is 5 minutes. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? logRefreshInterval;
  /// The type of SSIS log location.
  final pulumi.Input<String> type;

  /// Creates a new [SSISLogLocation].
  /// [accessCredential] The package execution log access credential.
  /// [logPath] The SSIS package execution log path. Type: string (or Expression with resultType string).
  /// [logRefreshInterval] Specifies the interval to refresh log. The default interval is 5 minutes. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] The type of SSIS log location.
  SSISLogLocation({
    this.accessCredential,
    required this.logPath,
    this.logRefreshInterval,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessCredential': ?pulumi.Input.mapOptionalInputValue<SSISAccessCredential, Map<String, dynamic>>(accessCredential, (value) => value.toMap()),
      'logPath': logPath,
      'logRefreshInterval': ?logRefreshInterval,
      'type': type,
    };
  }

  factory SSISLogLocation.fromMap(Map<String, dynamic> map) {
    return SSISLogLocation(
      accessCredential: map['accessCredential'] == null ? null : (SSISAccessCredential.fromMap((map['accessCredential']! as Map).cast<String, dynamic>())).input(),
      logPath: (map['logPath']).input(),
      logRefreshInterval: map['logRefreshInterval'] == null ? null : (map['logRefreshInterval']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

