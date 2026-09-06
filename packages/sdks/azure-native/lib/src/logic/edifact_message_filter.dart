// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact message filter for odata query.
class EdifactMessageFilter {
  /// The message filter type.
  final pulumi.Input<dynamic> messageFilterType;

  /// Creates a new [EdifactMessageFilter].
  /// [messageFilterType] The message filter type.
  const EdifactMessageFilter({
    required this.messageFilterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFilterType': messageFilterType,
    };
  }

  factory EdifactMessageFilter.fromMap(Map<String, dynamic> map) {
    return EdifactMessageFilter(
      messageFilterType: pulumi.Input.fromValue(map['messageFilterType']),
    );
  }
}
