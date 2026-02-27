// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getVersion.
class GetVersionArgs2 {
  final Input<String> appId;
  final Input<String> serviceId;
  final Input<String> versionId;
  final Input<String>? view;

  GetVersionArgs2({
    required this.appId,
    required this.serviceId,
    required this.versionId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['serviceId'] = serviceId;
    map['versionId'] = versionId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetVersionArgs2.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs2(
      appId: Input.asInput<String>(map['appId']),
      serviceId: Input.asInput<String>(map['serviceId']),
      versionId: Input.asInput<String>(map['versionId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
