// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucketVersioning {
  /// A bucket versioning state. Possible values:`Enabled` and `Suspended`.
  final pulumi.Input<String> status;

  /// Creates a new [GetBucketsBucketVersioning].
  /// [status] A bucket versioning state. Possible values:`Enabled` and `Suspended`.
  GetBucketsBucketVersioning({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory GetBucketsBucketVersioning.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketVersioning(
      status: (map['status'] as String).input(),
    );
  }
}

