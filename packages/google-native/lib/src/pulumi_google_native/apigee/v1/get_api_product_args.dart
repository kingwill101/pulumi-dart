// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApiProduct.
class GetApiProductArgs {
  final pulumi.Input<String> apiproductId;
  final pulumi.Input<String> organizationId;

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
      apiproductId: pulumi.Input.asInput<String>(map['apiproductId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
