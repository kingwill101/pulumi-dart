// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogtailConfigOutputDetail {
  /// The endpoint of the log project.
  final pulumi.Input<String>? endpoint;
  /// The name of the output target logstore.
  final pulumi.Input<String>? logstoreName;
  /// Region
  final pulumi.Input<String>? region;

  /// Creates a new [LogtailConfigOutputDetail].
  /// [endpoint] The endpoint of the log project.
  /// [logstoreName] The name of the output target logstore.
  /// [region] Region
  LogtailConfigOutputDetail({
    this.endpoint,
    this.logstoreName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'logstoreName': ?logstoreName,
      'region': ?region,
    };
  }

  factory LogtailConfigOutputDetail.fromMap(Map<String, dynamic> map) {
    return LogtailConfigOutputDetail(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logstoreName: (() { final guardedValue = map['logstoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

