// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SharedDirectoryAccepter.
class SharedDirectoryAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  final Input<String> sharedDirectoryId;

  SharedDirectoryAccepterArgs({
    this.region,
    required this.sharedDirectoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sharedDirectoryId'] = sharedDirectoryId;
    return map;
  }

  factory SharedDirectoryAccepterArgs.fromMap(Map<String, dynamic> map) {
    return SharedDirectoryAccepterArgs(
      region: Input.asOptionalInput<String>(map['region']),
      sharedDirectoryId: Input.asInput<String>(map['sharedDirectoryId']),
    );
  }
}
