// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderSignVersion {
  final pulumi.Input<String>? oss;
  final pulumi.Input<String>? sls;

  /// Creates a new [ProviderSignVersion].
  /// [oss] Optional.
  /// [sls] Optional.
  ProviderSignVersion({
    this.oss,
    this.sls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oss': ?oss,
      'sls': ?sls,
    };
  }

  factory ProviderSignVersion.fromMap(Map<String, dynamic> map) {
    return ProviderSignVersion(
      oss: (() { final guardedValue = map['oss']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sls: (() { final guardedValue = map['sls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

