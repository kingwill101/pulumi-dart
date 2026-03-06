// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableTtl {
  /// Valid values: `ENABLED`.
  final pulumi.Input<String> status;

  /// Creates a new [TableTtl].
  /// [status] Valid values: `ENABLED`.
  const TableTtl({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory TableTtl.fromMap(Map<String, dynamic> map) {
    return TableTtl(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

