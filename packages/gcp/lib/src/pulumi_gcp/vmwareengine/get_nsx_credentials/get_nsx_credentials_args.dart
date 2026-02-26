// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNsxCredentials.
class GetNsxCredentialsArgs {
  /// The resource name of the private cloud which contains the NSX.
  final Input<String> parent;

  GetNsxCredentialsArgs({
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    return map;
  }

  factory GetNsxCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetNsxCredentialsArgs(
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
