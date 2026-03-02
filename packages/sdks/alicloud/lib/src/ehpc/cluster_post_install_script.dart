// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPostInstallScript {
  /// The parameter that is used to run the script after the cluster is created.
  final pulumi.Input<String>? args;
  /// The URL that is used to download the script after the cluster is created.
  final pulumi.Input<String>? url;

  /// Creates a new [ClusterPostInstallScript].
  /// [args] The parameter that is used to run the script after the cluster is created.
  /// [url] The URL that is used to download the script after the cluster is created.
  ClusterPostInstallScript({
    this.args,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'url': ?url,
    };
  }

  factory ClusterPostInstallScript.fromMap(Map<String, dynamic> map) {
    return ClusterPostInstallScript(
      args: map['args'] == null ? null : (map['args'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

