// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterPostInstallScript {
  /// The parameters of the script.
  final pulumi.Input<String> args;

  /// The download path of the script.
  final pulumi.Input<String> url;

  /// Creates a new [GetClustersClusterPostInstallScript].
  /// [args] The parameters of the script.
  /// [url] The download path of the script.
  GetClustersClusterPostInstallScript({required this.args, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'args': args, 'url': url};
  }

  factory GetClustersClusterPostInstallScript.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClustersClusterPostInstallScript(
      args: pulumi.Input.fromValue(map['args'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
