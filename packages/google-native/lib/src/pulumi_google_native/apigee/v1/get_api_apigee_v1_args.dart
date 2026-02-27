// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApi.
class GetApiApigeeV1Args {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> organizationId;

  GetApiApigeeV1Args({
    required this.apiId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetApiApigeeV1Args.fromMap(Map<String, dynamic> map) {
    return GetApiApigeeV1Args(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
