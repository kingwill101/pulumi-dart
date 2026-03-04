// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 message filter for odata query.
class X12MessageFilterResponse {
  /// The message filter type.
  final pulumi.Input<String> messageFilterType;

  /// Creates a new [X12MessageFilterResponse].
  /// [messageFilterType] The message filter type.
  X12MessageFilterResponse({required this.messageFilterType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'messageFilterType': messageFilterType};
  }

  factory X12MessageFilterResponse.fromMap(Map<String, dynamic> map) {
    return X12MessageFilterResponse(
      messageFilterType: pulumi.Input.fromValue(
        map['messageFilterType'] as String,
      ),
    );
  }
}
