// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableClientSideTimestamps {
  /// Shows how to enable client-side timestamps settings for the specified table. Valid values: `ENABLED`.
  final pulumi.Input<String> status;

  /// Creates a new [TableClientSideTimestamps].
  /// [status] Shows how to enable client-side timestamps settings for the specified table. Valid values: `ENABLED`.
  TableClientSideTimestamps({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory TableClientSideTimestamps.fromMap(Map<String, dynamic> map) {
    return TableClientSideTimestamps(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

