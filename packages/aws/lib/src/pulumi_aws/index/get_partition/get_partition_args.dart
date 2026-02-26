// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPartition.
class GetPartitionArgs {
  /// Identifier of the current partition (e.g., <span pulumi-lang-nodejs="`aws`" pulumi-lang-dotnet="`Aws`" pulumi-lang-go="`aws`" pulumi-lang-python="`aws`" pulumi-lang-yaml="`aws`" pulumi-lang-java="`aws`">`aws`</span> in AWS Commercial, `aws-cn` in AWS China).
  final Input<String>? id;

  GetPartitionArgs({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GetPartitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPartitionArgs(
      id: Input.asOptionalInput<String>(map['id']),
    );
  }
}
