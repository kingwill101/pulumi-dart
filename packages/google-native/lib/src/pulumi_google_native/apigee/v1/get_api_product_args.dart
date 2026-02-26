// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApiProduct.
class GetApiProductArgs {
  final Input<String> apiproductId;
  final Input<String> organizationId;

  GetApiProductArgs({
    required this.apiproductId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiproductId'] = apiproductId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetApiProductArgs.fromMap(Map<String, dynamic> map) {
    return GetApiProductArgs(
      apiproductId: Input.asInput<String>(map['apiproductId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
