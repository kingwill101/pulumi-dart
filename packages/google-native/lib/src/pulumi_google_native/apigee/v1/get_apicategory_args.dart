// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApicategory.
class GetApicategoryArgs {
  final Input<String> apicategoryId;
  final Input<String> organizationId;
  final Input<String> siteId;

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
      apicategoryId: Input.asInput<String>(map['apicategoryId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
