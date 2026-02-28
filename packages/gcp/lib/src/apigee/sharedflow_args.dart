// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_sharedflow_sharedflow_args_doc}
/// The set of arguments for Sharedflow.
/// {@endtemplate}
/// {@macro pulumi_apigee_sharedflow_sharedflow_args_doc}
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

  /// Creates a new [SharedflowArgs].
  /// [configBundle] Path to the config zip bundle.
  /// [detectMd5hash] Optional.
  /// [name] The ID of the shared flow.
  /// [orgId] The Apigee Organization name associated with the Apigee instance.
  SharedflowArgs({
    required String configBundle,
    String? detectMd5hash,
    String? name,
    required String orgId,
  })  : configBundle = pulumi.Input.asInput<String>(configBundle),
        detectMd5hash = pulumi.Input.asOptionalInput<String>(detectMd5hash),
        name = pulumi.Input.asOptionalInput<String>(name),
        orgId = pulumi.Input.asInput<String>(orgId);

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
      configBundle: map['configBundle'] as String,
      detectMd5hash:
          map['detectMd5hash'] == null ? null : map['detectMd5hash'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      orgId: map['orgId'] as String,
    );
  }
}
