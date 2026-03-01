// ignore_for_file: unused_element, unnecessary_cast

class ConnectorPluginCustomPlugin {
  /// The Amazon Resource Name (ARN) of the custom plugin.
  final String arn;

  /// The revision of the custom plugin.
  final int revision;

  /// Creates a new [ConnectorPluginCustomPlugin].
  /// [arn] The Amazon Resource Name (ARN) of the custom plugin.
  /// [revision] The revision of the custom plugin.
  ConnectorPluginCustomPlugin({required this.arn, required this.revision});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'revision': revision};
  }

  factory ConnectorPluginCustomPlugin.fromMap(Map<String, dynamic> map) {
    return ConnectorPluginCustomPlugin(
      arn: map['arn'] as String,
      revision: map['revision'] as int,
    );
  }
}
