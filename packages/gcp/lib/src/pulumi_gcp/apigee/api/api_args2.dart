// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Api.
class ApiArgs2 {
  /// Path to the config zip bundle.
  ///
  /// - - -
  final Input<String> configBundle;
  final Input<String>? detectMd5hash;

  /// The ID of the API proxy.
  final Input<String>? name;

  /// The Apigee Organization name associated with the Apigee instance.
  final Input<String> orgId;

  ApiArgs2({
    required this.configBundle,
    this.detectMd5hash,
    this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configBundle'] = configBundle;
    final detectMd5hashValue = detectMd5hash;
    if (detectMd5hashValue != null) {
      map['detectMd5hash'] = detectMd5hashValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['orgId'] = orgId;
    return map;
  }

  factory ApiArgs2.fromMap(Map<String, dynamic> map) {
    return ApiArgs2(
      configBundle: Input.asInput<String>(map['configBundle']),
      detectMd5hash: Input.asOptionalInput<String>(map['detectMd5hash']),
      name: Input.asOptionalInput<String>(map['name']),
      orgId: Input.asInput<String>(map['orgId']),
    );
  }
}
