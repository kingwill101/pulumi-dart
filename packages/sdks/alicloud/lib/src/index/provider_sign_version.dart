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
      oss: map['oss'] == null ? null : (map['oss']! as String).input(),
      sls: map['sls'] == null ? null : (map['sls']! as String).input(),
    );
  }
}

