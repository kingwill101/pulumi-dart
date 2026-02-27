// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getApi.
class GetApiArgs3 {
  final Input<String> apiId;
  final Input<String> organizationId;

  GetApiArgs3({
    required this.apiId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetApiArgs3.fromMap(Map<String, dynamic> map) {
    return GetApiArgs3(
      apiId: Input.asInput<String>(map['apiId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
