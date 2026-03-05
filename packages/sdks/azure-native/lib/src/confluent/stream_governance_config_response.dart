// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stream governance configuration
class StreamGovernanceConfigResponse {
  /// Stream governance configuration
  final pulumi.Input<String>? package;

  /// Creates a new [StreamGovernanceConfigResponse].
  /// [package] Stream governance configuration
  StreamGovernanceConfigResponse({
    this.package,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'package': ?package,
    };
  }

  factory StreamGovernanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return StreamGovernanceConfigResponse(
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

