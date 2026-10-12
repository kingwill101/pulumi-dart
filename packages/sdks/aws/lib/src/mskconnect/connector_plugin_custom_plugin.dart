// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorPluginCustomPlugin {
  /// ARN of the custom plugin.
  final pulumi.Input<String> arn;
  /// The revision of the custom plugin.
  final pulumi.Input<int> revision;

  /// Creates a new [ConnectorPluginCustomPlugin].
  /// [arn] ARN of the custom plugin.
  /// [revision] The revision of the custom plugin.
  const ConnectorPluginCustomPlugin({
    required this.arn,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'revision': revision,
    };
  }

  factory ConnectorPluginCustomPlugin.fromMap(Map<String, dynamic> map) {
    return ConnectorPluginCustomPlugin(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      revision: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['revision'])),
    );
  }
}
