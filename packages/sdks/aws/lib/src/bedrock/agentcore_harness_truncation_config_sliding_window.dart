// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessTruncationConfigSlidingWindow {
  /// Number of recent messages to keep in the conversation window.
  final pulumi.Input<int> messagesCount;

  /// Creates a new [AgentcoreHarnessTruncationConfigSlidingWindow].
  /// [messagesCount] Number of recent messages to keep in the conversation window.
  const AgentcoreHarnessTruncationConfigSlidingWindow({
    required this.messagesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messagesCount': messagesCount,
    };
  }

  factory AgentcoreHarnessTruncationConfigSlidingWindow.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessTruncationConfigSlidingWindow(
      messagesCount: pulumi.Input.fromValue((map['messagesCount'] as num).toInt()),
    );
  }
}
