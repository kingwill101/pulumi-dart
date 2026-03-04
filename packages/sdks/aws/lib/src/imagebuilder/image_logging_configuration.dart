// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageLoggingConfiguration {
  /// Name of the CloudWatch Log Group to send logs to.
  final pulumi.Input<String> logGroupName;

  /// Creates a new [ImageLoggingConfiguration].
  /// [logGroupName] Name of the CloudWatch Log Group to send logs to.
  ImageLoggingConfiguration({required this.logGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logGroupName': logGroupName};
  }

  factory ImageLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return ImageLoggingConfiguration(
      logGroupName: pulumi.Input.fromValue(map['logGroupName'] as String),
    );
  }
}
