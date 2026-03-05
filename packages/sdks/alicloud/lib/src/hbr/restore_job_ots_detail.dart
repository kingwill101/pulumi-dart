// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreJobOtsDetail {
  /// Whether to overwrite the existing table storage recovery task. Valid values: `true`, `false`.
  final pulumi.Input<bool>? overwriteExisting;

  /// Creates a new [RestoreJobOtsDetail].
  /// [overwriteExisting] Whether to overwrite the existing table storage recovery task. Valid values: `true`, `false`.
  RestoreJobOtsDetail({
    this.overwriteExisting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overwriteExisting': ?overwriteExisting,
    };
  }

  factory RestoreJobOtsDetail.fromMap(Map<String, dynamic> map) {
    return RestoreJobOtsDetail(
      overwriteExisting: (() { final guardedValue = map['overwriteExisting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

