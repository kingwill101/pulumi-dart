// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the tmpfs options for the container
class TmpfsOptionsResponse {
  /// Mention the Tmpfs size
  final pulumi.Input<int>? size;

  /// Creates a new [TmpfsOptionsResponse].
  /// [size] Mention the Tmpfs size
  TmpfsOptionsResponse({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory TmpfsOptionsResponse.fromMap(Map<String, dynamic> map) {
    return TmpfsOptionsResponse(
      size: map['size'] == null ? null : (map['size'] as int).input(),
    );
  }
}

