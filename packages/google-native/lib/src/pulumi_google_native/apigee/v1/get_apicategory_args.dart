// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApicategory.
class GetApicategoryArgs {
  final pulumi.Input<String> apicategoryId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> siteId;

  GetApicategoryArgs({
    required this.apicategoryId,
    required this.organizationId,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apicategoryId'] = apicategoryId;
    map['organizationId'] = organizationId;
    map['siteId'] = siteId;
    return map;
  }

  factory GetApicategoryArgs.fromMap(Map<String, dynamic> map) {
    return GetApicategoryArgs(
      apicategoryId: pulumi.Input.asInput<String>(map['apicategoryId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
    );
  }
}
