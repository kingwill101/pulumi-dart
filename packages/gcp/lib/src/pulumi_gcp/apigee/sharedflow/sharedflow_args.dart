// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Sharedflow.
class SharedflowArgs {
  /// Path to the config zip bundle.
  ///
  /// - - -
  final pulumi.Input<String> configBundle;
  final pulumi.Input<String>? detectMd5hash;

  /// The ID of the shared flow.
  final pulumi.Input<String>? name;

  /// The Apigee Organization name associated with the Apigee instance.
  final pulumi.Input<String> orgId;

  SharedflowArgs({
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

  factory SharedflowArgs.fromMap(Map<String, dynamic> map) {
    return SharedflowArgs(
      configBundle: pulumi.Input.asInput<String>(map['configBundle']),
      detectMd5hash: pulumi.Input.asOptionalInput<String>(map['detectMd5hash']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
    );
  }
}
